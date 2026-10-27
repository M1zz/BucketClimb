#!/usr/bin/env python3
"""App Store 마케팅 스크린샷: 원본 캡처 + 헤드라인 → 헤드리스 Chrome → 1242×2688.

사용법: python3 scripts/make_marketing_screenshots.py [로케일 ...]   (없으면 전부)

  원본  docs/screenshots/raw/<로케일>/<이름>.png        (scripts/capture_screenshots.sh 가 찍는다)
  문구  scripts/screenshot_copy.json                   (언어마다 따로 쓴 헤드라인 · 보조문)
  결과  docs/screenshots/marketing/<로케일>/0N-<이름>.png  ← DeployBar 가 이 폴더를 스토어에 올린다
"""
import json, pathlib, subprocess, sys, tempfile

ROOT = pathlib.Path(__file__).resolve().parent.parent
RAW = ROOT / "docs" / "screenshots" / "raw"
OUT = ROOT / "docs" / "screenshots" / "marketing"
COPY = json.loads((ROOT / "scripts" / "screenshot_copy.json").read_text())
CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
W, H = 1242, 2688

# 스토어 순서 = 파일 이름 순서. 문구는 screenshot_copy.json 의 slides 와 같은 순서다.
SHOTS = [("forge", "hero"), ("ocean", "left"), ("workshop", "bottom"), ("treasury", "rotate"), ("map", "dark")]

BASE_CSS = f"""
* {{ margin:0; padding:0; box-sizing:border-box; }}
html,body {{ width:{W}px; height:{H}px; overflow:hidden; }}
body {{ background:linear-gradient(180deg,#fdf8ec 0%,#f6efdc 100%); position:relative;
  font-family:-apple-system,"SF Pro Display","Apple SD Gothic Neo","Hiragino Sans","PingFang SC","PingFang TC","Thonburi",sans-serif; }}
.text {{ position:absolute; left:80px; right:80px; }}
.headline {{ font-size:96px; font-weight:800; color:#1d2433; letter-spacing:-0.025em; line-height:1.15; text-wrap:balance; }}
.sub {{ font-size:50px; font-weight:500; color:#8a8170; margin-top:40px; line-height:1.3; text-wrap:balance; }}
:lang(th) .headline {{ line-height:1.35; letter-spacing:0; }}
:lang(ja) .headline, :lang(zh) .headline {{ letter-spacing:0; }}
:lang(ko) .headline, :lang(ko) .sub {{ word-break:keep-all; }}
.phone {{ position:absolute; background:#17171a; border-radius:112px; border:3px solid #3a3a3e; padding:24px;
  box-shadow:50px 80px 120px rgba(80,60,20,.25), 16px 26px 46px rgba(0,0,0,.16); }}
.phone img {{ width:100%; display:block; border-radius:90px; }}
.glow {{ position:absolute; border-radius:50%; filter:blur(120px); background:rgba(240,180,40,.28); }}
"""

LAYOUTS = {
    "hero":   (".text{top:230px;text-align:center}", "left:136px;top:840px;width:970px"),
    "left":   (".text{top:250px;text-align:left}", "left:300px;top:900px;width:900px;transform:rotate(4deg)"),
    "bottom": (".text{top:2060px;text-align:center}", "left:221px;top:150px;width:800px"),
    "rotate": (".text{top:230px;text-align:center}", "left:110px;top:880px;width:960px;transform:rotate(-5deg)"),
    "dark":   ("body{background:#141821} .headline{color:#f6f3ea} .sub{color:#9aa0ad} .glow{background:rgba(240,180,40,.22)} "
               ".text{top:230px;text-align:center}", "left:150px;top:840px;width:940px"),
}

# 글이 상자를 넘으면 줄인다. 끝까지 안 맞으면 그림을 만들지 않는다.
FIT_JS = """<script>
function fit(el,max,min,maxLines){let s=max;el.style.fontSize=s+'px';
 const lh=()=>parseFloat(getComputedStyle(el).lineHeight);
 while(s>min&&(el.scrollWidth>el.clientWidth+1||el.getBoundingClientRect().height/lh()>maxLines+0.2)){s-=4;el.style.fontSize=s+'px';}
 if(el.scrollWidth>el.clientWidth+1||el.getBoundingClientRect().height/lh()>maxLines+0.2)document.body.dataset.overflow='1';}
document.fonts.ready.then(()=>{fit(document.querySelector('.headline'),96,64,2);fit(document.querySelector('.sub'),50,36,2);document.body.dataset.done='1';});
</script>"""


def html_lang(loc):
    return {"zh-Hans": "zh-Hans", "zh-Hant": "zh-Hant"}.get(loc, loc.split("-")[0])


def render(loc, i, name, layout, headline, sub):
    text_css, phone_style = LAYOUTS[layout]
    img = (RAW / loc / f"{name}.png").as_uri()
    body = (f'<div class="glow" style="left:200px;top:1100px;width:900px;height:900px"></div>'
            f'<div class="phone" style="{phone_style}"><img src="{img}"></div>'
            f'<div class="text"><div class="headline">{headline}</div><div class="sub">{sub}</div></div>')
    page = (f'<!doctype html><html lang="{html_lang(loc)}"><head><meta charset="utf-8"><style>{BASE_CSS}{text_css}'
            f'</style></head><body>{body}{FIT_JS}</body></html>')
    html = pathlib.Path(tempfile.gettempdir()) / f"bucketclimb-shot-{loc}-{i}.html"
    html.write_text(page, encoding="utf-8")
    args = [CHROME, "--headless=new", f"--window-size={W},{H}", "--force-device-scale-factor=1",
            "--hide-scrollbars", "--disable-gpu", "--virtual-time-budget=3000", "--allow-file-access-from-files"]
    dom = subprocess.run(args + ["--dump-dom", html.as_uri()], capture_output=True, text=True, timeout=90).stdout
    if 'data-overflow="1"' in dom:
        raise SystemExit(f"글이 넘친다: {loc} {name} — screenshot_copy.json 문구를 줄일 것")
    out = OUT / loc / f"{i:02d}-{name}.png"
    out.parent.mkdir(parents=True, exist_ok=True)
    for _ in range(3):
        try:
            if subprocess.run(args + [f"--screenshot={out}", html.as_uri()], capture_output=True, timeout=90).returncode == 0:
                break
        except subprocess.TimeoutExpired:
            pass
    else:
        raise SystemExit(f"Chrome 이 그리지 못했다: {out}")
    print("rendered", out.relative_to(ROOT))


if __name__ == "__main__":
    for loc in sys.argv[1:] or list(COPY):
        slides = COPY[loc]["slides"]
        for i, ((name, layout), (headline, sub)) in enumerate(zip(SHOTS, slides), 1):
            render(loc, i, name, layout, headline, sub)
