#!/bin/sh
# 소개 페이지 다시 만들기 (docs/index.html · docs/<언어>/index.html).
# 공용 생성기(DeployBar 의 scripts/sitegen)를 돌린 뒤, 오른쪽에서 왼쪽으로 쓰는 언어(아랍어)에 dir 을 단다.
# 생성기는 글 방향을 모른다.
#
# 사용법: scripts/build_site.sh        (생성기 자리가 다르면 SITEGEN=<sitegen.py 경로>)
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SITEGEN="${SITEGEN:-$HOME/Documents/workspace/개발중/DeployBar/scripts/sitegen/sitegen.py}"
python3 "$SITEGEN" "$ROOT"
# sitegen.css 의 왼쪽 · 오른쪽 고정 값(자주 묻는 질문의 +, 요금표 글머리, 좁은 화면의 첫 칸 정렬)을 RTL 에서 뒤집는다.
RTL_STYLE='<style>[dir=rtl] summary{padding:var(--s4) 0 var(--s4) var(--s6)}[dir=rtl] summary::after{right:auto;left:0}[dir=rtl] .plan ul{padding-left:0;padding-right:1.2em}[dir=rtl] .skip{left:auto;right:var(--s4)}@media (max-width:760px){[dir=rtl] .hero{text-align:right}}</style>'
for lang in ar; do
  page="$ROOT/docs/$lang/index.html"
  [ -f "$page" ] || continue
  sed -i '' "s/<html lang=\"$lang\">/<html lang=\"$lang\" dir=\"rtl\">/" "$page"
  python3 - "$page" "$RTL_STYLE" <<'PY'
import sys
page, style = sys.argv[1], sys.argv[2]
text = open(page, encoding="utf-8").read()
if "[dir=rtl] summary" not in text:
    open(page, "w", encoding="utf-8").write(text.replace("</head>", "  " + style + "\n</head>", 1))
PY
done
echo "완료: docs/<언어>/index.html"
