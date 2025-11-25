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
        ]
    ]
}

