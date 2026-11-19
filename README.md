# BucketClimb

이루고 싶은 목표를 단계로 나누고, 하나씩 체크하며 기록하는 iOS 앱. 스토어 이름은 "꿈을 찾아서"(Dream Seeker).

## 구조

핵심은 하나다: 목표를 단계로 나누고, 다음 단계 하나를 해 나간다.

- 목표 목록(첫 화면): 완료하지 않은 목표마다 제목, 진행, 다음 단계 하나. 다음 단계는 그 자리에서 체크한다.
- 목표 화면: 단계(추가 · 체크 · 순서 바꾸기 · 삭제)와 기록(메모 · 사진), 완료 처리.
- 완료한 목표: 완료한 목표와 그만둔 목표. 다시 시작할 수 있다.

## 무료와 Pro

- 무료: 목표 5개(완료하지 않은 목표), 단계, 기록, 기록 내보내기 · 백업
- Pro: 목표 무제한

## 그 밖의 기능

- 단계 제안: 기기 안 모델(iOS 26+, Apple Intelligence)이 목표를 첫 단계 3~5개로 나눈다. 목표는 기기 밖으로 나가지 않는다.
- Siri · 단축어: 목표 추가, 다음 단계 묻기. Spotlight 에서 목표를 찾아 연다.
- 24개 언어 (String Catalog)

## 코드

```
BucketClimb/
├── BucketClimbApp.swift        앱 진입점, LeeoKit 계약
├── BucketClimbPro.swift        Pro 권한 (ProStore)
├── BucketIntents.swift         Siri · Spotlight, 단계 제안 (GoalPlanner)
├── Models/BucketListItem.swift 목표 · 단계 · 기록 (예전 판의 분류 · 장애물 · 마감일 등도 저장 형식에 남아 있다)
├── ViewModels/BucketListViewModel.swift  목록과 모든 변경, 저장(UserDefaults)
├── Views/
│   ├── ContentView.swift       첫 실행 분기
│   ├── GoalViews.swift         목표 목록, 완료한 목표
│   ├── GoalDetailView.swift    목표 화면(단계 · 기록), 기록 시트
│   ├── AddGoalSheet.swift      목표 추가, 첫 실행 화면
│   ├── SettingsView.swift      설정
│   └── PaywallView.swift       Pro 화면
└── *Bucket.swift, Buckets.xcstrings  예전 판의 추천 목록 데이터
```

저장 형식은 예전 판과 같다. 화면에서 뺀 것(분류, 장소, 장애물, 마감일, 체크 항목, 목표 사진)의 값과
추천 목록 데이터는 이미 저장된 목표를 읽고 번역해 보이는 데 쓰이므로 지우지 않는다.

## 빌드

Xcode 로 `BucketClimb.xcodeproj` 를 열어 실행한다. iOS 18.6 이상.
