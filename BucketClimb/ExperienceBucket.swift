//
// CategoryBuckets.swift
// BucketClimb
//
// 카테고리별로 관리되는 버킷리스트 항목 enum
// Auto-generated
//

import Foundation

// MARK: - Category-Specific Bucket Enums

enum ExperienceBucket: String, Codable, CaseIterable {
    case 스카이다이빙_체험하기 = "스카이다이빙 체험하기"
    case 번지점프_도전하기 = "번지점프 도전하기"
    case 스쿠버다이빙_자격증_취득하기 = "스쿠버다이빙 자격증 취득하기"
    case 패러글라이딩_체험하기 = "패러글라이딩 체험하기"
    case 헬기_조종_체험하기 = "헬기 조종 체험하기"
    case 열기구_타고_하늘_여행하기 = "열기구 타고 하늘 여행하기"
    case 빙벽_등반_체험하기 = "빙벽 등반 체험하기"
    case 집라인_타보기 = "집라인 타보기"
    case 래프팅_도전하기 = "래프팅 도전하기"
    case 서핑_배우기 = "서핑 배우기"
    case 승마_배우기 = "승마 배우기"
    case 요트_항해_체험하기 = "요트 항해 체험하기"
    case 캠핑카로_한달_살기 = "캠핑카로 한달 살기"
    case 오토바이_라이센스_취득하기 = "오토바이 라이센스 취득하기"
    case 와인_테이스팅_투어하기 = "와인 테이스팅 투어하기"
    case 미슐랭_3스타_레스토랑_방문하기 = "미슐랭 3스타 레스토랑 방문하기"
    case 오페라_공연_관람하기 = "오페라 공연 관람하기"
    case 뮤지컬_브로드웨이에서_보기 = "뮤지컬 브로드웨이에서 보기"
    case 록_콘서트_최전방_관람하기 = "록 콘서트 최전방 관람하기"
    case 오로라_사진_촬영하기 = "오로라 사진 촬영하기"
    case 세계_일주_크루즈_타기 = "세계 일주 크루즈 타기"
    case 북극_탐험하기 = "북극 탐험하기"
    case 남극_펭귄과_만나기 = "남극 펭귄과 만나기"
    case 사막에서_별_관측하기 = "사막에서 별 관측하기"
    case 동굴_탐험하기 = "동굴 탐험하기"
    case 폭포_뒤에서_사진찍기 = "폭포 뒤에서 사진찍기"
    case 화산_분화구_보기 = "화산 분화구 보기"
    case 온천_투어하기 = "온천 투어하기"
    case 빙하_위_걷기 = "빙하 위 걷기"
    case 사파리_차량_운전하기 = "사파리 차량 운전하기"
    case 코끼리_목욕시키기 = "코끼리 목욕시키기"
    case 상어와_다이빙하기 = "상어와 다이빙하기"
    case 돌고래와_수영하기 = "돌고래와 수영하기"
    case 고래_관측하기 = "고래 관측하기"
    case 카약_원정하기 = "카약 원정하기"
    case 카누_타기 = "카누 타기"
    case 윈드서핑_배우기 = "윈드서핑 배우기"
    case 카이트서핑_도전하기 = "카이트서핑 도전하기"
    case 제트스키_타기 = "제트스키 타기"
    case 파라세일링하기 = "파라세일링하기"
    case 수상스키_타기 = "수상스키 타기"
    case 웨이크보드하기 = "웨이크보드하기"
    case 플라이보드하기 = "플라이보드하기"
    case 세일링_요트_조종하기 = "세일링 요트 조종하기"
    case 크루즈_디너쇼하기 = "크루즈 디너쇼하기"
    case 헬리콥터_투어하기 = "헬리콥터 투어하기"
    case 소형_비행기_조종하기 = "소형 비행기 조종하기"
    case 글라이더_체험하기 = "글라이더 체험하기"
    case 행글라이더하기 = "행글라이더하기"
    case 실내_스카이다이빙하기 = "실내 스카이다이빙하기"
    case 암벽_등반하기 = "암벽 등반하기"
    case 볼더링하기 = "볼더링하기"
    case 클라이밍_자격증_취득하기 = "클라이밍 자격증 취득하기"
    case 트레일_러닝하기 = "트레일 러닝하기"
    case 크로스컨트리_스키_타기 = "크로스컨트리 스키 타기"
    case 스노보드_배우기 = "스노보드 배우기"
    case 스키_점프하기 = "스키 점프하기"
    case 아이스_스케이팅하기 = "아이스 스케이팅하기"
    case 아이스하키_관람하기 = "아이스하키 관람하기"
    case 컬링_체험하기 = "컬링 체험하기"
    case 개썰매_타기 = "개썰매 타기"
    case 스노모빌하기 = "스노모빌하기"
    case 아이스_피싱하기 = "아이스 피싱하기"
    case 북유럽_사우나하기 = "북유럽 사우나하기"
    case 터키식_목욕탕하기 = "터키식 목욕탕하기"
    case 일본_료칸_체험하기 = "일본 료칸 체험하기"
    case 한옥_스테이하기 = "한옥 스테이하기"
    case 사막_캠핑하기 = "사막 캠핑하기"
    case 글램핑하기 = "글램핑하기"
    case 트리하우스_숙박하기 = "트리하우스 숙박하기"
    case 동굴_호텔하기 = "동굴 호텔하기"
    case 얼음_호텔하기 = "얼음 호텔하기"
    case 수중_호텔하기 = "수중 호텔하기"
    case 등대_숙박하기 = "등대 숙박하기"
    case 성_호텔_숙박하기 = "성 호텔 숙박하기"
    case 기차_호텔하기 = "기차 호텔하기"
    case 비행기_호텔하기 = "비행기 호텔하기"
    case 럭셔리_사파리_롯지하기 = "럭셔리 사파리 롯지하기"
    case 오버워터_방갈로하기 = "오버워터 방갈로하기"
    case 짚라인_캐노피_투어하기 = "짚라인 캐노피 투어하기"
    case ATV_오프로드하기 = "ATV 오프로드하기"
    case _4륜_사막_투어하기 = "4륜 사막 투어하기"
    case 스쿠터_여행하기 = "스쿠터 여행하기"
    case 자전거_국토_횡단하기 = "자전거 국토 횡단하기"
    case 오토바이_투어하기 = "오토바이 투어하기"
    case 클래식카_드라이브하기 = "클래식카 드라이브하기"
    case 슈퍼카_체험하기 = "슈퍼카 체험하기"
    case F1_관람하기 = "F1 관람하기"
    case NASCAR_체험하기 = "NASCAR 체험하기"
    case 카트_레이싱하기 = "카트 레이싱하기"
    case 드리프트_체험하기 = "드리프트 체험하기"
    case 오프로드_랠리하기 = "오프로드 랠리하기"
    case 트럭_운전하기 = "트럭 운전하기"
    case 탱크_운전하기 = "탱크 운전하기"
    case 잠수함_탑승하기 = "잠수함 탑승하기"
    case 열기구_축제_가기 = "열기구 축제 가기"
    case 연날리기_축제_가기 = "연날리기 축제 가기"
    case 불꽃놀이_축제_가기 = "불꽃놀이 축제 가기"
    case 와인_만들기_체험하기 = "와인 만들기 체험하기"

    var thumbnail: String {
        Self.metadata[self]!.0
    }

    var backgroundImage: String {
        Self.metadata[self]!.1
    }

