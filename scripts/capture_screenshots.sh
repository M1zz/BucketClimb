#!/bin/sh
# 스토어 스크린샷 원본 캡처 — 디버그 빌드의 예시 데이터(-ScreenshotSeed)로 언어마다 같은 화면을 찍는다.
#
# 사용법: sh scripts/capture_screenshots.sh <시뮬레이터 UDID> <BucketClimb.app 경로> [로케일 ...]
#   앱은 Debug 로 빌드한다(예시 데이터는 디버그 빌드에만 있다).
#   결과: docs/screenshots/raw/<로케일>/{forge,ocean,workshop,treasury,map}.png  (1320×2868)
# 이어서: python3 scripts/make_marketing_screenshots.py · python3 scripts/make_creative_assets.py
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
UDID="$1"; APP="$2"; shift 2
LOCALES="${*:-$(grep '^LOCALES=' "$ROOT/deploy.env" | cut -d= -f2 | tr ',' ' ')}"
BUNDLE=com.bucketclimb.app

xcrun simctl boot "$UDID" 2>/dev/null || true
xcrun simctl status_bar "$UDID" override --time "9:41" --batteryState charged --batteryLevel 100 --cellularBars 4 --wifiBars 3
xcrun simctl install "$UDID" "$APP"

# 로케일 → 기기 지역(통화·날짜 형식)
region() {
  case "$1" in
    ko) echo ko_KR ;; en) echo en_US ;; en-GB) echo en_GB ;; zh-Hans) echo zh_CN ;; zh-Hant) echo zh_TW ;;
    ja) echo ja_JP ;; pt-BR) echo pt_BR ;; cs) echo cs_CZ ;; da) echo da_DK ;; el) echo el_GR ;; nb) echo nb_NO ;;
    sv) echo sv_SE ;; vi) echo vi_VN ;; id) echo id_ID ;; *) echo "$1_$(echo "$1" | tr a-z A-Z)" ;;
  esac
}

shot() { # <로케일> <이름> <기다림초> <인자...>
  loc=$1; name=$2; wait=$3; shift 3
  xcrun simctl terminate "$UDID" $BUNDLE >/dev/null 2>&1 || true
  xcrun simctl launch "$UDID" $BUNDLE -ScreenshotSeed "$@" -AppleLanguages "($loc)" -AppleLocale "$(region "$loc")" >/dev/null
  sleep "$wait"
  xcrun simctl io "$UDID" screenshot "$ROOT/docs/screenshots/raw/$loc/$name.png" >/dev/null 2>&1
}

for loc in $LOCALES; do
  mkdir -p "$ROOT/docs/screenshots/raw/$loc"
  shot "$loc" forge 16 -ScreenshotTab 0 -ScreenshotForge
  shot "$loc" ocean 10 -ScreenshotTab 1
  shot "$loc" workshop 7 -ScreenshotTab 0
  shot "$loc" treasury 6 -ScreenshotTab 2
  shot "$loc" map 14 -ScreenshotTab 3
  echo "📸 $loc"
done
