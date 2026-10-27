#!/bin/sh
# 배포 전 게이트 — 여기서 실패하면 DeployBar 가 아카이브를 만들지 않는다.
#
# 사용법:
#   sh scripts/predeploy.sh
#
# 다국어(.xcstrings) 검사는 DeployBar 에 내장돼 있으므로 여기서 다시 하지 않는다.
# 이 앱에는 테스트 타겟이 없어 테스트 단계는 두지 않는다. 이 앱만의 검사만 담는다.
set -e
ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

PROJECT="BucketClimb.xcodeproj"
VERSION_XCCONFIG="Config/Version.xcconfig"

# 버전이 한 곳에만 있는지 — project.pbxproj 에 MARKETING_VERSION 이 다시 박히면
# Version.xcconfig 를 이겨서 옛 번호로 올라간다.
echo "🔢 버전 단일 소스 확인"
for KEY in MARKETING_VERSION CURRENT_PROJECT_VERSION; do
  if ! grep -q "^$KEY = " "$VERSION_XCCONFIG"; then
    echo "❌ $VERSION_XCCONFIG 에 $KEY 가 없습니다"; exit 1
  fi
  if grep -q "$KEY = " "$PROJECT/project.pbxproj"; then
    echo "❌ $PROJECT/project.pbxproj 에 $KEY 가 다시 적혀 있습니다 — 지우고 $VERSION_XCCONFIG 만 쓰세요"; exit 1
  fi
done

# 스크린샷용 예시 데이터는 디버그 빌드에만 들어가야 한다.
echo "🧪 스크린샷 예시 데이터가 디버그 전용인지 확인"
if ! head -1 BucketClimb/ScreenshotSeed.swift | grep -q '^#if DEBUG'; then
  echo "❌ BucketClimb/ScreenshotSeed.swift 가 #if DEBUG 로 감싸져 있지 않습니다"; exit 1
fi

echo ""
echo "✅ 게이트 통과 — 배포 가능"
