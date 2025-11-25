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
        ]
    ]
}