    private static let metadata: [Self: (String, String)] = [
        .스카이다이빙_체험하기: ("figure.fall", "skydiving"),
        .번지점프_도전하기: ("arrow.down.circle.fill", "bungee_jump"),
        .스쿠버다이빙_자격증_취득하기: ("figure.pool.swim", "scuba_diving"),
        .패러글라이딩_체험하기: ("airplane.departure", "paragliding"),
        .헬기_조종_체험하기: ("airplane.circle.fill", "helicopter_pilot"),
        .열기구_타고_하늘_여행하기: ("balloon.fill", "hot_air_balloon"),
        .빙벽_등반_체험하기: ("snowflake", "ice_climbing"),
        .집라인_타보기: ("arrow.forward.circle.fill", "zipline"),
        .래프팅_도전하기: ("drop.triangle.fill", "rafting"),
        .서핑_배우기: ("water.waves", "surfing"),
        .승마_배우기: ("figure.equestrian.sports", "horse_riding"),
        .요트_항해_체험하기: ("sailboat.fill", "yacht_sailing"),
        .캠핑카로_한달_살기: ("tent.fill", "camper_van"),
        .오토바이_라이센스_취득하기: ("motorcycle", "motorcycle_license"),
        .와인_테이스팅_투어하기: ("wineglass.fill", "wine_tasting"),
        .미슐랭_3스타_레스토랑_방문하기: ("fork.knife", "michelin_restaurant"),
        .오페라_공연_관람하기: ("theatermasks.fill", "opera_house"),
        .뮤지컬_브로드웨이에서_보기: ("music.note", "broadway_musical"),
        .록_콘서트_최전방_관람하기: ("music.mic", "rock_concert"),
        .오로라_사진_촬영하기: ("camera.fill", "aurora_photography"),
        .세계_일주_크루즈_타기: ("ferry.fill", "world_cruise"),
        .북극_탐험하기: ("snowflake", "arctic_exploration"),
        .남극_펭귄과_만나기: ("figure.walk", "antarctica_penguin"),
        .사막에서_별_관측하기: ("sparkles", "desert_stars"),
        .동굴_탐험하기: ("mountain.2.fill", "cave_exploration"),
        .폭포_뒤에서_사진찍기: ("drop.fill", "waterfall_behind"),
        .화산_분화구_보기: ("flame.fill", "volcano_crater"),
        .온천_투어하기: ("drop.circle.fill", "hot_spring"),
        .빙하_위_걷기: ("snowflake", "glacier_walk"),
        .사파리_차량_운전하기: ("car.fill", "safari_driving"),
        .코끼리_목욕시키기: ("drop.fill", "elephant_bath"),
        .상어와_다이빙하기: ("fish.fill", "shark_diving"),
        .돌고래와_수영하기: ("figure.pool.swim", "dolphin_swim"),
        .고래_관측하기: ("fish.circle.fill", "whale_watching"),
        .카약_원정하기: ("sailboat.fill", "kayak_expedition"),
        .카누_타기: ("figure.outdoor.cycle", "canoe_ride"),
        .윈드서핑_배우기: ("wind", "windsurfing"),
        .카이트서핑_도전하기: ("wind", "kitesurfing"),
        .제트스키_타기: ("water.waves", "jetski"),
        .파라세일링하기: ("parachute.fill", "parasailing"),
        .수상스키_타기: ("figure.pool.swim", "water_skiing"),
        .웨이크보드하기: ("figure.surfing", "wakeboard"),
        .플라이보드하기: ("figure.fall", "flyboard"),
        .세일링_요트_조종하기: ("sailboat.fill", "sailing_yacht"),
        .크루즈_디너쇼하기: ("fork.knife", "cruise_dinner"),
        .헬리콥터_투어하기: ("airplane.circle.fill", "helicopter_tour"),
        .소형_비행기_조종하기: ("airplane", "small_plane"),
        .글라이더_체험하기: ("airplane.departure", "glider"),
        .행글라이더하기: ("figure.fall", "hang_glider"),
        .실내_스카이다이빙하기: ("wind", "indoor_skydive"),
        .암벽_등반하기: ("figure.climbing", "rock_climbing"),
        .볼더링하기: ("figure.climbing", "bouldering"),
        .클라이밍_자격증_취득하기: ("rosette", "climbing_license"),
        .트레일_러닝하기: ("figure.run", "trail_running"),
        .크로스컨트리_스키_타기: ("figure.skiing.crosscountry", "cross_country_ski"),
        .스노보드_배우기: ("snowflake", "snowboard"),
        .스키_점프하기: ("figure.skiing.downhill", "ski_jump"),
        .아이스_스케이팅하기: ("figure.skating", "ice_skating"),
        .아이스하키_관람하기: ("hockey.puck.fill", "ice_hockey"),
        .컬링_체험하기: ("circle.fill", "curling"),
        .개썰매_타기: ("hare.fill", "dog_sledding"),
        .스노모빌하기: ("snowflake", "snowmobile"),
        .아이스_피싱하기: ("fish.fill", "ice_fishing"),
        .북유럽_사우나하기: ("flame.fill", "nordic_sauna"),
        .터키식_목욕탕하기: ("drop.fill", "turkish_bath"),
        .일본_료칸_체험하기: ("building.fill", "ryokan"),
        .한옥_스테이하기: ("house.fill", "hanok_stay"),
        .사막_캠핑하기: ("tent.fill", "desert_camping"),
        .글램핑하기: ("tent.2.fill", "glamping"),
        .트리하우스_숙박하기: ("tree.fill", "treehouse"),
        .동굴_호텔하기: ("mountain.2.fill", "cave_hotel"),
        .얼음_호텔하기: ("snowflake", "ice_hotel"),
        .수중_호텔하기: ("fish.fill", "underwater_hotel"),
        .등대_숙박하기: ("light.beacon.max.fill", "lighthouse_stay"),
        .성_호텔_숙박하기: ("building.2.fill", "castle_hotel"),
        .기차_호텔하기: ("train.side.front.car", "train_hotel"),
        .비행기_호텔하기: ("airplane", "airplane_hotel"),
        .럭셔리_사파리_롯지하기: ("house.lodge.fill", "safari_lodge"),
        .오버워터_방갈로하기: ("house.fill", "overwater_bungalow"),
        .짚라인_캐노피_투어하기: ("arrow.forward.circle.fill", "canopy_tour"),
        .ATV_오프로드하기: ("car.circle.fill", "atv_offroad"),
        ._4륜_사막_투어하기: ("car.fill", "desert_4wd"),
        .스쿠터_여행하기: ("scooter", "scooter_travel"),
        .자전거_국토_횡단하기: ("bicycle", "bike_crossing"),
        .오토바이_투어하기: ("motorcycle", "motorcycle_tour"),
        .클래식카_드라이브하기: ("car.circle.fill", "classic_car"),
        .슈퍼카_체험하기: ("car.2.fill", "supercar"),
        .F1_관람하기: ("car.circle.fill", "f1_watching"),
        .NASCAR_체험하기: ("car.fill", "nascar"),
        .카트_레이싱하기: ("figure.motorsports", "kart_racing"),
        .드리프트_체험하기: ("car.circle.fill", "drift"),
        .오프로드_랠리하기: ("car.fill", "offroad_rally"),
        .트럭_운전하기: ("truck.box.fill", "truck_driving"),
        .탱크_운전하기: ("car.fill", "tank_driving"),
        .잠수함_탑승하기: ("water.waves.and.arrow.down", "submarine"),
        .열기구_축제_가기: ("balloon.fill", "balloon_festival"),
        .연날리기_축제_가기: ("wind", "kite_festival"),
        .불꽃놀이_축제_가기: ("sparkles", "fireworks_festival"),
        .와인_만들기_체험하기: ("wineglass.fill", "wine_making"),
    ]

    var hasCustomMilestones: Bool {
        !milestones.isEmpty
    }

    var milestones: [Milestone] {
        Self.milestonesData[self] ?? []
    }

