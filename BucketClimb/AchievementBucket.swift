//
// CategoryBuckets.swift
// BucketClimb
//
// 카테고리별로 관리되는 버킷리스트 항목 enum
// Auto-generated
//

import Foundation

// MARK: - Category-Specific Bucket Enums

enum AchievementBucket: String, Codable, CaseIterable {
    case 에베레스트_베이스캠프_트레킹하기 = "에베레스트 베이스캠프 트레킹하기"
    case 풀코스_마라톤_완주하기 = "풀코스 마라톤 완주하기"
    case 하프_마라톤_완주하기 = "하프 마라톤 완주하기"
    case 철인3종_경기_완주하기 = "철인3종 경기 완주하기"
    case _100km_울트라_마라톤_완주하기 = "100km 울트라 마라톤 완주하기"
    case 등산_100대_명산_완등하기 = "등산 100대 명산 완등하기"
    case 킬리만자로_등정하기 = "킬리만자로 등정하기"
    case 후지산_등정하기 = "후지산 등정하기"
    case 북한산_100회_등반하기 = "북한산 100회 등반하기"
    case 사이클_국토_종주하기 = "사이클 국토 종주하기"
    case 제주_올레길_완주하기 = "제주 올레길 완주하기"
    case 산티아고_순례길_완주하기 = "산티아고 순례길 완주하기"
    case 책_100권_읽기 = "책 100권 읽기"
    case 책_출판하기 = "책 출판하기"
    case 개인전_전시회_열기 = "개인전 전시회 열기"
    case 유튜브_구독자_10만_달성하기 = "유튜브 구독자 10만 달성하기"
    case 블로그_방문자_100만_달성하기 = "블로그 방문자 100만 달성하기"
    case 창업해서_첫_매출_내기 = "창업해서 첫 매출 내기"
    case 연봉_1억_달성하기 = "연봉 1억 달성하기"
    case 자산_10억_만들기 = "자산 10억 만들기"
    case _10km_달리기 = "10km 달리기"
    case _5km_달리기 = "5km 달리기"
    case _100일_연속_운동하기 = "100일 연속 운동하기"
    case _365일_운동_챌린지하기 = "365일 운동 챌린지하기"
    case 스쿼트_1000개하기 = "스쿼트 1000개하기"
    case 푸시업_1000개하기 = "푸시업 1000개하기"
    case 플랭크_10분하기 = "플랭크 10분하기"
    case _5km_수영하기 = "5km 수영하기"
    case 오픈워터_수영하기 = "오픈워터 수영하기"
    case 수영_4대_영법하기 = "수영 4대 영법하기"
    case 프리다이빙_자격증_취득하기 = "프리다이빙 자격증 취득하기"
    case 다이빙_마스터하기 = "다이빙 마스터하기"
    case 인명구조_자격증_취득하기 = "인명구조 자격증 취득하기"
    case CPR_자격증_취득하기 = "CPR 자격증 취득하기"
    case 응급처치_전문가하기 = "응급처치 전문가하기"
    case 소방관_체력_테스트하기 = "소방관 체력 테스트하기"
    case 군인_체력_테스트하기 = "군인 체력 테스트하기"
    case 경찰_체력_테스트하기 = "경찰 체력 테스트하기"
    case 올림픽_관람하기 = "올림픽 관람하기"
    case 월드컵_관람하기 = "월드컵 관람하기"
    case 슈퍼볼_관람하기 = "슈퍼볼 관람하기"
    case 윔블던_관람하기 = "윔블던 관람하기"
    case 투르_드_프랑스_관람하기 = "투르 드 프랑스 관람하기"
    case 마스터스_골프하기 = "마스터스 골프하기"
    case 보스턴_마라톤_완주하기 = "보스턴 마라톤 완주하기"
    case 뉴욕_마라톤_완주하기 = "뉴욕 마라톤 완주하기"
    case 도쿄_마라톤_완주하기 = "도쿄 마라톤 완주하기"
    case 런던_마라톤_완주하기 = "런던 마라톤 완주하기"
    case 베를린_마라톤_완주하기 = "베를린 마라톤 완주하기"
    case 시카고_마라톤_완주하기 = "시카고 마라톤 완주하기"
    case _6대_메이저_마라톤_완주하기 = "6대 메이저 마라톤 완주하기"
    case 스파르탄_레이스하기 = "스파르탄 레이스하기"
    case 터프머더_완주하기 = "터프머더 완주하기"
    case 워리어_대시하기 = "워리어 대시하기"
    case 크로스핏_대회_출전하기 = "크로스핏 대회 출전하기"
    case 보디빌딩_대회_출전하기 = "보디빌딩 대회 출전하기"
    case 파워리프팅_대회_출전하기 = "파워리프팅 대회 출전하기"
    case 역도_대회_출전하기 = "역도 대회 출전하기"
    case 격투기_대회_출전하기 = "격투기 대회 출전하기"
    case 복싱_시합하기 = "복싱 시합하기"
    case 태권도_사범_되기 = "태권도 사범 되기"
    case 유도_검은띠_따기 = "유도 검은띠 따기"
    case 합기도_사범_되기 = "합기도 사범 되기"
    case 검도_단증_따기 = "검도 단증 따기"
    case 주짓수_검은띠_따기 = "주짓수 검은띠 따기"
    case 무에타이_수련하기 = "무에타이 수련하기"
    case 크라브_마가_자격증_취득하기 = "크라브 마가 자격증 취득하기"
    case 서핑_대회_출전하기 = "서핑 대회 출전하기"
    case 스케이트보드_대회_출전하기 = "스케이트보드 대회 출전하기"
    case BMX_대회_출전하기 = "BMX 대회 출전하기"
    case 산악자전거_대회_출전하기 = "산악자전거 대회 출전하기"
    case 철인_3종_70_3하기 = "철인 3종 70.3하기"
    case 철인_3종_풀코스하기 = "철인 3종 풀코스하기"
    case 듀애슬론_완주하기 = "듀애슬론 완주하기"
    case 아쿠아슬론_완주하기 = "아쿠아슬론 완주하기"
    case 스윔런_완주하기 = "스윔런 완주하기"
    case 울트라_트레일_완주하기 = "울트라 트레일 완주하기"
    case UTMB_완주하기 = "UTMB 완주하기"
    case 서부_100마일하기 = "서부 100마일하기"
    case 배드워터_135하기 = "배드워터 135하기"
    case 사하라_사막_레이스하기 = "사하라 사막 레이스하기"
    case 남극_마라톤_완주하기 = "남극 마라톤 완주하기"
    case 에베레스트_마라톤_완주하기 = "에베레스트 마라톤 완주하기"
    case 만리장성_마라톤_완주하기 = "만리장성 마라톤 완주하기"
    case 빅서_마라톤_완주하기 = "빅서 마라톤 완주하기"
    case 자선_마라톤_10회하기 = "자선 마라톤 10회하기"
    case 블로그_수익화하기 = "블로그 수익화하기"
    case 유튜브_수익화하기 = "유튜브 수익화하기"
    case 팟캐스트_100화하기 = "팟캐스트 100화하기"
    case 강연_100회하기 = "강연 100회하기"
    case 워크숍_개최하기 = "워크숍 개최하기"
    case 컨퍼런스_발표하기 = "컨퍼런스 발표하기"
    case TED_강연하기 = "TED 강연하기"
    case 베스트셀러_작가하기 = "베스트셀러 작가하기"
    case 상_수상하기 = "상 수상하기"
    case 특허_등록하기 = "특허 등록하기"
    case 기네스북_등재하기 = "기네스북 등재하기"

    var thumbnail: String {
        Self.metadata[self]!.0
    }

    var backgroundImage: String {
        Self.metadata[self]!.1
    }