    private static let milestonesData: [Self: [Milestone]] = [
        .스카이다이빙_체험하기: [
            Milestone(title: "스카이다이빙 종류 결정", description: "탠덤 vs 솔로 자격증", successCriteria: ["첫 경험이면 탠덤을 추천해요", "AFF 코스 자격증을 고려하나요?", "최소 고도를 확인했나요? (4,000m 추천)"]),
            Milestone(title: "드롭존 선택", description: "국내 vs 해외 명소", successCriteria: ["국내(양평, 서산)를 알아봤나요?", "해외(두바이, 호주, 뉴질랜드)를 고려했나요?", "리뷰와 안전 기록을 확인했나요?"]),
            Milestone(title: "예약 및 비용", description: "탠덤 기준 20-40만원", successCriteria: ["영상 촬영 옵션을 추가했나요?", "취소 정책을 확인했나요?", "날씨로 인한 연기 가능성을 알고 있나요?"]),
            Milestone(title: "당일 준비", description: "복장 및 컨디션 관리", successCriteria: ["전날 음주를 피할 계획인가요?", "편한 운동화를 준비했나요?", "식사는 가볍게 할 계획인가요?"]),
            Milestone(title: "두려움 극복", description: "멘탈 준비", successCriteria: ["영상을 보며 마음의 준비를 했나요?", "호흡법을 연습했나요?", "즐기겠다는 마음가짐이 되었나요?"])
        ],
        .번지점프_도전하기: [
            Milestone(title: "장소 선택", description: "국내 vs 해외 번지", successCriteria: ["국내(가평, 통영)를 알아봤나요?", "뉴질랜드 퀸즈타운을 고려했나요?", "마카오 타워(233m)를 알고 있나요?"]),
            Milestone(title: "높이 선택", description: "50m부터 시작 권장", successCriteria: ["처음이면 50-80m를 추천해요", "점프 스타일(전방, 후방)을 결정했나요?", "물로 뛰어드는 타입을 고려했나요?"]),
            Milestone(title: "예약하기", description: "온라인 또는 현장 예약", successCriteria: ["예약 가능한 날짜를 확인했나요?", "대기 시간을 고려했나요?", "영상 촬영 옵션이 있나요?"]),
            Milestone(title: "건강 체크", description: "심장, 혈압 확인", successCriteria: ["심장 질환이 없나요?", "고혈압이 있으면 의사 상담을 했나요?", "임산부가 아닌지 확인했나요?"]),
            Milestone(title: "멘탈 준비", description: "두려움 극복하기", successCriteria: ["영상을 보며 시뮬레이션했나요?", "심호흡 연습을 했나요?", "3초 안에 뛰어내릴 결심이 섰나요?"])
        ],
        .스쿠버다이빙_자격증_취득하기: [
            Milestone(title: "다이빙 단체 선택", description: "PADI vs SSI vs NAUI", successCriteria: ["PADI가 가장 국제적으로 인정받아요", "온라인 이론 학습이 가능한가요?", "현지 교육 비용을 비교했나요?"]),
            Milestone(title: "오픈워터 교육 등록", description: "3-4일 소요", successCriteria: ["국내(강원도, 제주)를 고려했나요?", "해외(필리핀, 태국)가 더 저렴해요", "교육비에 장비 대여가 포함인가요?"]),
            Milestone(title: "이론 학습", description: "수압, 감압, 안전 수칙", successCriteria: ["PADI eLearning을 완료했나요?", "감압병에 대해 이해했나요?", "핸드시그널을 외웠나요?"]),
            Milestone(title: "수영장 실습", description: "제한수역 다이빙", successCriteria: ["마스크 물빼기를 할 수 있나요?", "레귤레이터 되찾기를 연습했나요?", "중성부력을 연습했나요?"]),
            Milestone(title: "해양 실습", description: "4회 오픈워터 다이빙", successCriteria: ["18m 깊이까지 다이빙했나요?", "버디 시스템을 이해했나요?", "로그북을 작성했나요?"])
        ],
        .패러글라이딩_체험하기: [
            Milestone(title: "체험 장소 선택", description: "국내 명소 리서치", successCriteria: ["양평, 단양, 문경을 알아봤나요?", "해외(인터라켄, 포카라)를 고려했나요?", "고도와 비행시간을 비교했나요?"]),
            Milestone(title: "업체 선택 및 예약", description: "안전 기록 확인", successCriteria: ["자격증 있는 조종사인지 확인했나요?", "보험 가입 여부를 확인했나요?", "후기를 충분히 읽었나요?"]),
            Milestone(title: "날씨 확인", description: "바람과 구름 조건", successCriteria: ["예약일 기상 예보를 확인했나요?", "바람이 너무 강하면 취소됨을 아나요?", "대체 날짜를 확보했나요?"]),
            Milestone(title: "복장 준비", description: "편한 운동복과 운동화", successCriteria: ["긴 바지를 입을 계획인가요?", "운동화를 준비했나요?", "선글라스를 챙겼나요?"]),
            Milestone(title: "비행 즐기기", description: "사진과 영상 촬영", successCriteria: ["고프로 또는 촬영 옵션을 추가했나요?", "조종사에게 포토 스팟을 요청했나요?", "착륙 자세를 배웠나요?"])
        ],
        .서핑_배우기: [
            Milestone(title: "서핑 스팟 선택", description: "국내 서핑 명소", successCriteria: ["양양 죽도해변을 알고 있나요?", "부산 송정해변을 고려했나요?", "제주 중문해변을 알아봤나요?"]),
            Milestone(title: "서핑 스쿨 등록", description: "초보자 그룹 레슨", successCriteria: ["그룹 vs 프라이빗 레슨을 선택했나요?", "보드와 슈트 대여가 포함인가요?", "레슨 시간(2시간 추천)을 확인했나요?"]),
            Milestone(title: "기초 이론 학습", description: "파도, 조류, 에티켓", successCriteria: ["서핑 에티켓을 알고 있나요?", "이안류 대처법을 배웠나요?", "파도 읽는 법을 이해했나요?"]),
            Milestone(title: "팝업 연습", description: "보드 위에 일어서기", successCriteria: ["집에서 팝업 연습을 했나요?", "자세가 안정적인가요?", "무릎 자세에서 일어설 수 있나요?"]),
            Milestone(title: "첫 파도 타기", description: "화이트워시에서 연습", successCriteria: ["거품 파도에서 연습했나요?", "5초 이상 보드 위에 섰나요?", "방향 전환을 시도했나요?"])
        ],
        .요트_항해_체험하기: [
            Milestone(title: "요트 체험 종류 선택", description: "세일링 vs 모터 요트", successCriteria: ["세일링 요트의 낭만을 원하나요?", "모터 요트의 편안함을 원하나요?", "체험 시간(반나절/종일)을 정했나요?"]),
            Milestone(title: "출항지 선택", description: "마리나 리서치", successCriteria: ["해운대, 여수, 통영을 알아봤나요?", "제주 요트 투어를 고려했나요?", "해외(푸켓, 두브로브니크)를 고려했나요?"]),
            Milestone(title: "요트 렌탈 예약", description: "스키퍼 포함 여부", successCriteria: ["선장 동승 옵션을 선택했나요?", "식음료 포함 여부를 확인했나요?", "일몰 크루즈를 고려했나요?"]),
            Milestone(title: "멀미 대비", description: "멀미약 준비", successCriteria: ["멀미약을 미리 복용할 계획인가요?", "생강 사탕을 준비했나요?", "가벼운 식사를 할 계획인가요?"]),
            Milestone(title: "항해 즐기기", description: "선상 활동 준비", successCriteria: ["수영복을 준비했나요?", "선크림과 선글라스를 챙겼나요?", "방수 가방을 준비했나요?"])
        ],
        .미슐랭_3스타_레스토랑_방문하기: [
            Milestone(title: "레스토랑 선택", description: "미슐랭 가이드 리서치", successCriteria: ["방문하고 싶은 도시를 정했나요?", "요리 스타일(프렌치, 일식 등)을 선택했나요?", "예산을 확인했나요? (인당 30-50만원)"]),
            Milestone(title: "예약하기", description: "최소 1-3개월 전 예약", successCriteria: ["공식 웹사이트에서 예약했나요?", "특별한 날(생일 등)을 알렸나요?", "식이 제한을 미리 알렸나요?"]),
            Milestone(title: "드레스 코드 확인", description: "스마트 캐주얼 이상", successCriteria: ["남성: 재킷 필요 여부를 확인했나요?", "여성: 드레스 코드를 확인했나요?", "편한 구두를 준비했나요?"]),
            Milestone(title: "메뉴 선택", description: "테이스팅 코스 추천", successCriteria: ["풀코스 vs 런치 코스를 선택했나요?", "와인 페어링을 추가했나요?", "알레르기를 미리 알렸나요?"]),
            Milestone(title: "다이닝 에티켓", description: "파인다이닝 매너", successCriteria: ["나이프와 포크 사용법을 아나요?", "냅킨 에티켓을 알고 있나요?", "팁 문화를 확인했나요?"])
        ],
        .헬기_조종_체험하기: [
            Milestone(title: "체험 종류 선택", description: "탑승 vs 조종 체험", successCriteria: ["단순 탑승 체험인가요?", "직접 조종하는 체험인가요?", "비행 시간을 확인했나요?"]),
            Milestone(title: "장소 선택", description: "체험 가능 장소", successCriteria: ["국내 헬기 체험 장소를 찾았나요?", "해외(라스베가스, 두바이)를 고려했나요?", "비용을 비교했나요?"]),
            Milestone(title: "예약 및 준비", description: "사전 예약 필수", successCriteria: ["예약을 완료했나요?", "신분증을 준비했나요?", "건강 상태를 확인했나요?"])
        ],
        .열기구_타고_하늘_여행하기: [
            Milestone(title: "장소 선택", description: "열기구 명소", successCriteria: ["터키 카파도키아를 고려했나요?", "미얀마 바간을 알아봤나요?", "국내 체험(양평, 이천)을 확인했나요?"]),
            Milestone(title: "시즌 확인", description: "일출 비행 추천", successCriteria: ["일출 비행을 예약했나요?", "날씨 조건을 확인했나요?", "우기를 피했나요?"]),
            Milestone(title: "예약 및 준비", description: "최소 1주일 전 예약", successCriteria: ["업체 리뷰를 확인했나요?", "취소 정책을 알고 있나요?", "따뜻한 옷을 준비했나요?"])
        ],
        .빙벽_등반_체험하기: [
            Milestone(title: "기초 체력", description: "클라이밍 경험", successCriteria: ["실내 클라이밍 경험이 있나요?", "기본 체력이 준비됐나요?", "추위에 강한 편인가요?"]),
            Milestone(title: "장소 선택", description: "빙벽 장소 리서치", successCriteria: ["국내(설악산, 토왕폭포)를 알아봤나요?", "해외(아이슬란드, 캐나다)를 고려했나요?", "난이도를 확인했나요?"]),
            Milestone(title: "장비 및 가이드", description: "전문 가이드 필수", successCriteria: ["가이드 투어를 예약했나요?", "장비 대여가 포함인가요?", "안전 교육을 받을 예정인가요?"])
        ],
        .집라인_타보기: [
            Milestone(title: "장소 선택", description: "집라인 명소", successCriteria: ["국내(강원도, 제주)를 알아봤나요?", "해외(코스타리카, 라스베가스)를 고려했나요?", "길이와 속도를 비교했나요?"]),
            Milestone(title: "예약하기", description: "온라인 예약", successCriteria: ["예약을 완료했나요?", "체중 제한을 확인했나요?", "연령 제한을 확인했나요?"]),
            Milestone(title: "체험 준비", description: "복장 준비", successCriteria: ["편한 운동복을 준비했나요?", "운동화를 착용할 예정인가요?", "귀중품 보관 방법을 확인했나요?"])
        ],
        .래프팅_도전하기: [
            Milestone(title: "난이도 선택", description: "급류 등급 확인", successCriteria: ["처음이면 2-3등급을 추천해요", "경험자라면 4-5등급을 도전하나요?", "코스 길이를 확인했나요?"]),
            Milestone(title: "장소 선택", description: "래프팅 명소", successCriteria: ["국내(인제, 영월, 단양)를 알아봤나요?", "해외(그랜드캐니언, 잠비아)를 고려했나요?", "시즌을 확인했나요?"]),
            Milestone(title: "안전 준비", description: "수영 능력 확인", successCriteria: ["수영이 가능한가요?", "구명조끼 착용법을 알고 있나요?", "가이드 안전 교육을 들을 예정인가요?"])
        ],
        .승마_배우기: [
            Milestone(title: "승마장 선택", description: "승마 클럽 리서치", successCriteria: ["가까운 승마장을 찾았나요?", "초보자 레슨이 있는지 확인했나요?", "비용을 확인했나요?"]),
            Milestone(title: "기초 레슨 등록", description: "승마 기초 배우기", successCriteria: ["말과 친해지는 시간이 있나요?", "기본 자세를 배울 예정인가요?", "안전 수칙을 숙지했나요?"]),
            Milestone(title: "장비 준비", description: "승마 복장", successCriteria: ["승마 헬멧을 대여하나요?", "긴 바지를 준비했나요?", "부츠를 준비했나요?"])
        ],
        .캠핑카로_한달_살기: [
            Milestone(title: "캠핑카 선택", description: "렌탈 vs 구매", successCriteria: ["캠핑카 종류를 결정했나요?", "렌탈 업체를 비교했나요?", "운전 면허 조건을 확인했나요?"]),
            Milestone(title: "여행 루트", description: "한 달 일정 계획", successCriteria: ["방문할 지역을 정했나요?", "캠핑장 예약이 필요한 곳을 확인했나요?", "와이파이/전기 충전 계획을 세웠나요?"]),
            Milestone(title: "생활 준비", description: "캠핑카 생활 필수품", successCriteria: ["조리 도구를 준비했나요?", "침구류를 준비했나요?", "쓰레기 처리 방법을 알고 있나요?"])
        ],
        .오토바이_라이센스_취득하기: [
            Milestone(title: "면허 종류 결정", description: "1종/2종 선택", successCriteria: ["2종 소형(125cc 이하)을 원하나요?", "1종 대형(대형 바이크)을 원하나요?", "시험 요건을 확인했나요?"]),
            Milestone(title: "학원 등록", description: "운전학원 선택", successCriteria: ["바이크 전문 학원을 찾았나요?", "학원비를 비교했나요?", "실기 연습 시간을 확인했나요?"]),
            Milestone(title: "시험 준비", description: "필기/기능/주행", successCriteria: ["필기 시험을 준비했나요?", "기능 시험 코스를 연습했나요?", "도로 주행 연습을 했나요?"])
        ],
        .와인_테이스팅_투어하기: [
            Milestone(title: "와인 지역 선택", description: "유명 와이너리", successCriteria: ["프랑스(보르도, 부르고뉴)를 고려했나요?", "이탈리아(토스카나)를 알아봤나요?", "미국 나파밸리를 고려했나요?"]),
            Milestone(title: "투어 예약", description: "와이너리 투어", successCriteria: ["투어 업체를 선택했나요?", "점심 포함 투어인가요?", "운전사 포함 투어인가요?"]),
            Milestone(title: "와인 지식", description: "기초 테이스팅", successCriteria: ["포도 품종을 알고 있나요?", "테이스팅 순서를 알고 있나요?", "스왈링, 스멜링을 연습했나요?"])
        ],
        .오페라_공연_관람하기: [
            Milestone(title: "공연 선택", description: "오페라 작품 선택", successCriteria: ["유명 작품(라트라비아타, 카르멘 등)을 선택했나요?", "공연장(빈, 밀라노, 시드니)을 정했나요?", "시즌을 확인했나요?"]),
            Milestone(title: "티켓 예매", description: "좌석 선택", successCriteria: ["좋은 좌석을 예매했나요?", "드레스 코드를 확인했나요?", "자막 서비스가 있나요?"]),
            Milestone(title: "공연 준비", description: "에티켓 숙지", successCriteria: ["줄거리를 미리 읽었나요?", "공연 중 휴대폰 끄기를 알고 있나요?", "박수 타이밍을 알고 있나요?"])
        ],
        .뮤지컬_브로드웨이에서_보기: [
            Milestone(title: "작품 선택", description: "브로드웨이 뮤지컬", successCriteria: ["보고 싶은 작품을 정했나요?", "라이언킹, 위키드, 해밀턴 등을 고려했나요?", "공연 일정을 확인했나요?"]),
            Milestone(title: "티켓 예매", description: "공식 예매 또는 TKTS", successCriteria: ["공식 사이트에서 예매했나요?", "TKTS 할인 부스를 알고 있나요?", "좌석 위치를 선택했나요?"]),
            Milestone(title: "뉴욕 여행", description: "타임스퀘어 방문", successCriteria: ["숙소를 예약했나요?", "공연장 위치를 확인했나요?", "식사 장소를 알아봤나요?"])
        ],
        .록_콘서트_최전방_관람하기: [
            Milestone(title: "아티스트 선택", description: "좋아하는 밴드/가수", successCriteria: ["보고 싶은 아티스트를 정했나요?", "내한 공연을 확인했나요?", "해외 페스티벌을 고려했나요?"]),
            Milestone(title: "티켓 예매", description: "스탠딩/최전방", successCriteria: ["티켓팅 시간을 확인했나요?", "스탠딩 티켓을 구했나요?", "일찍 줄 설 계획인가요?"]),
            Milestone(title: "콘서트 준비", description: "체력 및 준비물", successCriteria: ["몇 시간 서있을 체력이 있나요?", "귀마개를 준비했나요?", "물과 간식을 챙겼나요?"])
        ],
        .오로라_사진_촬영하기: [
            Milestone(title: "장소 선택", description: "오로라 명소", successCriteria: ["아이슬란드를 고려했나요?", "노르웨이 트롬소를 알아봤나요?", "캐나다 옐로나이프를 고려했나요?"]),
            Milestone(title: "시즌 확인", description: "9월-3월 추천", successCriteria: ["오로라 시즌에 방문하나요?", "신월 주변 날짜를 선택했나요?", "날씨 예보를 확인하나요?"]),
            Milestone(title: "촬영 장비", description: "카메라 세팅", successCriteria: ["삼각대를 준비했나요?", "수동 모드 설정을 알고 있나요?", "배터리 여분을 준비했나요?"])
        ],
        .세계_일주_크루즈_타기: [
            Milestone(title: "크루즈 선택", description: "세계 일주 노선", successCriteria: ["크루즈 회사를 비교했나요?", "기간(3-6개월)을 확인했나요?", "예산을 확보했나요?"]),
            Milestone(title: "예약하기", description: "최소 1년 전 예약", successCriteria: ["캐빈 타입을 선택했나요?", "기항지를 확인했나요?", "비자 요건을 확인했나요?"]),
            Milestone(title: "장기 여행 준비", description: "짐 꾸리기", successCriteria: ["장기간 짐 리스트를 작성했나요?", "상비약을 준비했나요?", "인터넷/통신 계획을 세웠나요?"])
        ],
        .북극_탐험하기: [
            Milestone(title: "탐험 방식", description: "쇄빙선 크루즈", successCriteria: ["북극 크루즈를 알아봤나요?", "노르웨이 스발바르를 고려했나요?", "시즌(6-8월)을 확인했나요?"]),
            Milestone(title: "예약 및 준비", description: "전문 탐험 업체", successCriteria: ["탐험 전문 업체를 선택했나요?", "방한 장비를 준비했나요?", "여행자 보험에 가입했나요?"]),
            Milestone(title: "야생동물 관찰", description: "북극곰, 바다코끼리", successCriteria: ["야생동물 관찰 투어가 포함인가요?", "카메라 장비를 준비했나요?", "안전 수칙을 숙지했나요?"])
        ],
        .남극_펭귄과_만나기: [
            Milestone(title: "남극 크루즈", description: "탐험 크루즈 선택", successCriteria: ["남극 크루즈 업체를 비교했나요?", "우수아이아 출발을 확인했나요?", "시즌(11-3월)을 확인했나요?"]),
            Milestone(title: "비용 및 예약", description: "고가의 탐험", successCriteria: ["예산(1000만원 이상)을 확보했나요?", "최소 1년 전 예약했나요?", "취소 보험에 가입했나요?"]),
            Milestone(title: "펭귄 관찰 준비", description: "상륙 준비", successCriteria: ["방수 바지를 준비했나요?", "망원 카메라를 준비했나요?", "펭귄과의 거리 유지 규칙을 알고 있나요?"])
        ],
        .사막에서_별_관측하기: [
            Milestone(title: "사막 선택", description: "별 관측 명소", successCriteria: ["아타카마 사막을 고려했나요?", "사하라 사막을 알아봤나요?", "와디럼을 고려했나요?"]),
            Milestone(title: "시기 선택", description: "신월 주변 추천", successCriteria: ["달이 없는 시기를 선택했나요?", "맑은 날씨를 확인했나요?", "은하수 시즌인가요?"]),
            Milestone(title: "관측 준비", description: "장비 및 투어", successCriteria: ["천체 관측 투어를 예약했나요?", "방한 장비를 준비했나요?", "별자리 앱을 설치했나요?"])
        ],
        .동굴_탐험하기: [
            Milestone(title: "동굴 선택", description: "동굴 종류", successCriteria: ["석회 동굴을 고려했나요?", "용암 동굴을 알아봤나요?", "수중 동굴을 원하나요?"]),
            Milestone(title: "투어 예약", description: "가이드 투어 필수", successCriteria: ["전문 가이드 투어를 예약했나요?", "난이도를 확인했나요?", "장비가 제공되나요?"]),
            Milestone(title: "탐험 준비", description: "복장 및 장비", successCriteria: ["편한 운동복을 준비했나요?", "미끄럼 방지 신발을 준비했나요?", "헤드램프를 준비했나요?"])
        ],
        .폭포_뒤에서_사진찍기: [
            Milestone(title: "폭포 선택", description: "뒤로 갈 수 있는 폭포", successCriteria: ["셀랴란드포스(아이슬란드)를 알고 있나요?", "천지연폭포(제주)를 고려했나요?", "나이아가라 뒤편 투어를 알고 있나요?"]),
            Milestone(title: "방문 계획", description: "시즌 및 시간", successCriteria: ["물량이 적당한 시즌인가요?", "사진 빛이 좋은 시간을 선택했나요?", "혼잡하지 않은 시간인가요?"]),
            Milestone(title: "촬영 준비", description: "방수 장비", successCriteria: ["방수 가방을 준비했나요?", "갈아입을 옷을 챙겼나요?", "방수 카메라/케이스를 준비했나요?"])
        ],
        .화산_분화구_보기: [
            Milestone(title: "화산 선택", description: "활화산 vs 휴화산", successCriteria: ["하와이 킬라우에아를 고려했나요?", "아이슬란드 화산을 알아봤나요?", "인도네시아 화산을 고려했나요?"]),
            Milestone(title: "투어 예약", description: "안전한 관람 투어", successCriteria: ["공식 투어를 예약했나요?", "화산 활동 상태를 확인했나요?", "안전 장비가 제공되나요?"]),
            Milestone(title: "방문 준비", description: "건강 및 장비", successCriteria: ["마스크를 준비했나요?", "등산 장비를 준비했나요?", "여행자 보험에 가입했나요?"])
        ],
        .온천_투어하기: [
            Milestone(title: "온천 지역 선택", description: "유명 온천지", successCriteria: ["일본 온천을 고려했나요?", "아이슬란드 블루라군을 알아봤나요?", "국내 온양, 유성을 고려했나요?"]),
            Milestone(title: "온천 예약", description: "료칸/리조트", successCriteria: ["숙박과 온천을 함께 예약했나요?", "개인 노천탕이 있나요?", "식사 포함인가요?"]),
            Milestone(title: "온천 에티켓", description: "입욕 매너", successCriteria: ["타월 사용법을 알고 있나요?", "씻고 들어가는 것을 알고 있나요?", "문신 정책을 확인했나요?"])
        ],
        .빙하_위_걷기: [
            Milestone(title: "빙하 선택", description: "트레킹 명소", successCriteria: ["아이슬란드 빙하를 고려했나요?", "뉴질랜드 프란츠조셉을 알아봤나요?", "아르헨티나 페리토모레노를 고려했나요?"]),
            Milestone(title: "투어 예약", description: "가이드 필수", successCriteria: ["빙하 트레킹 투어를 예약했나요?", "장비(아이젠, 피켈)가 제공되나요?", "난이도를 확인했나요?"]),
            Milestone(title: "체력 및 장비", description: "트레킹 준비", successCriteria: ["기본 체력이 있나요?", "방수 재킷을 준비했나요?", "방수 등산화를 준비했나요?"])
        ],
        .사파리_차량_운전하기: [
            Milestone(title: "사파리 선택", description: "셀프 드라이브 사파리", successCriteria: ["남아공 크루거를 고려했나요?", "나미비아 에토샤를 알아봤나요?", "탄자니아 세렝게티를 고려했나요?"]),
            Milestone(title: "차량 렌탈", description: "4WD 필수", successCriteria: ["4륜구동 차량을 렌탈했나요?", "국제면허를 준비했나요?", "보험을 확인했나요?"]),
            Milestone(title: "사파리 준비", description: "안전 수칙", successCriteria: ["야생동물 안전 수칙을 숙지했나요?", "차에서 내리지 않는 규칙을 알고 있나요?", "쌍안경을 준비했나요?"])
        ],
        .코끼리_목욕시키기: [
            Milestone(title: "체험 장소", description: "윤리적 코끼리 보호소", successCriteria: ["태국 치앙마이를 고려했나요?", "윤리적 보호소인지 확인했나요?", "코끼리 타기가 아닌 돌보기 체험인가요?"]),
            Milestone(title: "예약하기", description: "반나절/종일 프로그램", successCriteria: ["프로그램을 선택했나요?", "먹이주기가 포함인가요?", "목욕시키기가 포함인가요?"]),
            Milestone(title: "체험 준비", description: "복장 및 준비물", successCriteria: ["갈아입을 옷을 준비했나요?", "방수 가방을 챙겼나요?", "선크림을 준비했나요?"])
        ],
        .상어와_다이빙하기: [
            Milestone(title: "다이빙 타입", description: "케이지 vs 자유 다이빙", successCriteria: ["케이지 다이빙을 원하나요?", "자유 다이빙(자격증 필요)을 원하나요?", "상어 종류를 확인했나요?"]),
            Milestone(title: "장소 선택", description: "상어 다이빙 명소", successCriteria: ["남아공 케이프타운을 고려했나요?", "멕시코 과달루페를 알아봤나요?", "몰디브를 고려했나요?"]),
            Milestone(title: "안전 준비", description: "전문 업체 선택", successCriteria: ["안전 기록이 좋은 업체인가요?", "보험에 가입했나요?", "안전 교육을 받을 예정인가요?"])
        ],
        .돌고래와_수영하기: [
            Milestone(title: "체험 장소", description: "야생 vs 시설", successCriteria: ["야생 돌고래 수영을 원하나요?", "하와이, 바하마를 고려했나요?", "윤리적 프로그램인지 확인했나요?"]),
            Milestone(title: "투어 예약", description: "스노클링/다이빙", successCriteria: ["스노클링 투어를 예약했나요?", "돌고래 출현율을 확인했나요?", "소규모 그룹인가요?"]),
            Milestone(title: "수영 준비", description: "스노클링 장비", successCriteria: ["수영 실력이 충분한가요?", "스노클링 장비 사용법을 아나요?", "돌고래와 거리 유지 규칙을 알고 있나요?"])
        ],
        .고래_관측하기: [
            Milestone(title: "시즌 확인", description: "고래 이동 시기", successCriteria: ["방문 지역의 고래 시즌을 확인했나요?", "혹등고래, 범고래 등 종류를 확인했나요?", "최적의 달을 선택했나요?"]),
            Milestone(title: "장소 선택", description: "고래 관측 명소", successCriteria: ["아이슬란드 후사빅을 고려했나요?", "캐나다 밴쿠버를 알아봤나요?", "호주 시드니를 고려했나요?"]),
            Milestone(title: "투어 준비", description: "보트 투어 예약", successCriteria: ["투어 업체를 선택했나요?", "멀미약을 준비했나요?", "카메라를 준비했나요?"])
        ],
        .카약_원정하기: [
            Milestone(title: "난이도 선택", description: "초보 vs 중급", successCriteria: ["처음이면 잔잔한 물을 추천해요", "바다 카약을 원하나요?", "급류 카약을 원하나요?"]),
            Milestone(title: "장소 선택", description: "카약 명소", successCriteria: ["제주 투명카약을 고려했나요?", "뉴질랜드 밀포드사운드를 알아봤나요?", "노르웨이 피요르드를 고려했나요?"]),
            Milestone(title: "기술 배우기", description: "패들링 기초", successCriteria: ["기초 레슨을 받을 예정인가요?", "뒤집혔을 때 대처법을 알고 있나요?", "구명조끼를 착용하나요?"])
        ],
        .카누_타기: [
            Milestone(title: "장소 선택", description: "카누 체험지", successCriteria: ["강/호수 카누를 원하나요?", "국내(춘천, 강촌)를 고려했나요?", "해외(캐나다 밴프)를 고려했나요?"]),
            Milestone(title: "예약하기", description: "카누 렌탈", successCriteria: ["카누 렌탈을 예약했나요?", "소요 시간을 확인했나요?", "2인용/1인용을 선택했나요?"]),
            Milestone(title: "체험 준비", description: "복장 및 안전", successCriteria: ["젖어도 되는 옷을 입었나요?", "구명조끼를 착용하나요?", "방수 가방을 준비했나요?"])
        ],
        .윈드서핑_배우기: [
            Milestone(title: "장소 선택", description: "윈드서핑 스팟", successCriteria: ["국내(제주, 강릉)를 알아봤나요?", "해외(하와이, 그리스)를 고려했나요?", "바람 조건을 확인했나요?"]),
            Milestone(title: "레슨 등록", description: "초보자 강습", successCriteria: ["그룹 레슨을 등록했나요?", "장비 대여가 포함인가요?", "레슨 시간을 확인했나요?"]),
            Milestone(title: "기초 기술", description: "업홀링, 세일링", successCriteria: ["업홀링을 연습했나요?", "방향 전환을 배웠나요?", "바람 읽는 법을 이해했나요?"])
        ],
        .카이트서핑_도전하기: [
            Milestone(title: "레슨 등록", description: "IKO 공인 레슨", successCriteria: ["공인 강사에게 배우나요?", "레슨 기간(3-5일)을 확인했나요?", "보험이 포함인가요?"]),
            Milestone(title: "장소 선택", description: "카이트 서핑 명소", successCriteria: ["제주를 고려했나요?", "필리핀 보라카이를 알아봤나요?", "바람 시즌을 확인했나요?"]),
            Milestone(title: "안전 교육", description: "카이트 조종", successCriteria: ["카이트 조종을 연습했나요?", "안전 시스템을 이해했나요?", "비상 상황 대처법을 알고 있나요?"])
        ],
        .제트스키_타기: [
            Milestone(title: "장소 선택", description: "제트스키 명소", successCriteria: ["국내 해변(부산, 강릉)을 알아봤나요?", "해외(태국, 발리)를 고려했나요?", "가격을 비교했나요?"]),
            Milestone(title: "렌탈 예약", description: "시간당 렌탈", successCriteria: ["렌탈 시간을 결정했나요?", "면허 필요 여부를 확인했나요?", "보험이 포함인가요?"]),
            Milestone(title: "안전 수칙", description: "운전 방법", successCriteria: ["기본 조작법을 배웠나요?", "속도 제한을 알고 있나요?", "구명조끼를 착용하나요?"])
        ],
        .파라세일링하기: [
            Milestone(title: "장소 선택", description: "파라세일링 명소", successCriteria: ["국내(부산, 제주)를 알아봤나요?", "해외(푸켓, 괌)를 고려했나요?", "높이를 확인했나요?"]),
            Milestone(title: "예약하기", description: "업체 선택", successCriteria: ["안전 기록을 확인했나요?", "가격을 비교했나요?", "사진/영상 옵션이 있나요?"]),
            Milestone(title: "체험 준비", description: "복장 및 소지품", successCriteria: ["수영복을 입었나요?", "귀중품을 맡겼나요?", "카메라를 고정했나요?"])
        ],
        .수상스키_타기: [
            Milestone(title: "장소 선택", description: "수상스키 스팟", successCriteria: ["국내(가평, 춘천)를 알아봤나요?", "해외를 고려했나요?", "웨이크보드도 함께 하나요?"]),
            Milestone(title: "레슨 등록", description: "초보자 강습", successCriteria: ["강습이 포함된 패키지인가요?", "보트 드라이버가 있나요?", "장비 대여가 포함인가요?"]),
            Milestone(title: "기초 기술", description: "물 위에 서기", successCriteria: ["팔을 펴고 버티는 법을 배웠나요?", "시작 자세를 연습했나요?", "낙법을 알고 있나요?"])
        ],
        .웨이크보드하기: [
            Milestone(title: "장소 선택", description: "웨이크보드 스팟", successCriteria: ["케이블 파크를 알아봤나요?", "보트 웨이크보드를 원하나요?", "가격을 비교했나요?"]),
            Milestone(title: "레슨 등록", description: "초보자 강습", successCriteria: ["강습을 예약했나요?", "보드와 바인딩 사이즈를 확인했나요?", "웻수트가 제공되나요?"]),
            Milestone(title: "기초 기술", description: "일어서기", successCriteria: ["깊은 출발 자세를 연습했나요?", "체중 분배를 배웠나요?", "낙법을 알고 있나요?"])
        ],
        .플라이보드하기: [
            Milestone(title: "장소 선택", description: "플라이보드 체험지", successCriteria: ["국내(부산, 제주)를 알아봤나요?", "해외(두바이, 푸켓)를 고려했나요?", "수심을 확인했나요?"]),
            Milestone(title: "예약하기", description: "체험 시간", successCriteria: ["체험 시간(20-30분)을 선택했나요?", "강습이 포함인가요?", "촬영 옵션이 있나요?"]),
            Milestone(title: "기초 연습", description: "밸런스 잡기", successCriteria: ["수영이 가능한가요?", "물 속에서 균형 잡는 연습을 할 예정인가요?", "구명조끼를 착용하나요?"])
        ],
        .세일링_요트_조종하기: [
            Milestone(title: "세일링 레슨", description: "요트 조종 배우기", successCriteria: ["세일링 스쿨에 등록했나요?", "기초 코스(3-5일)를 선택했나요?", "자격증 취득을 원하나요?"]),
            Milestone(title: "기초 이론", description: "바람, 방향, 매듭", successCriteria: ["바람 방향 읽는 법을 배웠나요?", "기본 매듭을 연습했나요?", "세일 조작법을 이해했나요?"]),
            Milestone(title: "실습 항해", description: "직접 조종하기", successCriteria: ["태킹/자이빙을 연습했나요?", "정박을 연습했나요?", "비상 상황 대처법을 알고 있나요?"])
        ],
        .크루즈_디너쇼하기: [
            Milestone(title: "크루즈 선택", description: "디너 크루즈", successCriteria: ["출발 항구를 선택했나요?", "코스 요리가 포함인가요?", "공연이 포함인가요?"]),
            Milestone(title: "예약하기", description: "날짜 및 시간", successCriteria: ["일몰 시간대를 선택했나요?", "좌석/테이블을 예약했나요?", "드레스 코드를 확인했나요?"]),
            Milestone(title: "준비하기", description: "복장 및 준비", successCriteria: ["스마트 캐주얼을 준비했나요?", "카메라를 챙겼나요?", "멀미약을 준비했나요?"])
        ],
        .헬리콥터_투어하기: [
            Milestone(title: "장소 선택", description: "헬기 투어 명소", successCriteria: ["뉴욕 맨해튼 투어를 고려했나요?", "하와이 화산 투어를 알아봤나요?", "두바이 헬기 투어를 고려했나요?"]),
            Milestone(title: "예약하기", description: "투어 시간 선택", successCriteria: ["비행 시간(15-60분)을 선택했나요?", "일몰 투어를 고려했나요?", "사진 서비스가 있나요?"]),
            Milestone(title: "탑승 준비", description: "안전 교육", successCriteria: ["체중 제한을 확인했나요?", "안전 교육을 받았나요?", "헤드셋 사용법을 알고 있나요?"])
        ],
        .소형_비행기_조종하기: [
            Milestone(title: "체험 비행 예약", description: "조종 체험", successCriteria: ["체험 비행 업체를 찾았나요?", "비행 시간을 선택했나요?", "자격 조건을 확인했나요?"]),
            Milestone(title: "기초 이론", description: "비행 원리", successCriteria: ["이착륙 원리를 이해했나요?", "계기판 읽는 법을 배웠나요?", "조종간 조작법을 알고 있나요?"]),
            Milestone(title: "실제 조종", description: "교관과 함께", successCriteria: ["교관 동승 비행을 예약했나요?", "수평 비행을 연습했나요?", "선회를 연습했나요?"])
        ],
        .글라이더_체험하기: [
            Milestone(title: "글라이딩 센터", description: "체험 장소 선택", successCriteria: ["가까운 글라이딩 클럽을 찾았나요?", "체험 비행을 예약했나요?", "날씨 조건을 확인했나요?"]),
            Milestone(title: "비행 준비", description: "안전 교육", successCriteria: ["안전 브리핑을 받았나요?", "비상 탈출법을 배웠나요?", "조종석 탑승법을 알고 있나요?"]),
            Milestone(title: "글라이딩 체험", description: "무동력 비행", successCriteria: ["상승 기류를 경험했나요?", "조종간을 잡아봤나요?", "착륙 과정을 이해했나요?"])
        ],
        .행글라이더하기: [
            Milestone(title: "체험 장소", description: "행글라이딩 명소", successCriteria: ["국내(단양, 영월)를 알아봤나요?", "해외(리오, 스위스)를 고려했나요?", "텐덤 비행을 선택했나요?"]),
            Milestone(title: "예약 및 준비", description: "날씨 확인", successCriteria: ["바람 조건을 확인했나요?", "예약을 완료했나요?", "촬영 옵션을 추가했나요?"]),
            Milestone(title: "이륙 준비", description: "달리기 이륙", successCriteria: ["달리기 이륙법을 배웠나요?", "체력이 준비됐나요?", "착륙 자세를 알고 있나요?"])
        ],
        .실내_스카이다이빙하기: [
            Milestone(title: "장소 선택", description: "실내 스카이다이빙 센터", successCriteria: ["가까운 센터를 찾았나요?", "iFLY 또는 유사 시설인가요?", "가격을 확인했나요?"]),
            Milestone(title: "예약하기", description: "체험 시간 선택", successCriteria: ["비행 시간(1-2분)을 선택했나요?", "패키지 상품을 비교했나요?", "사진/영상 옵션이 있나요?"]),
            Milestone(title: "체험 준비", description: "복장 및 교육", successCriteria: ["편한 운동복을 입었나요?", "안전 교육을 받았나요?", "자세를 연습했나요?"])
        ],
        .암벽_등반하기: [
            Milestone(title: "실내 클라이밍", description: "기초 연습", successCriteria: ["실내 클라이밍장에서 연습하나요?", "기본 기술을 익혔나요?", "장비 사용법을 알고 있나요?"]),
            Milestone(title: "야외 암벽 선택", description: "등반 장소", successCriteria: ["북한산, 설악산을 고려했나요?", "해외(요세미티, 태국)를 고려했나요?", "난이도를 확인했나요?"]),
            Milestone(title: "안전 장비", description: "장비 및 가이드", successCriteria: ["하네스, 로프를 준비했나요?", "파트너 또는 가이드가 있나요?", "안전 수칙을 숙지했나요?"])
        ],
        .볼더링하기: [
            Milestone(title: "볼더링장 선택", description: "실내 볼더링", successCriteria: ["가까운 볼더링장을 찾았나요?", "초보자 코스가 있나요?", "장비 대여가 가능한가요?"]),
            Milestone(title: "기초 기술", description: "홀드 잡기", successCriteria: ["다양한 홀드 잡는 법을 배웠나요?", "풋워크를 연습했나요?", "낙법을 알고 있나요?"]),
            Milestone(title: "난이도 도전", description: "등급 올리기", successCriteria: ["V0-V2 문제를 클리어했나요?", "점점 어려운 문제에 도전하나요?", "규칙적으로 연습하나요?"])
        ],
        .클라이밍_자격증_취득하기: [
            Milestone(title: "교육 과정 선택", description: "자격증 종류", successCriteria: ["리드 클라이밍 자격증을 원하나요?", "빌레이 자격증이 필요한가요?", "교육 기관을 찾았나요?"]),
            Milestone(title: "이론 학습", description: "안전 및 장비", successCriteria: ["로프 매듭을 배웠나요?", "빌레이 기술을 익혔나요?", "안전 점검법을 알고 있나요?"]),
            Milestone(title: "실기 시험", description: "자격증 취득", successCriteria: ["실기 연습을 충분히 했나요?", "시험에 응시했나요?", "자격증을 취득했나요?"])
        ],
        .트레일_러닝하기: [
            Milestone(title: "코스 선택", description: "트레일 러닝 코스", successCriteria: ["가까운 산/숲길을 찾았나요?", "난이도를 확인했나요?", "거리를 정했나요?"]),
            Milestone(title: "장비 준비", description: "트레일화 및 장비", successCriteria: ["트레일 러닝화를 구입했나요?", "수분 보급 조끼를 준비했나요?", "GPS 시계가 있나요?"]),
            Milestone(title: "훈련 시작", description: "오르막/내리막 연습", successCriteria: ["평지에서 기초 체력을 쌓았나요?", "오르막 걷기를 연습했나요?", "내리막 기술을 익혔나요?"])
        ],
        .크로스컨트리_스키_타기: [
            Milestone(title: "장소 선택", description: "크로스컨트리 코스", successCriteria: ["국내(대관령, 평창)를 알아봤나요?", "해외(노르웨이, 핀란드)를 고려했나요?", "코스 난이도를 확인했나요?"]),
            Milestone(title: "장비 대여", description: "스키 및 폴", successCriteria: ["장비 대여소를 확인했나요?", "부츠 사이즈를 알고 있나요?", "왁싱이 필요한가요?"]),
            Milestone(title: "기초 기술", description: "클래식 vs 스케이팅", successCriteria: ["클래식 주법을 배웠나요?", "경사 오르내리기를 연습했나요?", "넘어졌을 때 일어나는 법을 알고 있나요?"])
        ],
        .스노보드_배우기: [
            Milestone(title: "스키장 선택", description: "스노보드 강습", successCriteria: ["강습이 있는 스키장을 선택했나요?", "장비 대여가 가능한가요?", "초보자 슬로프가 있나요?"]),
            Milestone(title: "장비 준비", description: "보드 및 보호대", successCriteria: ["레귤러/구피 스탠스를 결정했나요?", "손목/엉덩이 보호대를 준비했나요?", "헬멧을 착용하나요?"]),
            Milestone(title: "기초 기술", description: "낙법, 사이드슬립", successCriteria: ["안전하게 넘어지는 법을 배웠나요?", "사이드슬립을 연습했나요?", "턴을 시도했나요?"])
        ],
        .스키_점프하기: [
            Milestone(title: "스키 실력", description: "중급 이상 필요", successCriteria: ["스키를 잘 탈 수 있나요?", "속도에 대한 두려움이 없나요?", "점프 스키 센터를 찾았나요?"]),
            Milestone(title: "소형 점프대", description: "초보자 점프", successCriteria: ["K10 이하 점프대로 시작하나요?", "안전 장비를 착용하나요?", "강사의 지도를 받나요?"]),
            Milestone(title: "기초 기술", description: "이륙, 비행, 착지", successCriteria: ["이륙 자세를 배웠나요?", "공중 자세를 연습했나요?", "텔레마크 착지를 알고 있나요?"])
        ],
        .아이스_스케이팅하기: [
            Milestone(title: "스케이트장 선택", description: "실내/야외 링크", successCriteria: ["가까운 스케이트장을 찾았나요?", "스케이트 대여가 가능한가요?", "강습이 있나요?"]),
            Milestone(title: "장비 준비", description: "스케이트 및 보호대", successCriteria: ["스케이트 사이즈를 맞췄나요?", "장갑을 준비했나요?", "무릎/손목 보호대를 착용하나요?"]),
            Milestone(title: "기초 기술", description: "균형 잡기, 멈추기", successCriteria: ["벽잡고 서기를 연습했나요?", "펭귄 걷기를 배웠나요?", "멈추는 법을 알고 있나요?"])
        ],
        .아이스하키_관람하기: [
            Milestone(title: "경기 선택", description: "리그 및 팀", successCriteria: ["국내 AAHL 경기를 알아봤나요?", "해외 NHL 관람을 고려했나요?", "좋아하는 팀이 있나요?"]),
            Milestone(title: "티켓 예매", description: "좋은 좌석 선택", successCriteria: ["티켓을 예매했나요?", "좌석 위치를 확인했나요?", "플레이오프 경기인가요?"]),
            Milestone(title: "관람 준비", description: "경기장 방문", successCriteria: ["경기 규칙을 알고 있나요?", "따뜻한 옷을 준비했나요?", "응원 도구를 챙겼나요?"])
        ],
        .컬링_체험하기: [
            Milestone(title: "체험 장소", description: "컬링장 찾기", successCriteria: ["가까운 컬링장을 찾았나요?", "체험 프로그램이 있나요?", "예약을 완료했나요?"]),
            Milestone(title: "기초 배우기", description: "딜리버리, 스위핑", successCriteria: ["스톤 던지는 법을 배웠나요?", "스위핑을 연습했나요?", "경기 규칙을 알고 있나요?"]),
            Milestone(title: "체험하기", description: "미니 게임", successCriteria: ["팀을 구성했나요?", "미니 게임을 해봤나요?", "전략을 세워봤나요?"])
        ],
        .개썰매_타기: [
            Milestone(title: "장소 선택", description: "개썰매 체험지", successCriteria: ["핀란드/노르웨이를 고려했나요?", "알래스카/캐나다를 알아봤나요?", "국내 체험지를 찾았나요?"]),
            Milestone(title: "투어 예약", description: "반나절/종일 투어", successCriteria: ["투어 시간을 선택했나요?", "직접 운전 vs 탑승만 선택했나요?", "오로라 투어와 결합인가요?"]),
            Milestone(title: "방한 준비", description: "따뜻한 복장", successCriteria: ["방한복을 준비했나요?", "방한화를 준비했나요?", "핫팩을 챙겼나요?"])
        ],
        .스노모빌하기: [
            Milestone(title: "장소 선택", description: "스노모빌 체험지", successCriteria: ["북유럽(핀란드, 노르웨이)을 고려했나요?", "캐나다/알래스카를 알아봤나요?", "면허 조건을 확인했나요?"]),
            Milestone(title: "투어 예약", description: "가이드 투어", successCriteria: ["투어 시간을 선택했나요?", "장비가 제공되나요?", "보험이 포함인가요?"]),
            Milestone(title: "운전 준비", description: "안전 교육", successCriteria: ["운전 교육을 받았나요?", "속도 제한을 알고 있나요?", "방한 장비를 착용했나요?"])
        ],
        .아이스_피싱하기: [
            Milestone(title: "장소 선택", description: "얼음 낚시터", successCriteria: ["국내(화천, 인제)를 알아봤나요?", "해외(핀란드, 캐나다)를 고려했나요?", "시즌을 확인했나요?"]),
            Milestone(title: "장비 준비", description: "낚시 장비", successCriteria: ["얼음 낚시대가 있나요?", "미끼를 준비했나요?", "텐트/의자를 준비했나요?"]),
            Milestone(title: "방한 준비", description: "추위 대비", successCriteria: ["방한복을 준비했나요?", "핫팩을 챙겼나요?", "따뜻한 음료를 준비했나요?"])
        ],
        .북유럽_사우나하기: [
            Milestone(title: "사우나 선택", description: "전통 사우나 체험", successCriteria: ["핀란드 사우나를 고려했나요?", "스웨덴 바스투를 알아봤나요?", "호수/바다 근처 사우나인가요?"]),
            Milestone(title: "사우나 예약", description: "프라이빗/퍼블릭", successCriteria: ["프라이빗 사우나를 원하나요?", "퍼블릭 사우나 에티켓을 알고 있나요?", "예약을 완료했나요?"]),
            Milestone(title: "체험 준비", description: "에티켓 숙지", successCriteria: ["사우나 후 차가운 물에 뛰어들 준비가 됐나요?", "비히타(자작나무 다발)를 사용하나요?", "수건을 준비했나요?"])
        ],
        .터키식_목욕탕하기: [
            Milestone(title: "함맘 선택", description: "터키 전통 목욕탕", successCriteria: ["이스탄불 함맘을 알아봤나요?", "관광객용 vs 로컬용을 선택했나요?", "예약이 필요한가요?"]),
            Milestone(title: "서비스 선택", description: "스크럽/마사지", successCriteria: ["케세 스크럽을 포함했나요?", "오일 마사지를 추가했나요?", "비용을 확인했나요?"]),
            Milestone(title: "에티켓 숙지", description: "함맘 문화", successCriteria: ["탈의 방법을 알고 있나요?", "팁 문화를 확인했나요?", "남녀 분리인지 확인했나요?"])
        ],
        .일본_료칸_체험하기: [
            Milestone(title: "료칸 선택", description: "전통 료칸", successCriteria: ["온천이 있는 료칸인가요?", "가이세키 요리가 포함인가요?", "지역(하코네, 교토 등)을 정했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "식사 포함 여부를 확인했나요?", "체크인 시간을 확인했나요?"]),
            Milestone(title: "에티켓 숙지", description: "료칸 문화", successCriteria: ["유카타 입는 법을 알고 있나요?", "다다미방 에티켓을 알고 있나요?", "온천 입욕 매너를 알고 있나요?"])
        ],
        .한옥_스테이하기: [
            Milestone(title: "한옥 선택", description: "전통 한옥", successCriteria: ["북촌, 전주를 고려했나요?", "고택 숙박을 원하나요?", "예약 사이트를 찾았나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["원하는 날짜에 예약했나요?", "온돌방인지 확인했나요?", "조식 포함 여부를 확인했나요?"]),
            Milestone(title: "체험 준비", description: "한복 체험", successCriteria: ["한복 대여를 고려했나요?", "다도 체험이 있나요?", "전통 놀이 체험이 있나요?"])
        ],
        .사막_캠핑하기: [
            Milestone(title: "사막 선택", description: "캠핑 가능 사막", successCriteria: ["모로코 사하라를 고려했나요?", "요르단 와디럼을 알아봤나요?", "두바이 사막을 고려했나요?"]),
            Milestone(title: "투어 예약", description: "사막 캠핑 투어", successCriteria: ["1박 캠핑 투어를 예약했나요?", "낙타 타기가 포함인가요?", "식사가 제공되나요?"]),
            Milestone(title: "준비물", description: "사막 대비", successCriteria: ["따뜻한 옷을 준비했나요?", "손전등을 챙겼나요?", "물을 충분히 준비했나요?"])
        ],
        .글램핑하기: [
            Milestone(title: "글램핑장 선택", description: "글램핑 명소", successCriteria: ["원하는 지역을 정했나요?", "시설 사진을 확인했나요?", "리뷰를 읽었나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "BBQ 옵션을 추가했나요?", "체크인 시간을 확인했나요?"]),
            Milestone(title: "준비물", description: "짐 꾸리기", successCriteria: ["편한 옷을 준비했나요?", "간식을 챙겼나요?", "보드게임을 가져가나요?"])
        ],
        .트리하우스_숙박하기: [
            Milestone(title: "트리하우스 선택", description: "숙박 장소", successCriteria: ["국내 트리하우스를 찾았나요?", "해외(코스타리카, 태국)를 고려했나요?", "높이와 시설을 확인했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "접근 방법을 확인했나요?", "화장실/샤워 시설을 확인했나요?"]),
            Milestone(title: "체험 준비", description: "자연 속 숙박", successCriteria: ["손전등을 준비했나요?", "벌레 퇴치제를 챙겼나요?", "카메라를 준비했나요?"])
        ],
        .동굴_호텔하기: [
            Milestone(title: "동굴 호텔 선택", description: "독특한 숙박", successCriteria: ["터키 카파도키아를 고려했나요?", "스페인 그라나다를 알아봤나요?", "예산을 확인했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "방 사진을 확인했나요?", "조식 포함 여부를 확인했나요?"]),
            Milestone(title: "체험 즐기기", description: "동굴 생활", successCriteria: ["시원한 동굴 온도를 알고 있나요?", "사진 촬영 계획을 세웠나요?", "주변 관광을 계획했나요?"])
        ],
        .얼음_호텔하기: [
            Milestone(title: "얼음 호텔 선택", description: "아이스 호텔", successCriteria: ["스웨덴 아이스호텔을 고려했나요?", "핀란드 아이스 호텔을 알아봤나요?", "노르웨이를 고려했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["겨울 시즌에 예약했나요?", "침낭이 제공되나요?", "따뜻한 방과 얼음 방을 선택했나요?"]),
            Milestone(title: "숙박 준비", description: "방한 대비", successCriteria: ["극한 추위에 대비했나요?", "따뜻한 속옷을 준비했나요?", "사우나 이용이 가능한가요?"])
        ],
        .수중_호텔하기: [
            Milestone(title: "수중 호텔 선택", description: "언더워터 호텔", successCriteria: ["몰디브 콘래드를 고려했나요?", "두바이 아틀란티스를 알아봤나요?", "예산을 확인했나요?"]),
            Milestone(title: "예약하기", description: "특별한 숙박", successCriteria: ["수중 객실을 예약했나요?", "스노클링/다이빙 옵션이 있나요?", "식사를 계획했나요?"]),
            Milestone(title: "체험 즐기기", description: "바다 속 숙박", successCriteria: ["물고기 관찰을 기대하나요?", "카메라를 준비했나요?", "특별한 날을 위한 계획인가요?"])
        ],
        .등대_숙박하기: [
            Milestone(title: "등대 숙박 선택", description: "등대 호텔", successCriteria: ["국내 등대 숙박을 찾았나요?", "해외(영국, 미국)를 고려했나요?", "바다 전망을 확인했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "시설을 확인했나요?", "접근 방법을 알고 있나요?"]),
            Milestone(title: "체험 준비", description: "등대 생활", successCriteria: ["일출/일몰 시간을 확인했나요?", "카메라를 준비했나요?", "조용한 휴식을 기대하나요?"])
        ],
        .성_호텔_숙박하기: [
            Milestone(title: "성 호텔 선택", description: "캐슬 호텔", successCriteria: ["유럽 고성 호텔을 찾았나요?", "아일랜드, 스코틀랜드를 고려했나요?", "예산을 확인했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "방 타입을 선택했나요?", "디너 코스를 예약했나요?"]),
            Milestone(title: "체험 준비", description: "귀족 체험", successCriteria: ["드레스 코드가 있나요?", "성 투어가 포함인가요?", "사진 촬영 계획을 세웠나요?"])
        ],
        .기차_호텔하기: [
            Milestone(title: "기차 호텔 선택", description: "럭셔리 열차", successCriteria: ["오리엔트 익스프레스를 고려했나요?", "로보스 레일을 알아봤나요?", "일본 크루즈 트레인을 고려했나요?"]),
            Milestone(title: "예약하기", description: "여정 선택", successCriteria: ["노선과 기간을 선택했나요?", "캐빈 타입을 선택했나요?", "식사 포함 여부를 확인했나요?"]),
            Milestone(title: "여행 준비", description: "기차 여행", successCriteria: ["드레스 코드를 확인했나요?", "창밖 풍경을 즐길 준비가 됐나요?", "카메라를 준비했나요?"])
        ],
        .비행기_호텔하기: [
            Milestone(title: "비행기 호텔 선택", description: "항공기 개조 호텔", successCriteria: ["코스타리카 727 호텔을 알아봤나요?", "스웨덴 점보 호스텔을 고려했나요?", "예약 가능 여부를 확인했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["예약을 완료했나요?", "시설을 확인했나요?", "가격을 비교했나요?"]),
            Milestone(title: "체험 준비", description: "특별한 숙박", successCriteria: ["조종석 투어가 있나요?", "사진 촬영 계획을 세웠나요?", "항공 마니아를 위한 체험인가요?"])
        ],
        .럭셔리_사파리_롯지하기: [
            Milestone(title: "사파리 선택", description: "럭셔리 롯지", successCriteria: ["케냐/탄자니아를 고려했나요?", "보츠와나/남아공을 알아봤나요?", "롯지 등급을 확인했나요?"]),
            Milestone(title: "예약하기", description: "올인클루시브", successCriteria: ["사파리 드라이브가 포함인가요?", "식사가 포함인가요?", "가이드가 포함인가요?"]),
            Milestone(title: "사파리 준비", description: "야생 체험", successCriteria: ["쌍안경을 준비했나요?", "카메라 장비를 준비했나요?", "예방접종을 완료했나요?"])
        ],
        .오버워터_방갈로하기: [
            Milestone(title: "리조트 선택", description: "수상 방갈로", successCriteria: ["몰디브를 고려했나요?", "보라보라를 알아봤나요?", "예산을 확인했나요?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["수상 빌라를 예약했나요?", "올인클루시브인가요?", "스노클링 장비가 제공되나요?"]),
            Milestone(title: "체험 준비", description: "바다 위 숙박", successCriteria: ["유리 바닥 방인가요?", "프라이빗 풀이 있나요?", "수영복을 준비했나요?"])
        ],
        .짚라인_캐노피_투어하기: [
            Milestone(title: "장소 선택", description: "정글 캐노피", successCriteria: ["코스타리카를 고려했나요?", "태국/발리를 알아봤나요?", "집라인 개수를 확인했나요?"]),
            Milestone(title: "투어 예약", description: "캐노피 투어", successCriteria: ["투어를 예약했나요?", "소요 시간을 확인했나요?", "안전 장비가 제공되나요?"]),
            Milestone(title: "체험 준비", description: "정글 체험", successCriteria: ["편한 운동복을 입었나요?", "운동화를 신었나요?", "벌레 퇴치제를 챙겼나요?"])
        ],
        .ATV_오프로드하기: [
            Milestone(title: "장소 선택", description: "ATV 체험지", successCriteria: ["국내(제주, 강원도)를 알아봤나요?", "해외(두바이, 발리)를 고려했나요?", "코스 난이도를 확인했나요?"]),
            Milestone(title: "예약하기", description: "체험 예약", successCriteria: ["예약을 완료했나요?", "면허 필요 여부를 확인했나요?", "보험이 포함인가요?"]),
            Milestone(title: "체험 준비", description: "안전 장비", successCriteria: ["헬멧이 제공되나요?", "더러워져도 되는 옷을 입었나요?", "안전 교육을 받았나요?"])
        ],
        ._4륜_사막_투어하기: [
            Milestone(title: "사막 선택", description: "4WD 투어 장소", successCriteria: ["두바이 사막을 고려했나요?", "모로코를 알아봤나요?", "요르단을 고려했나요?"]),
            Milestone(title: "투어 예약", description: "사막 사파리", successCriteria: ["반나절/종일 투어를 선택했나요?", "샌드보딩이 포함인가요?", "저녁 식사가 포함인가요?"]),
            Milestone(title: "체험 준비", description: "사막 대비", successCriteria: ["선글라스를 준비했나요?", "스카프를 챙겼나요?", "카메라를 준비했나요?"])
        ],
        .스쿠터_여행하기: [
            Milestone(title: "목적지 선택", description: "스쿠터 여행지", successCriteria: ["발리/베트남을 고려했나요?", "이탈리아를 알아봤나요?", "국내 제주도를 고려했나요?"]),
            Milestone(title: "렌탈 준비", description: "스쿠터 대여", successCriteria: ["국제면허가 있나요?", "렌탈 업체를 찾았나요?", "보험을 확인했나요?"]),
            Milestone(title: "여행 계획", description: "루트 계획", successCriteria: ["일일 주행 거리를 계획했나요?", "충전/주유 계획을 세웠나요?", "헬멧을 준비했나요?"])
        ],
        .자전거_국토_횡단하기: [
            Milestone(title: "루트 선택", description: "국토 종주 코스", successCriteria: ["4대강 자전거길을 알고 있나요?", "인천-부산 루트를 계획했나요?", "총 거리를 확인했나요?"]),
            Milestone(title: "장비 준비", description: "자전거 및 짐", successCriteria: ["장거리용 자전거가 있나요?", "짐 패니어를 준비했나요?", "수리 도구를 챙겼나요?"]),
            Milestone(title: "일정 계획", description: "숙박 및 휴식", successCriteria: ["일일 주행 거리를 정했나요?", "숙박 장소를 예약했나요?", "체력 훈련을 했나요?"])
        ],
        .오토바이_투어하기: [
            Milestone(title: "루트 선택", description: "바이크 투어 코스", successCriteria: ["국내(해안도로, 산악도로)를 알아봤나요?", "해외(베트남, 미국 66번 도로)를 고려했나요?", "거리를 확인했나요?"]),
            Milestone(title: "바이크 준비", description: "바이크 렌탈/소유", successCriteria: ["바이크가 있나요?", "렌탈을 고려하나요?", "면허가 있나요?"]),
            Milestone(title: "투어 준비", description: "장비 및 계획", successCriteria: ["라이딩 기어를 준비했나요?", "숙박을 예약했나요?", "날씨를 확인했나요?"])
        ],
        .클래식카_드라이브하기: [
            Milestone(title: "클래식카 선택", description: "렌탈 또는 체험", successCriteria: ["클래식카 렌탈 업체를 찾았나요?", "원하는 차종이 있나요?", "비용을 확인했나요?"]),
            Milestone(title: "드라이브 코스", description: "경치 좋은 도로", successCriteria: ["드라이브 코스를 정했나요?", "사진 찍을 장소를 계획했나요?", "날씨를 확인했나요?"]),
            Milestone(title: "체험 즐기기", description: "클래식카 운전", successCriteria: ["수동 변속기 운전이 가능한가요?", "보험을 확인했나요?", "복고풍 복장을 준비했나요?"])
        ],
        .슈퍼카_체험하기: [
            Milestone(title: "슈퍼카 선택", description: "페라리, 람보르기니 등", successCriteria: ["타보고 싶은 슈퍼카를 정했나요?", "체험 업체를 찾았나요?", "비용을 확인했나요?"]),
            Milestone(title: "체험 예약", description: "서킷 또는 도로", successCriteria: ["서킷 체험을 원하나요?", "도로 주행을 원하나요?", "시간을 선택했나요?"]),
            Milestone(title: "드라이빙 준비", description: "운전 준비", successCriteria: ["면허가 있나요?", "운전 교육을 받나요?", "보험을 확인했나요?"])
        ],
        .F1_관람하기: [
            Milestone(title: "그랑프리 선택", description: "F1 서킷", successCriteria: ["모나코, 싱가포르, 일본 등을 고려했나요?", "일정을 확인했나요?", "티켓 가격을 확인했나요?"]),
            Milestone(title: "티켓 예매", description: "관람석 선택", successCriteria: ["좌석 위치를 선택했나요?", "주말 패스를 구매했나요?", "피트워크 투어를 고려했나요?"]),
            Milestone(title: "현지 방문", description: "F1 관람 준비", successCriteria: ["숙소를 예약했나요?", "교통편을 확인했나요?", "귀마개를 준비했나요?"])
        ],
        .NASCAR_체험하기: [
            Milestone(title: "체험 프로그램", description: "NASCAR 드라이빙", successCriteria: ["드라이빙 체험 프로그램을 찾았나요?", "동승 체험을 원하나요?", "직접 운전을 원하나요?"]),
            Milestone(title: "장소 선택", description: "미국 서킷", successCriteria: ["데이토나, 샬롯 등을 고려했나요?", "미국 여행을 계획했나요?", "비용을 확인했나요?"]),
            Milestone(title: "체험 준비", description: "안전 교육", successCriteria: ["안전 교육을 받을 예정인가요?", "레이싱 슈트가 제공되나요?", "건강 상태를 확인했나요?"])
        ],
        .카트_레이싱하기: [
            Milestone(title: "카트장 선택", description: "실내/야외 카트", successCriteria: ["가까운 카트장을 찾았나요?", "실내 vs 야외를 선택했나요?", "가격을 비교했나요?"]),
            Milestone(title: "예약하기", description: "시간 예약", successCriteria: ["예약을 완료했나요?", "그룹 레이싱을 원하나요?", "개인 랩타임을 원하나요?"]),
            Milestone(title: "레이싱 준비", description: "기본 기술", successCriteria: ["브레이킹 포인트를 이해했나요?", "에이펙스를 알고 있나요?", "헬멧을 착용하나요?"])
        ],
        .드리프트_체험하기: [
            Milestone(title: "체험 프로그램", description: "드리프트 강습", successCriteria: ["드리프트 체험 프로그램을 찾았나요?", "면허가 있나요?", "비용을 확인했나요?"]),
            Milestone(title: "장소 선택", description: "서킷 또는 체험장", successCriteria: ["안전한 체험장인가요?", "차량이 제공되나요?", "강사가 있나요?"]),
            Milestone(title: "기초 기술", description: "드리프트 배우기", successCriteria: ["후륜구동 원리를 이해했나요?", "카운터 스티어링을 배웠나요?", "스로틀 컨트롤을 연습했나요?"])
        ],
        .오프로드_랠리하기: [
            Milestone(title: "체험 프로그램", description: "랠리 체험", successCriteria: ["랠리 체험 프로그램을 찾았나요?", "코드라이버 체험을 원하나요?", "직접 운전을 원하나요?"]),
            Milestone(title: "장소 선택", description: "오프로드 코스", successCriteria: ["국내 오프로드 코스를 알아봤나요?", "해외(핀란드, 아르헨티나)를 고려했나요?", "난이도를 확인했나요?"]),
            Milestone(title: "안전 준비", description: "장비 및 교육", successCriteria: ["헬멧이 제공되나요?", "안전 교육을 받나요?", "보험을 확인했나요?"])
        ],
        .트럭_운전하기: [
            Milestone(title: "체험 프로그램", description: "대형 트럭 운전", successCriteria: ["트럭 운전 체험을 찾았나요?", "면허 조건을 확인했나요?", "비용을 확인했나요?"]),
            Milestone(title: "장소 선택", description: "체험장 또는 도로", successCriteria: ["안전한 체험장인가요?", "교관이 동승하나요?", "보험이 있나요?"]),
            Milestone(title: "운전 준비", description: "대형차 감각", successCriteria: ["대형차 특성을 이해했나요?", "사각지대를 알고 있나요?", "브레이킹 거리를 이해했나요?"])
        ],
        .탱크_운전하기: [
            Milestone(title: "체험 프로그램", description: "탱크 드라이빙", successCriteria: ["영국, 미국 등 체험 프로그램을 찾았나요?", "비용을 확인했나요?", "예약을 완료했나요?"]),
            Milestone(title: "장소 선택", description: "군용 차량 체험", successCriteria: ["어떤 종류의 탱크인가요?", "장애물 코스가 있나요?", "사격 체험이 포함인가요?"]),
            Milestone(title: "체험 준비", description: "안전 교육", successCriteria: ["안전 교육을 받나요?", "편한 옷을 입었나요?", "건강 상태를 확인했나요?"])
        ],
        .잠수함_탑승하기: [
            Milestone(title: "잠수함 투어 선택", description: "관광 잠수함", successCriteria: ["하와이, 괌 등을 고려했나요?", "투어 시간을 확인했나요?", "깊이를 확인했나요?"]),
            Milestone(title: "예약하기", description: "투어 예약", successCriteria: ["예약을 완료했나요?", "가격을 비교했나요?", "멀미 대비를 했나요?"]),
            Milestone(title: "탑승 준비", description: "수중 관광", successCriteria: ["폐쇄공포증이 없나요?", "카메라를 준비했나요?", "편한 옷을 입었나요?"])
        ],
        .열기구_축제_가기: [
            Milestone(title: "축제 선택", description: "세계 열기구 축제", successCriteria: ["터키 카파도키아를 고려했나요?", "미국 앨버커키를 알아봤나요?", "태국 치앙마이를 고려했나요?"]),
            Milestone(title: "일정 확인", description: "축제 날짜", successCriteria: ["축제 일정을 확인했나요?", "숙소를 예약했나요?", "열기구 탑승을 예약했나요?"]),
            Milestone(title: "관람 준비", description: "사진 촬영", successCriteria: ["카메라를 준비했나요?", "일출 시간을 확인했나요?", "따뜻한 옷을 챙겼나요?"])
        ],
        .연날리기_축제_가기: [
            Milestone(title: "축제 선택", description: "세계 연 축제", successCriteria: ["인도 구자라트를 고려했나요?", "중국 웨이팡을 알아봤나요?", "국내 축제를 찾았나요?"]),
            Milestone(title: "일정 확인", description: "축제 날짜", successCriteria: ["축제 일정을 확인했나요?", "여행을 계획했나요?", "숙소를 예약했나요?"]),
            Milestone(title: "참여 준비", description: "연 날리기", successCriteria: ["직접 연을 날릴 계획인가요?", "연을 구입했나요?", "사진 촬영을 계획했나요?"])
        ],
        .불꽃놀이_축제_가기: [
            Milestone(title: "축제 선택", description: "세계 불꽃축제", successCriteria: ["시드니 새해 불꽃을 고려했나요?", "몬트리올 불꽃축제를 알아봤나요?", "부산 불꽃축제를 고려했나요?"]),
            Milestone(title: "일정 확인", description: "축제 날짜", successCriteria: ["축제 일정을 확인했나요?", "좋은 관람 장소를 알아봤나요?", "숙소를 예약했나요?"]),
            Milestone(title: "관람 준비", description: "최적의 관람", successCriteria: ["일찍 가서 자리를 잡을 계획인가요?", "삼각대를 준비했나요?", "돗자리를 챙겼나요?"])
        ],
        .와인_만들기_체험하기: [
            Milestone(title: "와이너리 선택", description: "체험 가능 와이너리", successCriteria: ["국내 와이너리를 찾았나요?", "해외(나파밸리, 토스카나)를 고려했나요?", "시즌(수확기)을 확인했나요?"]),
            Milestone(title: "체험 예약", description: "와인 메이킹", successCriteria: ["체험 프로그램을 예약했나요?", "포도 수확 체험이 포함인가요?", "병입 체험이 있나요?"]),
            Milestone(title: "체험 준비", description: "와인 제조 과정", successCriteria: ["와인 제조 과정을 이해했나요?", "편한 옷을 입었나요?", "자신의 와인 라벨을 만들 수 있나요?"])
        ]
    ]
}