    private static let metadata: [Self: (String, String)] = [
        .에베레스트_베이스캠프_트레킹하기: ("mountain.2.fill", "everest_milestone"),
        .풀코스_마라톤_완주하기: ("figure.run", "full_marathon"),
        .하프_마라톤_완주하기: ("figure.run.circle.fill", "half_marathon"),
        .철인3종_경기_완주하기: ("figure.open.water.swim", "triathlon"),
        ._100km_울트라_마라톤_완주하기: ("gauge.with.needle.fill", "ultra_marathon"),
        .등산_100대_명산_완등하기: ("mountain.2.circle.fill", "100_mountains"),
        .킬리만자로_등정하기: ("mountain.2", "kilimanjaro"),
        .후지산_등정하기: ("triangle.fill", "mount_fuji"),
        .북한산_100회_등반하기: ("figure.hiking", "bukhansan"),
        .사이클_국토_종주하기: ("bicycle", "korea_cycling"),
        .제주_올레길_완주하기: ("map.fill", "jeju_olle"),
        .산티아고_순례길_완주하기: ("location.fill", "camino_santiago"),
        .책_100권_읽기: ("books.vertical.fill", "reading_100books"),
        .책_출판하기: ("book.closed.fill", "publish_book"),
        .개인전_전시회_열기: ("photo.fill", "art_exhibition"),
        .유튜브_구독자_10만_달성하기: ("play.rectangle.fill", "youtube_100k"),
        .블로그_방문자_100만_달성하기: ("chart.line.uptrend.xyaxis", "blog_1m"),
        .창업해서_첫_매출_내기: ("cart.fill", "startup_sales"),
        .연봉_1억_달성하기: ("dollarsign.circle.fill", "salary_100m"),
        .자산_10억_만들기: ("banknote.fill", "asset_1b"),
        ._10km_달리기: ("figure.run.circle.fill", "10km_run"),
        ._5km_달리기: ("figure.run", "5km_run"),
        ._100일_연속_운동하기: ("calendar", "100day_workout"),
        ._365일_운동_챌린지하기: ("calendar.circle.fill", "365day_workout"),
        .스쿼트_1000개하기: ("figure.strengthtraining.traditional", "1000_squats"),
        .푸시업_1000개하기: ("figure.strengthtraining.functional", "1000_pushups"),
        .플랭크_10분하기: ("figure.core.training", "10min_plank"),
        ._5km_수영하기: ("figure.pool.swim", "5km_swim"),
        .오픈워터_수영하기: ("figure.open.water.swim", "openwater_swim"),
        .수영_4대_영법하기: ("figure.pool.swim", "4_swimming_styles"),
        .프리다이빙_자격증_취득하기: ("figure.pool.swim", "freediving_license"),
        .다이빙_마스터하기: ("figure.pool.swim", "diving_master"),
        .인명구조_자격증_취득하기: ("cross.case.fill", "lifeguard_license"),
        .CPR_자격증_취득하기: ("cross.fill", "cpr_license"),
        .응급처치_전문가하기: ("cross.case.fill", "first_aid_expert"),
        .소방관_체력_테스트하기: ("flame.fill", "firefighter_test"),
        .군인_체력_테스트하기: ("figure.strengthtraining.traditional", "military_test"),
        .경찰_체력_테스트하기: ("figure.run", "police_test"),
        .올림픽_관람하기: ("trophy.fill", "olympics"),
        .월드컵_관람하기: ("soccerball", "worldcup"),
        .슈퍼볼_관람하기: ("football.fill", "superbowl"),
        .윔블던_관람하기: ("tennisball.fill", "wimbledon"),
        .투르_드_프랑스_관람하기: ("bicycle", "tour_de_france"),
        .마스터스_골프하기: ("figure.golf", "masters_golf"),
        .보스턴_마라톤_완주하기: ("figure.run", "boston_marathon"),
        .뉴욕_마라톤_완주하기: ("figure.run", "newyork_marathon"),
        .도쿄_마라톤_완주하기: ("figure.run", "tokyo_marathon"),
        .런던_마라톤_완주하기: ("figure.run", "london_marathon"),
        .베를린_마라톤_완주하기: ("figure.run", "berlin_marathon"),
        .시카고_마라톤_완주하기: ("figure.run", "chicago_marathon"),
        ._6대_메이저_마라톤_완주하기: ("figure.run.circle.fill", "6major_marathon"),
        .스파르탄_레이스하기: ("figure.run", "spartan_race"),
        .터프머더_완주하기: ("figure.run", "tough_mudder"),
        .워리어_대시하기: ("figure.run", "warrior_dash"),
        .크로스핏_대회_출전하기: ("figure.strengthtraining.traditional", "crossfit_competition"),
        .보디빌딩_대회_출전하기: ("figure.strengthtraining.traditional", "bodybuilding"),
        .파워리프팅_대회_출전하기: ("dumbbell.fill", "powerlifting"),
        .역도_대회_출전하기: ("dumbbell.fill", "weightlifting"),
        .격투기_대회_출전하기: ("figure.boxing", "mma_competition"),
        .복싱_시합하기: ("figure.boxing", "boxing_match"),
        .태권도_사범_되기: ("figure.taichi", "taekwondo_master"),
        .유도_검은띠_따기: ("figure.wrestling", "judo_blackbelt"),
        .합기도_사범_되기: ("figure.martial.arts", "hapkido_master"),
        .검도_단증_따기: ("figure.fencing", "kendo_dan"),
        .주짓수_검은띠_따기: ("figure.wrestling", "jiujitsu_blackbelt"),
        .무에타이_수련하기: ("figure.kickboxing", "muay_thai"),
        .크라브_마가_자격증_취득하기: ("figure.martial.arts", "krav_maga"),
        .서핑_대회_출전하기: ("figure.surfing", "surfing_competition"),
        .스케이트보드_대회_출전하기: ("figure.skateboarding", "skateboard_competition"),
        .BMX_대회_출전하기: ("bicycle", "bmx_competition"),
        .산악자전거_대회_출전하기: ("bicycle.circle.fill", "mtb_competition"),
        .철인_3종_70_3하기: ("figure.open.water.swim", "ironman_703"),
        .철인_3종_풀코스하기: ("figure.open.water.swim", "ironman_full"),
        .듀애슬론_완주하기: ("figure.run", "duathlon"),
        .아쿠아슬론_완주하기: ("figure.pool.swim", "aquathlon"),
        .스윔런_완주하기: ("figure.pool.swim", "swimrun"),
        .울트라_트레일_완주하기: ("figure.hiking", "ultra_trail"),
        .UTMB_완주하기: ("figure.hiking", "utmb"),
        .서부_100마일하기: ("figure.run", "western_states"),
        .배드워터_135하기: ("figure.run", "badwater_135"),
        .사하라_사막_레이스하기: ("figure.run", "sahara_race"),
        .남극_마라톤_완주하기: ("figure.run", "antarctica_marathon"),
        .에베레스트_마라톤_완주하기: ("figure.run", "everest_marathon"),
        .만리장성_마라톤_완주하기: ("figure.run", "great_wall_marathon"),
        .빅서_마라톤_완주하기: ("figure.run", "big_sur_marathon"),
        .자선_마라톤_10회하기: ("heart.fill", "charity_marathon_10"),
        .블로그_수익화하기: ("dollarsign.circle.fill", "blog_profit"),
        .유튜브_수익화하기: ("dollarsign.circle.fill", "youtube_profit"),
        .팟캐스트_100화하기: ("mic.fill", "podcast_100"),
        .강연_100회하기: ("mic.circle.fill", "lecture_100"),
        .워크숍_개최하기: ("person.3.fill", "workshop_host"),
        .컨퍼런스_발표하기: ("person.wave.2.fill", "conference_speaker"),
        .TED_강연하기: ("mic.fill", "ted_talk"),
        .베스트셀러_작가하기: ("book.closed.fill", "bestseller_author"),
        .상_수상하기: ("trophy.fill", "award_winner"),
        .특허_등록하기: ("doc.text.fill", "patent"),
        .기네스북_등재하기: ("book.fill", "guinness_record"),
    ]

    var hasCustomMilestones: Bool {
        !milestones.isEmpty
    }

    var milestones: [Milestone] {
        Self.milestonesData[self] ?? []
    }

    private static let milestonesData: [Self: [Milestone]] = [
        .풀코스_마라톤_완주하기: [
            Milestone(title: "기초 체력 만들기", description: "주 3회 이상 달리기 시작", successCriteria: ["현재 10km를 뛸 수 있나요?", "러닝화를 구입했나요?", "러닝 앱을 설치했나요?"]),
            Milestone(title: "하프 마라톤 완주", description: "21.0975km 도전", successCriteria: ["하프 마라톤 대회에 등록했나요?", "2시간 30분 내 완주할 수 있나요?", "페이스 조절을 연습했나요?"]),
            Milestone(title: "30km 장거리 훈련", description: "LSD(Long Slow Distance) 훈련", successCriteria: ["30km를 3시간 30분 내 뛸 수 있나요?", "보급(물, 젤) 전략을 세웠나요?", "벽(30km 지점)을 경험했나요?"]),
            Milestone(title: "풀코스 대회 등록", description: "서울, 춘천, 경주 등", successCriteria: ["목표 대회를 선정했나요?", "대회 3-4개월 전 등록했나요?", "목표 기록을 설정했나요?"]),
            Milestone(title: "테이퍼링", description: "대회 2주 전 훈련량 감소", successCriteria: ["운동량을 50% 줄였나요?", "탄수화물 로딩을 계획했나요?", "대회 준비물을 체크했나요?"]),
            Milestone(title: "완주 전략", description: "페이스와 보급 계획", successCriteria: ["목표 페이스(분/km)를 정했나요?", "에너지젤 섭취 타이밍을 정했나요?", "부정출발 방지를 위해 일찍 출발하나요?"])
        ],
        .철인3종_경기_완주하기: [
            Milestone(title: "수영 실력 향상", description: "자유형 1.5km 완영", successCriteria: ["400m를 쉬지 않고 수영할 수 있나요?", "오픈워터 수영 경험이 있나요?", "젖은 수트를 입고 수영해봤나요?"]),
            Milestone(title: "사이클 훈련", description: "40km 사이클 완주", successCriteria: ["로드바이크를 보유하고 있나요?", "클릿 페달 사용에 익숙한가요?", "시속 30km 이상 유지 가능한가요?"]),
            Milestone(title: "달리기 훈련", description: "10km 달리기 완주", successCriteria: ["사이클 후 바로 달릴 수 있나요?", "브릭 트레이닝을 해봤나요?", "50분 내 10km 가능한가요?"]),
            Milestone(title: "복합 훈련", description: "3종목 연속 훈련", successCriteria: ["전환(트랜지션) 연습을 했나요?", "수영→사이클 전환 시간은?", "사이클→런 전환 시간은?"]),
            Milestone(title: "대회 등록", description: "스프린트 또는 올림픽 코스", successCriteria: ["첫 대회는 스프린트 코스를 추천해요", "대회 규정을 숙지했나요?", "장비 점검을 완료했나요?"]),
            Milestone(title: "영양 전략", description: "경기 중 보급 계획", successCriteria: ["수분 보충 계획을 세웠나요?", "젤/바 섭취 타이밍을 정했나요?", "경기 전 식사 메뉴를 정했나요?"])
        ],
        .책_100권_읽기: [
            Milestone(title: "독서 습관 만들기", description: "매일 30분 독서", successCriteria: ["매일 같은 시간에 읽고 있나요?", "독서 공간을 정했나요?", "스마트폰을 멀리 두고 읽나요?"]),
            Milestone(title: "첫 10권 완독", description: "2개월 내 목표", successCriteria: ["읽고 싶은 책 리스트가 있나요?", "독서 기록 앱/노트를 사용하나요?", "10권 완독했나요?"]),
            Milestone(title: "장르 다양화", description: "소설, 비소설, 자기계발 등", successCriteria: ["다양한 장르를 시도하고 있나요?", "불편한 장르도 도전했나요?", "30권 완독했나요?"]),
            Milestone(title: "독서 모임 참여", description: "생각 나누기", successCriteria: ["독서 모임을 찾아봤나요?", "온라인 독서 커뮤니티에 가입했나요?", "50권 완독했나요?"]),
            Milestone(title: "독서 속도 향상", description: "월 3-4권 읽기", successCriteria: ["한 달에 3권 이상 읽고 있나요?", "출퇴근 시간을 활용하나요?", "75권 완독했나요?"]),
            Milestone(title: "100권 달성", description: "독서 마라톤 완주", successCriteria: ["100권 리스트를 작성했나요?", "가장 인상 깊은 책 10권을 꼽을 수 있나요?", "다음 목표를 세웠나요?"])
        ],
        .유튜브_구독자_10만_달성하기: [
            Milestone(title: "채널 컨셉 정하기", description: "니치 시장 선택", successCriteria: ["어떤 주제로 채널을 운영할지 정했나요?", "타겟 시청자층을 정의했나요?", "경쟁 채널을 분석했나요?"]),
            Milestone(title: "첫 영상 10개 업로드", description: "콘텐츠 제작 시작", successCriteria: ["편집 프로그램을 배웠나요?", "썸네일 제작 방법을 익혔나요?", "업로드 주기를 정했나요?"]),
            Milestone(title: "구독자 1,000명 달성", description: "수익 창출 조건 1", successCriteria: ["커뮤니티와 소통하고 있나요?", "SEO 최적화를 적용했나요?", "콜투액션을 활용하고 있나요?"]),
            Milestone(title: "시청 시간 4,000시간", description: "수익 창출 조건 2", successCriteria: ["평균 시청 지속시간을 확인하나요?", "10분 이상 영상을 제작하나요?", "시리즈 콘텐츠를 만들었나요?"]),
            Milestone(title: "구독자 10,000명 달성", description: "실버 버튼을 향해", successCriteria: ["바이럴 영상이 있었나요?", "협업을 시도했나요?", "숏폼(Shorts)을 활용하고 있나요?"]),
            Milestone(title: "10만 구독자 달성", description: "실버 버튼 획득", successCriteria: ["일관된 업로드를 유지하고 있나요?", "커뮤니티 탭을 활용하나요?", "수익 다각화를 계획했나요?"])
        ],
        .창업해서_첫_매출_내기: [
            Milestone(title: "사업 아이디어 검증", description: "시장 조사 및 고객 인터뷰", successCriteria: ["해결하고 싶은 문제를 정의했나요?", "잠재 고객 10명과 인터뷰했나요?", "경쟁사를 분석했나요?"]),
            Milestone(title: "MVP 제작", description: "최소 기능 제품 개발", successCriteria: ["핵심 기능만 포함한 제품을 만들었나요?", "프로토타입을 테스트했나요?", "피드백을 반영했나요?"]),
            Milestone(title: "사업자 등록", description: "법적 준비", successCriteria: ["사업자 유형을 결정했나요?", "사업자등록증을 발급받았나요?", "통장을 개설했나요?"]),
            Milestone(title: "마케팅 시작", description: "첫 고객 확보", successCriteria: ["SNS 채널을 개설했나요?", "첫 광고를 집행했나요?", "랜딩 페이지를 만들었나요?"]),
            Milestone(title: "첫 매출 달성", description: "유료 고객 확보", successCriteria: ["첫 결제를 받았나요?", "고객 피드백을 받았나요?", "재구매를 유도했나요?"])
        ],
        .연봉_1억_달성하기: [
            Milestone(title: "현재 위치 분석", description: "연봉, 역량, 시장가치 파악", successCriteria: ["현재 연봉 수준을 알고 있나요?", "업계 평균 연봉을 조사했나요?", "필요한 역량을 파악했나요?"]),
            Milestone(title: "역량 개발 계획", description: "고연봉 스킬 습득", successCriteria: ["수요가 높은 기술을 배우고 있나요?", "자격증/학위를 계획했나요?", "포트폴리오를 만들고 있나요?"]),
            Milestone(title: "네트워크 확장", description: "업계 인맥 구축", successCriteria: ["링크드인 프로필을 최적화했나요?", "업계 행사에 참여하나요?", "멘토를 찾았나요?"]),
            Milestone(title: "이직/승진 준비", description: "기회 모색", successCriteria: ["이력서를 업데이트했나요?", "헤드헌터와 연락했나요?", "면접 준비를 했나요?"]),
            Milestone(title: "연봉 협상", description: "목표 연봉 달성", successCriteria: ["협상 전략을 세웠나요?", "시장가치를 근거로 제시했나요?", "대안(BATNA)을 준비했나요?"])
        ],
        .에베레스트_베이스캠프_트레킹하기: [
            Milestone(title: "체력 훈련", description: "고산 트레킹 준비", successCriteria: ["주 3회 이상 등산을 하고 있나요?", "10km 이상 하이킹이 가능한가요?", "계단 오르기 훈련을 하나요?"]),
            Milestone(title: "고소 적응 계획", description: "고산병 예방", successCriteria: ["고소 적응에 대해 공부했나요?", "천천히 오르는 일정을 계획했나요?", "다이아목스에 대해 알아봤나요?"]),
            Milestone(title: "장비 준비", description: "트레킹 장비 구비", successCriteria: ["고산용 침낭(-20도)을 준비했나요?", "트레킹 부츠를 길들였나요?", "레이어링 의류를 준비했나요?"])
        ],
        .하프_마라톤_완주하기: [
            Milestone(title: "기초 체력 만들기", description: "10km 달리기", successCriteria: ["5km를 30분 내 뛸 수 있나요?", "주 3회 이상 달리고 있나요?", "러닝화를 구입했나요?"]),
            Milestone(title: "15km 훈련", description: "거리 늘리기", successCriteria: ["15km를 1시간 40분 내 뛸 수 있나요?", "페이스 조절을 연습하나요?", "중간 보급 연습을 했나요?"]),
            Milestone(title: "대회 등록", description: "하프 마라톤 도전", successCriteria: ["목표 대회를 선정했나요?", "목표 기록을 정했나요?", "대회 복장을 준비했나요?"])
        ],
        ._100km_울트라_마라톤_완주하기: [
            Milestone(title: "풀코스 완주", description: "42.195km 경험", successCriteria: ["풀코스 마라톤을 완주했나요?", "4시간 30분 내 완주 가능한가요?", "장거리 페이스 유지가 되나요?"]),
            Milestone(title: "50km 경험", description: "울트라 입문", successCriteria: ["50km 대회에 참가했나요?", "야간 주행 경험이 있나요?", "영양 보급 전략을 세웠나요?"]),
            Milestone(title: "100km 준비", description: "정신력 훈련", successCriteria: ["80km 이상 훈련을 했나요?", "수면 전략을 계획했나요?", "페이서를 구했나요?"])
        ],
        .등산_100대_명산_완등하기: [
            Milestone(title: "등산 시작", description: "10대 명산 완등", successCriteria: ["등산 장비를 구비했나요?", "등산 앱을 설치했나요?", "10개 명산을 완등했나요?"]),
            Milestone(title: "중급 도전", description: "50대 명산 완등", successCriteria: ["어려운 산에 도전하고 있나요?", "등산 기록을 정리하나요?", "50개 명산을 완등했나요?"]),
            Milestone(title: "100대 완등", description: "목표 달성", successCriteria: ["전국 각지 산을 다니고 있나요?", "사계절 등산을 하나요?", "100개 명산을 완등했나요?"])
        ],
        .킬리만자로_등정하기: [
            Milestone(title: "체력 준비", description: "고산 등반 체력", successCriteria: ["주 4회 이상 운동하나요?", "계단 오르기 1시간이 가능한가요?", "무거운 배낭 훈련을 하나요?"]),
            Milestone(title: "루트 선택", description: "등반 루트 결정", successCriteria: ["마차메, 렘보샤 등 루트를 조사했나요?", "6-7일 일정을 계획했나요?", "현지 가이드를 예약했나요?"]),
            Milestone(title: "장비 및 건강", description: "등반 준비 완료", successCriteria: ["고산 장비를 준비했나요?", "예방접종을 완료했나요?", "여행자 보험에 가입했나요?"])
        ],
        .후지산_등정하기: [
            Milestone(title: "시즌 확인", description: "등산 시기 선택", successCriteria: ["7-9월 개방 시즌을 확인했나요?", "산장 예약을 했나요?", "날씨를 체크하나요?"]),
            Milestone(title: "루트 선택", description: "등산로 결정", successCriteria: ["요시다, 스바시리 등 루트를 선택했나요?", "5합목 접근 방법을 알아봤나요?", "고산병 대비를 했나요?"]),
            Milestone(title: "장비 준비", description: "등반 장비", successCriteria: ["헤드램프를 준비했나요?", "방한 장비를 챙겼나요?", "등산 스틱을 준비했나요?"])
        ],
        .북한산_100회_등반하기: [
            Milestone(title: "등반 시작", description: "코스 파악", successCriteria: ["다양한 코스를 알고 있나요?", "등산 기록 앱을 사용하나요?", "10회 등반을 완료했나요?"]),
            Milestone(title: "꾸준한 등반", description: "50회 달성", successCriteria: ["주 1회 이상 등반하나요?", "사계절 등반을 하나요?", "50회 등반을 완료했나요?"]),
            Milestone(title: "100회 달성", description: "목표 완수", successCriteria: ["암벽 코스도 시도했나요?", "야간 등반 경험이 있나요?", "100회 등반을 완료했나요?"])
        ],
        .사이클_국토_종주하기: [
            Milestone(title: "자전거 준비", description: "장거리 라이딩 준비", successCriteria: ["로드바이크 또는 투어링 바이크가 있나요?", "100km 라이딩 경험이 있나요?", "기본 정비를 할 수 있나요?"]),
            Milestone(title: "4대강 인증", description: "구간별 완주", successCriteria: ["낙동강 자전거길을 완주했나요?", "인증 스탬프를 모으고 있나요?", "1박 이상 라이딩 경험이 있나요?"]),
            Milestone(title: "국토 종주", description: "전 구간 완주", successCriteria: ["인천-부산 루트를 계획했나요?", "숙박 장소를 예약했나요?", "국토종주 인증서를 받았나요?"])
        ],
        .제주_올레길_완주하기: [
            Milestone(title: "올레길 시작", description: "코스 파악", successCriteria: ["26개 코스 정보를 확인했나요?", "올레 패스포트를 구입했나요?", "5개 코스를 완주했나요?"]),
            Milestone(title: "중간 진행", description: "15코스 완주", successCriteria: ["스탬프를 모으고 있나요?", "다양한 난이도 코스를 경험했나요?", "15개 코스를 완주했나요?"]),
            Milestone(title: "완주 달성", description: "전 코스 완주", successCriteria: ["26개 코스를 모두 완주했나요?", "완주 인증서를 받았나요?", "가장 인상 깊은 코스는 어디인가요?"])
        ],
        .산티아고_순례길_완주하기: [
            Milestone(title: "루트 선택", description: "순례길 계획", successCriteria: ["프랑스길, 포르투갈길 등 루트를 선택했나요?", "800km vs 120km 등 거리를 결정했나요?", "출발지를 정했나요?"]),
            Milestone(title: "체력 준비", description: "장거리 도보 훈련", successCriteria: ["하루 20-30km 걷기가 가능한가요?", "무거운 배낭(7-10kg)으로 훈련하나요?", "발 관리법을 알고 있나요?"]),
            Milestone(title: "순례 준비", description: "실질적 준비", successCriteria: ["크레덴시알(순례자 여권)을 준비했나요?", "알베르게 시스템을 이해했나요?", "기본 스페인어를 배웠나요?"])
        ],
        .책_출판하기: [
            Milestone(title: "원고 작성", description: "책 내용 완성", successCriteria: ["책 주제를 정했나요?", "목차를 구성했나요?", "원고를 완성했나요?"]),
            Milestone(title: "출판 방법 결정", description: "출판사 vs 자가출판", successCriteria: ["출판사 투고를 시도했나요?", "자가출판 플랫폼을 조사했나요?", "출판 방식을 결정했나요?"]),
            Milestone(title: "출판 진행", description: "편집 및 디자인", successCriteria: ["교정/교열을 완료했나요?", "표지 디자인을 했나요?", "ISBN을 발급받았나요?"])
        ],
        .개인전_전시회_열기: [
            Milestone(title: "작품 준비", description: "전시 작품 제작", successCriteria: ["전시 테마를 정했나요?", "최소 10-20점 작품이 있나요?", "작품 설명서를 작성했나요?"]),
            Milestone(title: "전시 공간 확보", description: "갤러리 섭외", successCriteria: ["갤러리/전시 공간을 찾았나요?", "대관료를 확인했나요?", "전시 일정을 확정했나요?"]),
            Milestone(title: "전시 오픈", description: "홍보 및 운영", successCriteria: ["포스터/리플렛을 제작했나요?", "오프닝 행사를 계획했나요?", "SNS 홍보를 했나요?"])
        ],
        .블로그_방문자_100만_달성하기: [
            Milestone(title: "블로그 시작", description: "콘텐츠 전략", successCriteria: ["블로그 플랫폼을 선택했나요?", "주제/니치를 정했나요?", "50개 이상 포스팅을 했나요?"]),
            Milestone(title: "SEO 최적화", description: "검색 유입 증가", successCriteria: ["키워드 리서치를 하나요?", "제목/메타설명을 최적화하나요?", "월 방문자 10만을 달성했나요?"]),
            Milestone(title: "100만 달성", description: "꾸준한 성장", successCriteria: ["정기적으로 포스팅하나요?", "소셜미디어와 연계하나요?", "누적 방문자 100만을 달성했나요?"])
        ],
        .자산_10억_만들기: [
            Milestone(title: "재무 현황 파악", description: "자산/부채 정리", successCriteria: ["현재 순자산을 알고 있나요?", "월 수입/지출을 파악했나요?", "저축률을 계산했나요?"]),
            Milestone(title: "투자 시작", description: "자산 증식 계획", successCriteria: ["투자 공부를 하고 있나요?", "주식/부동산/채권 포트폴리오를 구성했나요?", "월 투자금액을 정했나요?"]),
            Milestone(title: "자산 성장", description: "목표 달성", successCriteria: ["연 수익률을 관리하나요?", "세금 최적화를 하나요?", "순자산 10억을 달성했나요?"])
        ],
        ._10km_달리기: [
            Milestone(title: "달리기 시작", description: "기초 체력 만들기", successCriteria: ["러닝화를 구입했나요?", "주 3회 이상 달리나요?", "3km를 뛸 수 있나요?"]),
            Milestone(title: "5km 달성", description: "중간 목표", successCriteria: ["5km를 35분 내 뛸 수 있나요?", "러닝 앱으로 기록하나요?", "부상 예방 스트레칭을 하나요?"]),
            Milestone(title: "10km 완주", description: "목표 달성", successCriteria: ["10km를 1시간 내 뛸 수 있나요?", "일정한 페이스를 유지하나요?", "10km 대회에 참가했나요?"])
        ],
        ._5km_달리기: [
            Milestone(title: "걷기부터 시작", description: "운동 습관", successCriteria: ["매일 30분 걷기를 하나요?", "러닝화를 구입했나요?", "1km를 뛸 수 있나요?"]),
            Milestone(title: "3km 달성", description: "거리 늘리기", successCriteria: ["3km를 20분 내 뛸 수 있나요?", "호흡 조절이 되나요?", "주 3회 이상 뛰나요?"]),
            Milestone(title: "5km 완주", description: "목표 달성", successCriteria: ["5km를 30분 내 뛸 수 있나요?", "파크런에 참가해봤나요?", "달리기가 습관이 됐나요?"])
        ],
        ._100일_연속_운동하기: [
            Milestone(title: "습관 형성", description: "10일 연속", successCriteria: ["운동 종류를 정했나요?", "매일 같은 시간에 운동하나요?", "10일 연속 달성했나요?"]),
            Milestone(title: "중간 점검", description: "50일 연속", successCriteria: ["운동 기록을 하고 있나요?", "휴식일 없이 유지하나요?", "50일 연속 달성했나요?"]),
            Milestone(title: "100일 달성", description: "챌린지 완료", successCriteria: ["다양한 운동을 병행하나요?", "컨디션 관리를 하나요?", "100일 연속 달성했나요?"])
        ],
        ._365일_운동_챌린지하기: [
            Milestone(title: "첫 달 완료", description: "30일 연속", successCriteria: ["운동 계획표를 만들었나요?", "트래킹 앱을 사용하나요?", "30일 연속 달성했나요?"]),
            Milestone(title: "분기 달성", description: "100일 연속", successCriteria: ["운동 루틴이 생겼나요?", "부상 예방을 신경쓰나요?", "100일 연속 달성했나요?"]),
            Milestone(title: "1년 완주", description: "365일 달성", successCriteria: ["휴일에도 운동하나요?", "여행 중에도 운동하나요?", "365일 연속 달성했나요?"])
        ],
        .스쿼트_1000개하기: [
            Milestone(title: "기본기 익히기", description: "자세 완성", successCriteria: ["올바른 스쿼트 자세를 알고 있나요?", "50개를 연속으로 할 수 있나요?", "무릎 부담 없이 하나요?"]),
            Milestone(title: "500개 도전", description: "지구력 훈련", successCriteria: ["100개씩 5세트가 가능한가요?", "휴식 시간을 관리하나요?", "500개를 완료했나요?"]),
            Milestone(title: "1000개 달성", description: "챌린지 완료", successCriteria: ["페이스 조절을 하나요?", "멘탈 관리가 되나요?", "1000개를 완료했나요?"])
        ],
        .푸시업_1000개하기: [
            Milestone(title: "기본기 익히기", description: "자세 완성", successCriteria: ["올바른 푸시업 자세를 알고 있나요?", "30개를 연속으로 할 수 있나요?", "손목 부담 없이 하나요?"]),
            Milestone(title: "500개 도전", description: "지구력 훈련", successCriteria: ["50개씩 10세트가 가능한가요?", "다양한 변형 푸시업을 하나요?", "500개를 완료했나요?"]),
            Milestone(title: "1000개 달성", description: "챌린지 완료", successCriteria: ["체력 분배를 하나요?", "시간 기록을 하나요?", "1000개를 완료했나요?"])
        ],
        .플랭크_10분하기: [
            Milestone(title: "기본 자세", description: "1분 유지", successCriteria: ["올바른 플랭크 자세를 알고 있나요?", "1분을 유지할 수 있나요?", "코어에 힘이 들어가나요?"]),
            Milestone(title: "5분 도전", description: "지구력 향상", successCriteria: ["3분을 유지할 수 있나요?", "사이드 플랭크도 하나요?", "5분을 유지할 수 있나요?"]),
            Milestone(title: "10분 달성", description: "목표 완료", successCriteria: ["호흡을 유지하며 버티나요?", "자세가 흐트러지지 않나요?", "10분을 유지할 수 있나요?"])
        ],
        ._5km_수영하기: [
            Milestone(title: "기본기 완성", description: "1km 완영", successCriteria: ["자유형이 편안한가요?", "500m를 쉬지 않고 수영할 수 있나요?", "1km를 완영할 수 있나요?"]),
            Milestone(title: "지구력 향상", description: "3km 완영", successCriteria: ["페이스 조절이 되나요?", "호흡이 편안한가요?", "3km를 완영할 수 있나요?"]),
            Milestone(title: "5km 달성", description: "장거리 수영", successCriteria: ["영양 보급 계획을 세웠나요?", "2시간 이상 수영이 가능한가요?", "5km를 완영할 수 있나요?"])
        ],
        .오픈워터_수영하기: [
            Milestone(title: "수영장 훈련", description: "1km 이상 완영", successCriteria: ["수영장에서 1km 이상 수영 가능한가요?", "자유형이 안정적인가요?", "호흡 패턴이 일정한가요?"]),
            Milestone(title: "웻수트 적응", description: "바다 수영 준비", successCriteria: ["웻수트를 구입했나요?", "웻수트 착용 후 수영해봤나요?", "고글 선택을 했나요?"]),
            Milestone(title: "오픈워터 도전", description: "해상 수영 경험", successCriteria: ["파도/조류에 적응했나요?", "사이팅(방향 확인)을 연습했나요?", "오픈워터 대회에 참가했나요?"])
        ],
        .수영_4대_영법하기: [
            Milestone(title: "자유형/배영", description: "기본 영법 습득", successCriteria: ["자유형 25m가 가능한가요?", "배영 25m가 가능한가요?", "호흡이 안정적인가요?"]),
            Milestone(title: "평영 습득", description: "세 번째 영법", successCriteria: ["평영 킥이 올바른가요?", "팔 동작과 킥의 타이밍이 맞나요?", "평영 50m가 가능한가요?"]),
            Milestone(title: "접영 완성", description: "네 번째 영법", successCriteria: ["돌핀 킥이 되나요?", "팔 리커버리가 자연스러운가요?", "접영 25m가 가능한가요?"])
        ],
        .프리다이빙_자격증_취득하기: [
            Milestone(title: "이론 학습", description: "프리다이빙 기초", successCriteria: ["호흡법을 배웠나요?", "이퀄라이징을 이해했나요?", "안전 수칙을 알고 있나요?"]),
            Milestone(title: "수영장 훈련", description: "스태틱/다이나믹", successCriteria: ["스태틱 2분 이상 가능한가요?", "다이나믹 25m 이상 가능한가요?", "버디 시스템을 연습했나요?"]),
            Milestone(title: "자격증 취득", description: "AIDA/SSI 자격증", successCriteria: ["오픈워터 훈련을 했나요?", "10m 이상 다이빙이 가능한가요?", "자격증 시험에 합격했나요?"])
        ],
        .다이빙_마스터하기: [
            Milestone(title: "오픈워터 자격증", description: "다이빙 입문", successCriteria: ["오픈워터 자격증이 있나요?", "18m 깊이 다이빙 경험이 있나요?", "장비 사용이 익숙한가요?"]),
            Milestone(title: "어드밴스드 취득", description: "중급 자격증", successCriteria: ["어드밴스드 과정을 이수했나요?", "30m 깊이 다이빙이 가능한가요?", "나이트록스 자격이 있나요?"]),
            Milestone(title: "다이브마스터", description: "전문가 과정", successCriteria: ["레스큐 다이버 자격이 있나요?", "60회 이상 다이빙 로그가 있나요?", "다이브마스터 과정을 시작했나요?"])
        ],
        .인명구조_자격증_취득하기: [
            Milestone(title: "수영 실력", description: "기본 체력", successCriteria: ["자유형 400m가 가능한가요?", "잠영 25m가 가능한가요?", "수영에 자신이 있나요?"]),
            Milestone(title: "이론 학습", description: "구조 이론", successCriteria: ["익수자 구조법을 배웠나요?", "CPR을 할 수 있나요?", "응급처치를 알고 있나요?"]),
            Milestone(title: "실기 훈련", description: "자격증 취득", successCriteria: ["구조 실습을 했나요?", "장비 사용법을 익혔나요?", "자격증 시험에 합격했나요?"])
        ],
        .CPR_자격증_취득하기: [
            Milestone(title: "이론 학습", description: "심폐소생술 원리", successCriteria: ["심폐소생술 순서를 알고 있나요?", "AED 사용법을 알고 있나요?", "응급 상황 대처법을 배웠나요?"]),
            Milestone(title: "실습 훈련", description: "마네킹 실습", successCriteria: ["가슴 압박 깊이/속도가 정확한가요?", "인공호흡이 가능한가요?", "AED 실습을 했나요?"]),
            Milestone(title: "자격증 취득", description: "공인 자격증", successCriteria: ["교육 기관을 선택했나요?", "실기 시험을 통과했나요?", "자격증을 발급받았나요?"])
        ],
        .응급처치_전문가하기: [
            Milestone(title: "기본 과정", description: "응급처치 기초", successCriteria: ["기본 응급처치를 할 수 있나요?", "상처 처치법을 알고 있나요?", "CPR 자격증이 있나요?"]),
            Milestone(title: "고급 과정", description: "전문 응급처치", successCriteria: ["골절/탈구 처치를 배웠나요?", "쇼크 대처법을 알고 있나요?", "재해 응급처치를 배웠나요?"]),
            Milestone(title: "전문가 인증", description: "자격증 취득", successCriteria: ["응급구조사 과정을 고려했나요?", "실습 시간을 충족했나요?", "전문 자격증을 취득했나요?"])
        ],
        .소방관_체력_테스트하기: [
            Milestone(title: "체력 기준 파악", description: "테스트 항목 확인", successCriteria: ["악력/배근력 기준을 알고 있나요?", "윗몸일으키기 기준을 알고 있나요?", "왕복오래달리기 기준을 알고 있나요?"]),
            Milestone(title: "기초 체력 훈련", description: "체력 향상", successCriteria: ["주 5회 이상 운동하나요?", "근력 운동을 하나요?", "유산소 운동을 하나요?"]),
            Milestone(title: "실전 테스트", description: "시험 응시", successCriteria: ["모의 테스트를 해봤나요?", "시간 내 완수가 가능한가요?", "체력 테스트에 합격했나요?"])
        ],
        .군인_체력_테스트하기: [
            Milestone(title: "테스트 항목 파악", description: "측정 종목 확인", successCriteria: ["팔굽혀펴기 기준을 알고 있나요?", "윗몸일으키기 기준을 알고 있나요?", "달리기(3km) 기준을 알고 있나요?"]),
            Milestone(title: "체력 훈련", description: "종목별 훈련", successCriteria: ["매일 팔굽혀펴기를 하나요?", "코어 운동을 하나요?", "달리기 훈련을 하나요?"]),
            Milestone(title: "테스트 통과", description: "1등급 도전", successCriteria: ["각 종목 연습을 충분히 했나요?", "시간 기록을 측정하나요?", "목표 등급을 달성했나요?"])
        ],
        .경찰_체력_테스트하기: [
            Milestone(title: "시험 정보 수집", description: "측정 항목 확인", successCriteria: ["100m 달리기 기준을 알고 있나요?", "1000m 달리기 기준을 알고 있나요?", "좌우 악력 기준을 알고 있나요?"]),
            Milestone(title: "체력 훈련", description: "종목별 준비", successCriteria: ["단거리 스피드 훈련을 하나요?", "중거리 지구력 훈련을 하나요?", "악력 운동을 하나요?"]),
            Milestone(title: "테스트 합격", description: "기준 통과", successCriteria: ["모의 테스트 결과가 기준 이상인가요?", "실전 컨디션 관리를 하나요?", "체력 테스트에 합격했나요?"])
        ],
        .올림픽_관람하기: [
            Milestone(title: "대회 정보 확인", description: "개최지/일정", successCriteria: ["다음 올림픽 개최지를 알고 있나요?", "관심 종목 일정을 확인했나요?", "티켓 판매 일정을 확인했나요?"]),
            Milestone(title: "티켓 구매", description: "입장권 확보", successCriteria: ["공식 티켓 사이트에 등록했나요?", "추첨에 응모했나요?", "티켓을 구매했나요?"]),
            Milestone(title: "여행 준비", description: "현지 방문", successCriteria: ["항공권을 예약했나요?", "숙소를 예약했나요?", "현지 교통을 파악했나요?"])
        ],
        .월드컵_관람하기: [
            Milestone(title: "대회 정보", description: "개최국/일정", successCriteria: ["다음 월드컵 개최국을 알고 있나요?", "한국 경기 일정을 확인했나요?", "티켓 판매 일정을 확인했나요?"]),
            Milestone(title: "티켓 확보", description: "입장권 구매", successCriteria: ["FIFA 티켓 포털에 등록했나요?", "티켓 추첨에 응모했나요?", "티켓을 구매했나요?"]),
            Milestone(title: "원정 응원", description: "현지 관람", successCriteria: ["항공/숙소를 예약했나요?", "붉은악마 원정대에 참여하나요?", "응원 도구를 준비했나요?"])
        ],
        .슈퍼볼_관람하기: [
            Milestone(title: "정보 수집", description: "개최 도시 확인", successCriteria: ["개최 도시와 날짜를 알고 있나요?", "티켓 가격대를 파악했나요?", "NFL 규칙을 이해하나요?"]),
            Milestone(title: "티켓 구매", description: "입장권 확보", successCriteria: ["공식/리셀 사이트를 확인했나요?", "예산을 준비했나요?", "티켓을 구매했나요?"]),
            Milestone(title: "경기 관람", description: "현지 방문", successCriteria: ["미국 비자를 준비했나요?", "경기장 접근 방법을 확인했나요?", "하프타임 쇼를 즐겼나요?"])
        ],
        .윔블던_관람하기: [
            Milestone(title: "정보 수집", description: "대회 일정", successCriteria: ["윔블던 일정(6-7월)을 알고 있나요?", "티켓 구매 방법을 알고 있나요?", "관람 에티켓을 알고 있나요?"]),
            Milestone(title: "티켓 확보", description: "입장권 구매", successCriteria: ["발롯(추첨)에 응모했나요?", "줄 서기(The Queue)를 알고 있나요?", "티켓을 확보했나요?"]),
            Milestone(title: "영국 방문", description: "현지 관람", successCriteria: ["런던 여행을 계획했나요?", "흰색 복장을 준비했나요?", "딸기와 크림을 맛봤나요?"])
        ],
        .투르_드_프랑스_관람하기: [
            Milestone(title: "대회 정보", description: "코스 및 일정", successCriteria: ["대회 일정(7월)을 알고 있나요?", "주요 스테이지를 확인했나요?", "관람 포인트를 선정했나요?"]),
            Milestone(title: "관람 계획", description: "현지 방문 준비", successCriteria: ["프랑스 여행을 계획했나요?", "관람 위치를 정했나요?", "교통편을 확인했나요?"]),
            Milestone(title: "현지 관람", description: "경기 관전", successCriteria: ["산악 스테이지를 볼 예정인가요?", "카라반 퍼레이드를 봤나요?", "선수들을 응원했나요?"])
        ],
        .마스터스_골프하기: [
            Milestone(title: "골프 실력", description: "기본기 완성", successCriteria: ["골프를 칠 수 있나요?", "18홀 라운드 경험이 있나요?", "스코어가 100 이하인가요?"]),
            Milestone(title: "티켓 확보", description: "입장권 구매", successCriteria: ["마스터스 티켓 추첨에 응모했나요?", "연습 라운드 티켓을 시도했나요?", "티켓을 확보했나요?"]),
            Milestone(title: "오거스타 방문", description: "대회 관람", successCriteria: ["조지아주 여행을 계획했나요?", "아멘 코너를 관람했나요?", "그린 재킷 시상을 봤나요?"])
        ],
        .보스턴_마라톤_완주하기: [
            Milestone(title: "기록 달성", description: "BQ(자격 기록) 충족", successCriteria: ["나이별 자격 기록을 알고 있나요?", "자격 기록을 달성했나요?", "공인 대회 기록이 있나요?"]),
            Milestone(title: "등록 완료", description: "대회 신청", successCriteria: ["BAA 사이트에서 등록했나요?", "등록비를 납부했나요?", "숙소를 예약했나요?"]),
            Milestone(title: "완주 준비", description: "레이스 전략", successCriteria: ["하트브레이크 힐을 연습했나요?", "기상 조건을 확인했나요?", "완주하여 유니콘 메달을 받았나요?"])
        ],
        .뉴욕_마라톤_완주하기: [
            Milestone(title: "참가 자격", description: "추첨 또는 기록", successCriteria: ["추첨에 응모했나요?", "자선 단체를 통한 참가를 고려했나요?", "참가 자격을 얻었나요?"]),
            Milestone(title: "대회 준비", description: "코스 분석", successCriteria: ["5개 보로우 코스를 파악했나요?", "다리 오르막을 연습했나요?", "뉴욕 여행을 계획했나요?"]),
            Milestone(title: "완주 달성", description: "센트럴파크 피니시", successCriteria: ["레이스 전략을 세웠나요?", "군중 응원을 즐겼나요?", "센트럴파크에서 피니시했나요?"])
        ],
        .도쿄_마라톤_완주하기: [
            Milestone(title: "참가 추첨", description: "도쿄 마라톤 등록", successCriteria: ["도쿄 마라톤 추첨에 응모했나요?", "일반 참가 또는 자선을 선택했나요?", "참가 자격을 얻었나요?"]),
            Milestone(title: "일본 여행", description: "현지 준비", successCriteria: ["항공/숙소를 예약했나요?", "엑스포 일정을 확인했나요?", "코스를 파악했나요?"]),
            Milestone(title: "완주 달성", description: "도쿄역 피니시", successCriteria: ["레이스 페이스를 계획했나요?", "일본식 응원을 경험했나요?", "완주 메달을 받았나요?"])
        ],
        .런던_마라톤_완주하기: [
            Milestone(title: "참가 신청", description: "발롯 응모", successCriteria: ["런던 마라톤 발롯에 응모했나요?", "자선 참가를 고려했나요?", "참가 자격을 얻었나요?"]),
            Milestone(title: "영국 방문", description: "현지 준비", successCriteria: ["런던 여행을 계획했나요?", "엑스포 참가를 예정했나요?", "코스를 파악했나요?"]),
            Milestone(title: "완주 달성", description: "버킹엄 궁전 피니시", successCriteria: ["명소를 지나며 달렸나요?", "영국식 응원을 경험했나요?", "더 몰에서 피니시했나요?"])
        ],
        .베를린_마라톤_완주하기: [
            Milestone(title: "참가 추첨", description: "베를린 마라톤 등록", successCriteria: ["추첨에 응모했나요?", "참가 자격을 얻었나요?", "등록을 완료했나요?"]),
            Milestone(title: "기록 도전", description: "평평한 코스 활용", successCriteria: ["개인 최고 기록을 목표로 하나요?", "페이스 전략을 세웠나요?", "독일 여행을 계획했나요?"]),
            Milestone(title: "완주 달성", description: "브란덴부르크 문 피니시", successCriteria: ["세계 기록 코스를 달렸나요?", "브란덴부르크 문을 통과했나요?", "기록 달성에 성공했나요?"])
        ],
        .시카고_마라톤_완주하기: [
            Milestone(title: "참가 신청", description: "시카고 마라톤 등록", successCriteria: ["추첨에 응모했나요?", "참가 자격을 얻었나요?", "등록을 완료했나요?"]),
            Milestone(title: "대회 준비", description: "코스 분석", successCriteria: ["평탄한 코스를 파악했나요?", "시카고 여행을 계획했나요?", "날씨 변동에 대비했나요?"]),
            Milestone(title: "완주 달성", description: "그랜트 파크 피니시", successCriteria: ["레이스 전략을 실행했나요?", "시카고 스카이라인을 즐겼나요?", "메달을 받았나요?"])
        ],
        ._6대_메이저_마라톤_완주하기: [
            Milestone(title: "첫 메이저 완주", description: "1개 대회 완주", successCriteria: ["어떤 대회부터 시작할지 정했나요?", "첫 메이저를 완주했나요?", "식스 스타 프로그램에 등록했나요?"]),
            Milestone(title: "3개 메이저 완주", description: "중간 목표", successCriteria: ["2번째 메이저를 완주했나요?", "3번째 메이저를 완주했나요?", "기록을 향상시키고 있나요?"]),
            Milestone(title: "식스 스타 달성", description: "6개 모두 완주", successCriteria: ["6개 메이저를 모두 완주했나요?", "식스 스타 메달을 받았나요?", "모든 메달을 모았나요?"])
        ],
        .스파르탄_레이스하기: [
            Milestone(title: "기초 체력", description: "OCR 준비", successCriteria: ["5km 달리기가 가능한가요?", "기본 근력 운동을 하나요?", "장애물 훈련을 시작했나요?"]),
            Milestone(title: "장애물 훈련", description: "기술 습득", successCriteria: ["로프 오르기가 가능한가요?", "월 넘기가 가능한가요?", "버피를 잘 하나요?"]),
            Milestone(title: "대회 출전", description: "스프린트/슈퍼", successCriteria: ["대회에 등록했나요?", "적절한 복장/신발을 준비했나요?", "완주했나요?"])
        ],
        .터프머더_완주하기: [
            Milestone(title: "체력 준비", description: "팀 기반 훈련", successCriteria: ["지구력 훈련을 하나요?", "상체 근력이 충분한가요?", "팀을 구성했나요?"]),
            Milestone(title: "장애물 적응", description: "특수 장애물 준비", successCriteria: ["냉수 적응 훈련을 했나요?", "전기 충격에 대한 마음의 준비가 됐나요?", "높은 곳 적응이 되나요?"]),
            Milestone(title: "대회 완주", description: "팀과 함께", successCriteria: ["팀워크를 발휘했나요?", "모든 장애물을 통과했나요?", "머더 머드를 완주했나요?"])
        ],
        .워리어_대시하기: [
            Milestone(title: "기초 체력", description: "5km 달리기", successCriteria: ["5km 달리기가 가능한가요?", "기본 장애물을 넘을 수 있나요?", "진흙탕에서 뛸 준비가 됐나요?"]),
            Milestone(title: "장애물 연습", description: "기본 장애물", successCriteria: ["벽 오르기를 연습했나요?", "로프/네트 장애물을 연습했나요?", "물 장애물에 익숙한가요?"]),
            Milestone(title: "대회 완주", description: "전사 도전", successCriteria: ["대회에 등록했나요?", "팀/개인으로 참가하나요?", "완주하고 맥주를 즐겼나요?"])
        ],
        .크로스핏_대회_출전하기: [
            Milestone(title: "크로스핏 시작", description: "기본 동작 습득", successCriteria: ["크로스핏 박스에 등록했나요?", "기본 무브먼트를 익혔나요?", "WOD에 참여하나요?"]),
            Milestone(title: "실력 향상", description: "RX 수준 도달", successCriteria: ["RX 무게로 WOD를 할 수 있나요?", "올림픽 리프팅이 가능한가요?", "더블언더가 가능한가요?"]),
            Milestone(title: "대회 출전", description: "로컬/오픈 대회", successCriteria: ["로컬 대회에 등록했나요?", "크로스핏 오픈에 참가했나요?", "대회 경험을 쌓았나요?"])
        ],
        .보디빌딩_대회_출전하기: [
            Milestone(title: "근육 만들기", description: "벌크업 기간", successCriteria: ["체계적인 웨이트 훈련을 하나요?", "단백질 섭취를 관리하나요?", "충분한 근육량이 있나요?"]),
            Milestone(title: "다이어트", description: "커팅 기간", successCriteria: ["체지방 감량을 시작했나요?", "근손실 없이 커팅하나요?", "무대 체지방률에 도달했나요?"]),
            Milestone(title: "대회 준비", description: "포징/태닝", successCriteria: ["포징을 연습했나요?", "대회 태닝을 했나요?", "대회에 등록하고 출전했나요?"])
        ],
        .파워리프팅_대회_출전하기: [
            Milestone(title: "3대 운동", description: "기본기 완성", successCriteria: ["스쿼트/벤치/데드 자세가 정확한가요?", "총합 기록을 알고 있나요?", "안전하게 운동하나요?"]),
            Milestone(title: "기록 향상", description: "훈련 프로그램", successCriteria: ["주기화 프로그램을 따르나요?", "개인 최고 기록을 경신하나요?", "약점 보완 훈련을 하나요?"]),
            Milestone(title: "대회 출전", description: "공식 대회", successCriteria: ["대회 규정을 숙지했나요?", "체급을 맞췄나요?", "대회에서 기록을 세웠나요?"])
        ],
        .역도_대회_출전하기: [
            Milestone(title: "올림픽 리프팅", description: "인상/용상 습득", successCriteria: ["인상(스내치) 자세가 되나요?", "용상(클린앤저크) 자세가 되나요?", "코치에게 배우고 있나요?"]),
            Milestone(title: "기술 향상", description: "중량 증가", successCriteria: ["기술이 안정적인가요?", "점진적으로 중량을 올리나요?", "경기 규정을 알고 있나요?"]),
            Milestone(title: "대회 출전", description: "역도 대회", successCriteria: ["대한역도연맹 대회에 등록했나요?", "체급을 맞췄나요?", "성공적으로 기록을 세웠나요?"])
        ],
        .격투기_대회_출전하기: [
            Milestone(title: "격투기 훈련", description: "기본기 습득", successCriteria: ["격투기 체육관에 등록했나요?", "스탠딩/그라운드를 배우나요?", "스파링 경험이 있나요?"]),
            Milestone(title: "실전 경험", description: "스파링 훈련", successCriteria: ["정기적으로 스파링하나요?", "체력과 멘탈이 준비됐나요?", "부상 관리를 하나요?"]),
            Milestone(title: "대회 출전", description: "아마추어 대회", successCriteria: ["아마추어 대회에 등록했나요?", "체급을 맞췄나요?", "경기에 출전했나요?"])
        ],
        .복싱_시합하기: [
            Milestone(title: "복싱 기초", description: "기본기 습득", successCriteria: ["복싱 체육관에 등록했나요?", "잽/스트레이트/훅을 배웠나요?", "풋워크가 되나요?"]),
            Milestone(title: "스파링 훈련", description: "실전 경험", successCriteria: ["스파링을 시작했나요?", "방어 기술이 있나요?", "체력이 충분한가요?"]),
            Milestone(title: "시합 출전", description: "아마추어 시합", successCriteria: ["아마추어 대회에 등록했나요?", "체급 검사를 통과했나요?", "링 위에서 시합했나요?"])
        ],
        .태권도_사범_되기: [
            Milestone(title: "유단자 달성", description: "검은띠 취득", successCriteria: ["태권도를 수련하고 있나요?", "1단 이상 취득했나요?", "품새/겨루기가 가능한가요?"]),
            Milestone(title: "고단자 승급", description: "4단 이상", successCriteria: ["3단 이상인가요?", "지도 경험이 있나요?", "심사 자격이 되나요?"]),
            Milestone(title: "사범 자격", description: "지도자 등록", successCriteria: ["4단 이상인가요?", "지도자 연수를 이수했나요?", "사범 자격증을 취득했나요?"])
        ],
        .유도_검은띠_따기: [
            Milestone(title: "유도 입문", description: "기본기 습득", successCriteria: ["유도장에 등록했나요?", "낙법을 익혔나요?", "기본 기술을 배우나요?"]),
            Milestone(title: "유급자 과정", description: "색띠 승급", successCriteria: ["승급 심사에 합격했나요?", "갈색띠까지 승급했나요?", "대련이 가능한가요?"]),
            Milestone(title: "검은띠 취득", description: "1단 승단", successCriteria: ["승단 심사 자격이 되나요?", "기술과 품새를 완성했나요?", "검은띠를 땄나요?"])
        ],
        .합기도_사범_되기: [
            Milestone(title: "합기도 수련", description: "기본기 습득", successCriteria: ["합기도장에 등록했나요?", "기본 기술을 익혔나요?", "1단 이상인가요?"]),
            Milestone(title: "고단자 승급", description: "4단 이상", successCriteria: ["꾸준히 수련하나요?", "후배 지도 경험이 있나요?", "4단 이상인가요?"]),
            Milestone(title: "사범 자격", description: "지도자 인증", successCriteria: ["지도자 연수를 받았나요?", "도장 운영 계획이 있나요?", "사범 자격을 취득했나요?"])
        ],
        .검도_단증_따기: [
            Milestone(title: "검도 입문", description: "기본기 습득", successCriteria: ["검도장에 등록했나요?", "기본 자세와 타격을 배웠나요?", "호구를 착용하나요?"]),
            Milestone(title: "급수 취득", description: "유급자 과정", successCriteria: ["승급 심사에 합격했나요?", "1급까지 승급했나요?", "대련이 가능한가요?"]),
            Milestone(title: "단증 취득", description: "승단 심사", successCriteria: ["승단 심사 자격이 되나요?", "형과 대련 준비가 됐나요?", "단증을 취득했나요?"])
        ],
        .주짓수_검은띠_따기: [
            Milestone(title: "주짓수 입문", description: "기본기 습득", successCriteria: ["주짓수 체육관에 등록했나요?", "기본 가드/패스를 배웠나요?", "롤링을 하나요?"]),
            Milestone(title: "색띠 승급", description: "블루~브라운", successCriteria: ["블루벨트 이상인가요?", "꾸준히 훈련하나요?", "대회 경험이 있나요?"]),
            Milestone(title: "검은띠 달성", description: "블랙벨트", successCriteria: ["브라운벨트인가요?", "10년 이상 수련했나요?", "검은띠를 땄나요?"])
        ],
        .무에타이_수련하기: [
            Milestone(title: "무에타이 입문", description: "기본기 습득", successCriteria: ["무에타이 체육관에 등록했나요?", "8체 공격법을 배웠나요?", "패드 훈련을 하나요?"]),
            Milestone(title: "실전 훈련", description: "스파링/클린치", successCriteria: ["스파링을 시작했나요?", "클린치 기술이 되나요?", "체력이 향상됐나요?"]),
            Milestone(title: "수련 완성", description: "고급 기술", successCriteria: ["콤비네이션이 자연스러운가요?", "링 경험이 있나요?", "원하는 수준에 도달했나요?"])
        ],
        .크라브_마가_자격증_취득하기: [
            Milestone(title: "크라브마가 입문", description: "기본기 습득", successCriteria: ["공인 센터에 등록했나요?", "기본 타격/방어를 배웠나요?", "시나리오 훈련을 하나요?"]),
            Milestone(title: "레벨 향상", description: "중급 과정", successCriteria: ["P1-P3 과정을 이수했나요?", "무기 대응을 배웠나요?", "스트레스 상황 훈련을 하나요?"]),
            Milestone(title: "자격증 취득", description: "인스트럭터", successCriteria: ["G레벨 이상인가요?", "인스트럭터 과정을 수료했나요?", "자격증을 취득했나요?"])
        ],
        .서핑_대회_출전하기: [
            Milestone(title: "서핑 기초", description: "파도 타기", successCriteria: ["서핑을 배웠나요?", "혼자 파도를 탈 수 있나요?", "다양한 조건에서 서핑하나요?"]),
            Milestone(title: "기술 향상", description: "턴/컷백", successCriteria: ["바텀턴이 가능한가요?", "컷백을 연습하나요?", "일관성 있게 라이딩하나요?"]),
            Milestone(title: "대회 출전", description: "로컬 대회", successCriteria: ["서핑 협회에 등록했나요?", "대회 규정을 알고 있나요?", "대회에 출전했나요?"])
        ],
        .스케이트보드_대회_출전하기: [
            Milestone(title: "스케이트보드 입문", description: "기본기 습득", successCriteria: ["보드 컨트롤이 되나요?", "올리가 가능한가요?", "킥플립을 연습하나요?"]),
            Milestone(title: "스팟 연습", description: "스트릿/파크", successCriteria: ["스케이트 파크에서 연습하나요?", "다양한 트릭이 가능한가요?", "영상을 촬영하나요?"]),
            Milestone(title: "대회 출전", description: "스케이트 대회", successCriteria: ["대회 정보를 확인했나요?", "루틴을 준비했나요?", "대회에 출전했나요?"])
        ],
        .BMX_대회_출전하기: [
            Milestone(title: "BMX 입문", description: "기본기 습득", successCriteria: ["BMX 자전거가 있나요?", "기본 밸런스가 되나요?", "점프를 연습하나요?"]),
            Milestone(title: "트릭 연습", description: "기술 향상", successCriteria: ["180/360이 가능한가요?", "트릭 콤보를 연습하나요?", "파크에서 정기적으로 연습하나요?"]),
            Milestone(title: "대회 출전", description: "BMX 대회", successCriteria: ["레이스/프리스타일 중 선택했나요?", "대회에 등록했나요?", "대회에 출전했나요?"])
        ],
        .산악자전거_대회_출전하기: [
            Milestone(title: "MTB 입문", description: "기본기 습득", successCriteria: ["산악자전거가 있나요?", "오프로드 주행이 가능한가요?", "기본 기술을 익혔나요?"]),
            Milestone(title: "트레일 경험", description: "다양한 코스", successCriteria: ["다양한 트레일을 경험했나요?", "언덕 오르내림이 능숙한가요?", "정비를 할 수 있나요?"]),
            Milestone(title: "대회 출전", description: "MTB 대회", successCriteria: ["대회 종목을 선택했나요?", "대회에 등록했나요?", "완주했나요?"])
        ],
        .철인_3종_70_3하기: [
            Milestone(title: "기초 완성", description: "올림픽 코스 완주", successCriteria: ["올림픽 코스 철인3종을 완주했나요?", "수영 1.9km가 가능한가요?", "사이클 90km가 가능한가요?"]),
            Milestone(title: "거리 훈련", description: "장거리 적응", successCriteria: ["하프 아이언맨 거리 훈련을 하나요?", "영양 보급 전략이 있나요?", "브릭 훈련을 하나요?"]),
            Milestone(title: "70.3 완주", description: "대회 출전", successCriteria: ["대회에 등록했나요?", "장비 점검을 완료했나요?", "70.3을 완주했나요?"])
        ],
        .철인_3종_풀코스하기: [
            Milestone(title: "70.3 완주", description: "하프 아이언맨", successCriteria: ["70.3을 완주했나요?", "장거리 훈련에 익숙한가요?", "부상 없이 훈련하나요?"]),
            Milestone(title: "풀코스 훈련", description: "140.6 준비", successCriteria: ["수영 3.8km가 가능한가요?", "사이클 180km가 가능한가요?", "마라톤 완주가 가능한가요?"]),
            Milestone(title: "아이언맨 완주", description: "140.6 완주", successCriteria: ["풀코스 대회에 등록했나요?", "17시간 내 완주 전략이 있나요?", "아이언맨이 됐나요?"])
        ],
        .듀애슬론_완주하기: [
            Milestone(title: "달리기 체력", description: "10km 달리기", successCriteria: ["10km를 50분 내 뛸 수 있나요?", "사이클 후 달리기가 가능한가요?", "브릭 훈련을 하나요?"]),
            Milestone(title: "사이클 훈련", description: "40km 사이클", successCriteria: ["40km 사이클이 가능한가요?", "전환 연습을 했나요?", "페이스 분배를 계획했나요?"]),
            Milestone(title: "대회 완주", description: "듀애슬론 출전", successCriteria: ["대회에 등록했나요?", "런-바이크-런 순서에 익숙한가요?", "완주했나요?"])
        ],
        .아쿠아슬론_완주하기: [
            Milestone(title: "수영 훈련", description: "1km 완영", successCriteria: ["오픈워터 수영 경험이 있나요?", "1km를 25분 내 수영 가능한가요?", "웻수트에 익숙한가요?"]),
            Milestone(title: "달리기 훈련", description: "5-10km 달리기", successCriteria: ["수영 후 바로 달릴 수 있나요?", "전환 연습을 했나요?", "지구력이 충분한가요?"]),
            Milestone(title: "대회 완주", description: "아쿠아슬론 출전", successCriteria: ["대회에 등록했나요?", "수영-런 전환이 익숙한가요?", "완주했나요?"])
        ],
        .스윔런_완주하기: [
            Milestone(title: "수영/달리기 체력", description: "기초 체력", successCriteria: ["수영과 달리기 모두 가능한가요?", "자연 환경에서 수영해봤나요?", "트레일 러닝 경험이 있나요?"]),
            Milestone(title: "장비 준비", description: "스윔런 장비", successCriteria: ["스윔런용 웻수트가 있나요?", "패들/풀부이를 준비했나요?", "러닝화를 신고 수영해봤나요?"]),
            Milestone(title: "대회 완주", description: "스윔런 출전", successCriteria: ["파트너를 구했나요?", "대회에 등록했나요?", "완주했나요?"])
        ],
        .울트라_트레일_완주하기: [
            Milestone(title: "트레일 러닝", description: "산악 달리기 적응", successCriteria: ["트레일 러닝 경험이 있나요?", "오르막/내리막이 익숙한가요?", "트레일화가 있나요?"]),
            Milestone(title: "장거리 훈련", description: "50km 이상", successCriteria: ["50km 트레일을 완주했나요?", "야간 주행 경험이 있나요?", "영양/수분 전략이 있나요?"]),
            Milestone(title: "울트라 완주", description: "100km 이상", successCriteria: ["100km 대회에 등록했나요?", "고도 변화에 적응했나요?", "완주했나요?"])
        ],
        .UTMB_완주하기: [
            Milestone(title: "ITRA 포인트", description: "참가 자격", successCriteria: ["ITRA 포인트 시스템을 알고 있나요?", "자격 포인트를 모았나요?", "참가 추첨에 응모했나요?"]),
            Milestone(title: "고산 훈련", description: "알프스 준비", successCriteria: ["고산 환경 적응이 됐나요?", "총 누적 고도 1만m 훈련을 했나요?", "장비를 점검했나요?"]),
            Milestone(title: "UTMB 완주", description: "171km 도전", successCriteria: ["샤모니에서 출발했나요?", "48시간 내 완주 전략이 있나요?", "완주했나요?"])
        ],
        .서부_100마일하기: [
            Milestone(title: "울트라 경험", description: "100km+ 완주", successCriteria: ["100km 이상 완주 경험이 있나요?", "고온/저온에 적응했나요?", "참가 자격을 확인했나요?"]),
            Milestone(title: "참가 추첨", description: "WS100 등록", successCriteria: ["추첨에 응모했나요?", "참가 자격을 얻었나요?", "코스를 분석했나요?"]),
            Milestone(title: "완주 도전", description: "100마일", successCriteria: ["30시간 내 완주 전략이 있나요?", "크루/페이서를 구했나요?", "완주했나요?"])
        ],
        .배드워터_135하기: [
            Milestone(title: "극한 환경 적응", description: "고온 훈련", successCriteria: ["50도 이상 더위에 적응했나요?", "100마일 완주 경험이 있나요?", "초대장을 받았나요?"]),
            Milestone(title: "크루 구성", description: "서포트 팀", successCriteria: ["경험 있는 크루를 구했나요?", "차량과 보급품을 준비했나요?", "코스를 답사했나요?"]),
            Milestone(title: "피니시", description: "휘트니 포털", successCriteria: ["데스밸리에서 출발했나요?", "48시간 내 전략이 있나요?", "휘트니 포털에 도착했나요?"])
        ],
        .사하라_사막_레이스하기: [
            Milestone(title: "사막 적응", description: "고온/모래 훈련", successCriteria: ["사막 환경 경험이 있나요?", "자급자족 레이스를 이해했나요?", "MDS 또는 유사 대회를 선택했나요?"]),
            Milestone(title: "장비 준비", description: "필수 장비", successCriteria: ["경량 장비를 준비했나요?", "배낭 무게를 최적화했나요?", "식량 계획을 세웠나요?"]),
            Milestone(title: "사막 완주", description: "250km 도전", successCriteria: ["대회에 등록했나요?", "매일 마라톤 거리를 뛸 준비가 됐나요?", "사하라를 횡단했나요?"])
        ],
        .남극_마라톤_완주하기: [
            Milestone(title: "극한 마라톤 경험", description: "혹한 적응", successCriteria: ["영하 환경에서 달려봤나요?", "풀코스 마라톤 경험이 있나요?", "참가비를 확인했나요?"]),
            Milestone(title: "참가 등록", description: "Antarctic Ice Marathon", successCriteria: ["대회에 등록했나요?", "방한 장비를 준비했나요?", "비행 일정을 확인했나요?"]),
            Milestone(title: "남극 완주", description: "빙하 위 마라톤", successCriteria: ["남극 대륙에 도착했나요?", "극한 추위 속에서 달렸나요?", "완주 메달을 받았나요?"])
        ],
        .에베레스트_마라톤_완주하기: [
            Milestone(title: "고산 적응", description: "고소 훈련", successCriteria: ["고산 트레킹 경험이 있나요?", "고소 적응 방법을 알고 있나요?", "풀코스 마라톤 경험이 있나요?"]),
            Milestone(title: "참가 준비", description: "네팔 여행", successCriteria: ["대회에 등록했나요?", "네팔 여행을 계획했나요?", "베이스캠프까지 이동 일정을 확인했나요?"]),
            Milestone(title: "에베레스트 완주", description: "5364m 출발", successCriteria: ["베이스캠프에 도착했나요?", "고소 적응을 완료했나요?", "내리막 마라톤을 완주했나요?"])
        ],
        .만리장성_마라톤_완주하기: [
            Milestone(title: "계단 훈련", description: "언덕/계단 적응", successCriteria: ["계단 오르기 훈련을 하나요?", "5000개 이상 계단을 오를 수 있나요?", "풀코스 마라톤 경험이 있나요?"]),
            Milestone(title: "중국 여행", description: "대회 참가", successCriteria: ["대회에 등록했나요?", "중국 비자를 준비했나요?", "베이징 여행을 계획했나요?"]),
            Milestone(title: "장성 완주", description: "역사 속 달리기", successCriteria: ["만리장성 코스를 달렸나요?", "계단을 극복했나요?", "완주 메달을 받았나요?"])
        ],
        .빅서_마라톤_완주하기: [
            Milestone(title: "언덕 훈련", description: "고저차 적응", successCriteria: ["언덕 달리기를 연습하나요?", "풀코스 마라톤 경험이 있나요?", "해안 도로에서 달려봤나요?"]),
            Milestone(title: "참가 등록", description: "Big Sur Marathon", successCriteria: ["대회 추첨에 응모했나요?", "참가 자격을 얻었나요?", "캘리포니아 여행을 계획했나요?"]),
            Milestone(title: "빅서 완주", description: "1번 해안도로", successCriteria: ["빅스비 다리를 건넜나요?", "해안 절경을 즐기며 달렸나요?", "완주했나요?"])
        ],
        .자선_마라톤_10회하기: [
            Milestone(title: "첫 자선 마라톤", description: "기부 달리기", successCriteria: ["자선 마라톤의 의미를 알고 있나요?", "기부처를 선정했나요?", "첫 자선 마라톤을 완주했나요?"]),
            Milestone(title: "5회 달성", description: "꾸준한 참여", successCriteria: ["정기적으로 참가하나요?", "모금 활동을 하나요?", "5회 참가를 달성했나요?"]),
            Milestone(title: "10회 달성", description: "나눔의 완성", successCriteria: ["10회 참가를 달성했나요?", "총 기부 금액을 확인했나요?", "주변에 나눔을 전파했나요?"])
        ],
        .블로그_수익화하기: [
            Milestone(title: "블로그 성장", description: "트래픽 확보", successCriteria: ["일 방문자 1000명 이상인가요?", "콘텐츠를 꾸준히 발행하나요?", "구독자를 확보했나요?"]),
            Milestone(title: "수익 모델 설정", description: "광고/제휴", successCriteria: ["애드센스를 신청했나요?", "제휴 마케팅을 시작했나요?", "스폰서 포스트를 고려했나요?"]),
            Milestone(title: "월 수익 달성", description: "안정적 수익", successCriteria: ["첫 수익이 발생했나요?", "월 수익 목표를 달성했나요?", "수익을 다각화했나요?"])
        ],
        .유튜브_수익화하기: [
            Milestone(title: "채널 성장", description: "구독자 확보", successCriteria: ["구독자 1000명을 달성했나요?", "시청 시간 4000시간을 달성했나요?", "꾸준히 업로드하나요?"]),
            Milestone(title: "파트너 프로그램", description: "YPP 가입", successCriteria: ["YPP에 신청했나요?", "심사를 통과했나요?", "광고 수익이 발생했나요?"]),
            Milestone(title: "수익 다각화", description: "추가 수익원", successCriteria: ["슈퍼챗을 활용하나요?", "멤버십을 개설했나요?", "스폰서십을 유치했나요?"])
        ],
        .팟캐스트_100화하기: [
            Milestone(title: "팟캐스트 시작", description: "첫 에피소드", successCriteria: ["주제를 정했나요?", "녹음 장비를 구비했나요?", "플랫폼에 등록했나요?"]),
            Milestone(title: "30화 달성", description: "꾸준한 발행", successCriteria: ["정기적으로 발행하나요?", "청취자가 늘고 있나요?", "30화를 달성했나요?"]),
            Milestone(title: "100화 달성", description: "팟캐스터", successCriteria: ["100화를 발행했나요?", "수익화를 시작했나요?", "커뮤니티를 형성했나요?"])
        ],
        .강연_100회하기: [
            Milestone(title: "강연 시작", description: "첫 강연", successCriteria: ["전문 분야가 있나요?", "첫 강연을 했나요?", "강연 자료를 만들었나요?"]),
            Milestone(title: "30회 달성", description: "경험 축적", successCriteria: ["다양한 주제로 강연하나요?", "피드백을 반영하나요?", "30회를 달성했나요?"]),
            Milestone(title: "100회 달성", description: "전문 강연자", successCriteria: ["100회를 달성했나요?", "유료 강연을 하나요?", "강연 요청이 들어오나요?"])
        ],
        .워크숍_개최하기: [
            Milestone(title: "워크숍 기획", description: "주제 및 대상", successCriteria: ["워크숍 주제를 정했나요?", "대상 참가자를 정의했나요?", "커리큘럼을 만들었나요?"]),
            Milestone(title: "준비 및 홍보", description: "장소/참가자", successCriteria: ["장소를 섭외했나요?", "참가비를 책정했나요?", "홍보를 시작했나요?"]),
            Milestone(title: "워크숍 진행", description: "성공적 개최", successCriteria: ["참가자를 모집했나요?", "워크숍을 진행했나요?", "피드백을 수집했나요?"])
        ],
        .컨퍼런스_발표하기: [
            Milestone(title: "발표 주제 선정", description: "전문 분야", successCriteria: ["발표할 주제가 있나요?", "발표 경험이 있나요?", "발표 자료를 준비했나요?"]),
            Milestone(title: "컨퍼런스 지원", description: "CFP 제출", successCriteria: ["목표 컨퍼런스를 선정했나요?", "CFP(발표 제안)를 제출했나요?", "발표자로 선정됐나요?"]),
            Milestone(title: "발표 완료", description: "무대에 서기", successCriteria: ["발표 리허설을 했나요?", "컨퍼런스에서 발표했나요?", "질의응답을 완료했나요?"])
        ],
        .TED_강연하기: [
            Milestone(title: "아이디어 개발", description: "Worth Spreading", successCriteria: ["전파할 가치가 있는 아이디어가 있나요?", "18분 내로 전달할 수 있나요?", "스토리텔링을 연습하나요?"]),
            Milestone(title: "TEDx 지원", description: "로컬 TEDx", successCriteria: ["가까운 TEDx 행사를 찾았나요?", "스피커로 지원했나요?", "오디션을 통과했나요?"]),
            Milestone(title: "TED 강연", description: "무대에 서기", successCriteria: ["강연을 완벽히 준비했나요?", "TED(x) 무대에서 발표했나요?", "영상이 공유됐나요?"])
        ],
        .베스트셀러_작가하기: [
            Milestone(title: "원고 완성", description: "책 집필", successCriteria: ["책 주제를 정했나요?", "원고를 완성했나요?", "퇴고를 완료했나요?"]),
            Milestone(title: "출판 진행", description: "출판사/자가출판", successCriteria: ["출판 방식을 결정했나요?", "출판 계약을 했나요?", "책이 출간됐나요?"]),
            Milestone(title: "베스트셀러", description: "판매 순위", successCriteria: ["마케팅을 진행했나요?", "서점 순위에 올랐나요?", "베스트셀러에 등극했나요?"])
        ],
        .상_수상하기: [
            Milestone(title: "분야 선정", description: "목표 설정", successCriteria: ["어떤 분야에서 수상을 목표로 하나요?", "관련 상을 조사했나요?", "지원 자격을 확인했나요?"]),
            Milestone(title: "성과 만들기", description: "실적 쌓기", successCriteria: ["해당 분야에서 성과를 내고 있나요?", "포트폴리오를 준비했나요?", "추천인을 확보했나요?"]),
            Milestone(title: "수상 달성", description: "상 받기", successCriteria: ["공모/추천에 응모했나요?", "심사를 통과했나요?", "수상했나요?"])
        ],
        .특허_등록하기: [
            Milestone(title: "발명 아이디어", description: "특허 대상 발굴", successCriteria: ["새로운 아이디어가 있나요?", "기존 특허를 검색했나요?", "신규성이 있나요?"]),
            Milestone(title: "명세서 작성", description: "특허 출원", successCriteria: ["청구 범위를 작성했나요?", "도면을 준비했나요?", "변리사와 상담했나요?"]),
            Milestone(title: "특허 등록", description: "심사 통과", successCriteria: ["특허청에 출원했나요?", "심사를 통과했나요?", "특허 등록증을 받았나요?"])
        ],
        .기네스북_등재하기: [
            Milestone(title: "기록 선정", description: "도전할 기록", successCriteria: ["도전할 기록을 선정했나요?", "기존 기록을 확인했나요?", "달성 가능성이 있나요?"]),
            Milestone(title: "신청 및 준비", description: "기네스 신청", successCriteria: ["기네스 공식 사이트에서 신청했나요?", "증거 자료 요건을 확인했나요?", "증인을 확보했나요?"]),
            Milestone(title: "기록 달성", description: "기네스북 등재", successCriteria: ["기록 도전을 실행했나요?", "증거 자료를 제출했나요?", "기네스북에 등재됐나요?"])
        ]
    ]
}

