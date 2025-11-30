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
        Self.metadata[self]?.0 ?? "star.fill"
    }

    var backgroundImage: String {
        Self.metadata[self]?.1 ?? ""
    }

    var position: LocationInfo? {
        Self.positionData[self]
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
            Milestone(title: "스카이다이빙 종류 결정", description: "탠덤 vs 솔로 자격증", successCriteria: ["탠덤과 솔로(AFF) 중 어떤 것을 선택했고, 그 이유는 무엇인가요?", "스카이다이빙에 대한 기대와 걱정은 각각 무엇인가요?", "원하는 점프 고도와 그 고도에서 기대하는 경험은?"]),
            Milestone(title: "드롭존 선택", description: "국내 vs 해외 명소", successCriteria: ["어떤 드롭존을 선택했고, 그곳만의 특별한 매력은 무엇인가요?", "드롭존을 선택할 때 가장 중요하게 생각한 기준은?", "업체의 안전 기록과 리뷰를 조사하면서 알게 된 점은?"]),
            Milestone(title: "예약 및 비용", description: "탠덤 기준 20-40만원", successCriteria: ["영상 촬영 옵션을 선택한 이유와 기대하는 영상 장면은?", "예약 과정에서 확인한 중요한 정책이나 정보는?", "날씨 변동 시 대비 계획은 어떻게 세웠나요?"]),
            Milestone(title: "당일 준비", description: "복장 및 컨디션 관리", successCriteria: ["점프 전 컨디션 관리를 위해 어떤 준비를 하고 있나요?", "준비한 복장과 그렇게 선택한 이유를 설명해주세요", "점프 전 식사와 수분 섭취 계획은?"]),
            Milestone(title: "두려움 극복", description: "멘탈 준비", successCriteria: ["스카이다이빙에 대한 두려움은 무엇이고, 어떻게 극복하려 하나요?", "마음의 준비를 위해 어떤 방법을 시도해봤나요?", "이 경험을 통해 얻고 싶은 것과 점프 순간 나에게 해주고 싶은 말은?"]),
        ],
        .번지점프_도전하기: [
            Milestone(title: "장소 선택", description: "국내 vs 해외 번지", successCriteria: ["어떤 번지점프 장소를 선택했고, 그곳을 고른 특별한 이유는?", "조사한 장소들의 특징과 각각의 매력을 비교해보세요", "함께 갈 사람이 있다면 누구이고, 왜 함께 하고 싶나요?"]),
            Milestone(title: "높이 선택", description: "50m부터 시작 권장", successCriteria: ["선택한 높이와 그 높이를 선택한 이유를 설명해주세요", "어떤 점프 스타일을 시도하고 싶고, 그 이유는?", "물로 뛰어드는 것과 공중에서 되돌아오는 것 중 무엇이 더 끌리나요?"]),
            Milestone(title: "예약하기", description: "온라인 또는 현장 예약", successCriteria: ["예약 과정에서 확인한 중요한 정보나 정책은?", "영상 촬영 옵션을 선택한 이유와 기대하는 장면은?", "대기 시간 동안 무엇을 하며 마음의 준비를 할 계획인가요?"]),
            Milestone(title: "건강 체크", description: "심장, 혈압 확인", successCriteria: ["건강 상태를 점검하면서 확인한 사항들을 적어보세요", "번지점프를 위해 평소 건강 관리를 어떻게 하고 있나요?", "점프 전 컨디션 관리 계획은 어떻게 세웠나요?"]),
            Milestone(title: "멘탈 준비", description: "두려움 극복하기", successCriteria: ["번지점프에 대한 두려움은 무엇이고, 어떻게 극복하려 하나요?", "점프대 끝에 섰을 때 자신에게 해줄 말을 미리 적어보세요", "이 도전을 통해 증명하고 싶은 것과 기대하는 감정은?"]),
        ],
        .스쿠버다이빙_자격증_취득하기: [
            Milestone(title: "다이빙 단체 선택", description: "PADI vs SSI vs NAUI", successCriteria: ["PADI, SSI, NAUI 중 어떤 단체를 선택했고, 그 이유는 무엇인가요?", "온라인 이론 학습의 장단점은 무엇이라고 생각하나요?", "조사한 교육 비용과 각 옵션의 특징을 비교해보세요"]),
            Milestone(title: "오픈워터 교육 등록", description: "3-4일 소요", successCriteria: ["국내와 해외 교육 장소 중 어디를 선택했고, 그 이유는?", "교육 장소를 선택할 때 가장 중요하게 생각한 기준은?", "교육 비용에 포함된 항목과 추가 비용을 정리해보세요"]),
            Milestone(title: "이론 학습", description: "수압, 감압, 안전 수칙", successCriteria: ["이론 학습 중 가장 흥미롭거나 중요하게 느낀 내용은?", "감압병의 원인과 예방법에 대해 배운 것을 설명해보세요", "필수 핸드시그널 중 가장 중요한 것들과 그 의미를 적어보세요"]),
            Milestone(title: "수영장 실습", description: "제한수역 다이빙", successCriteria: ["마스크 물빼기 연습 경험과 처음 성공했을 때의 느낌은?", "레귤레이터 되찾기가 어려웠다면 어떻게 극복했나요?", "중성부력 연습에서 배운 팁과 아직 어려운 점은?"]),
            Milestone(title: "해양 실습", description: "4회 오픈워터 다이빙", successCriteria: ["첫 해양 다이빙에서 느낀 감동과 어려웠던 점은?", "버디 시스템의 중요성을 실제로 느낀 순간이 있었나요?", "로그북에 기록하고 싶은 특별한 수중 경험을 적어보세요"])
        ],
        .패러글라이딩_체험하기: [
            Milestone(title: "체험 장소 선택", description: "국내 명소 리서치", successCriteria: ["어떤 패러글라이딩 장소를 선택했고, 그곳의 특별한 매력은?", "국내와 해외 명소를 비교하면서 알게 된 각각의 특징은?", "고도와 비행시간을 고려해 선택한 이유를 설명해보세요"]),
            Milestone(title: "업체 선택 및 예약", description: "안전 기록 확인", successCriteria: ["업체를 선택할 때 가장 중요하게 확인한 안전 관련 정보는?", "조종사의 자격과 경력을 확인하면서 알게 된 점은?", "후기를 읽으면서 인상 깊었던 내용과 기대되는 점은?"]),
            Milestone(title: "날씨 확인", description: "바람과 구름 조건", successCriteria: ["패러글라이딩에 이상적인 날씨 조건에 대해 알게 된 것은?", "날씨로 인해 취소될 경우의 대비 계획은 어떻게 세웠나요?", "체험 전 날씨 확인 방법과 체크 포인트를 정리해보세요"]),
            Milestone(title: "복장 준비", description: "편한 운동복과 운동화", successCriteria: ["준비한 복장과 그렇게 선택한 이유를 설명해주세요", "비행 중 필요할 것 같은 준비물 목록을 작성해보세요", "사진 촬영을 위해 특별히 신경 쓴 복장이나 아이템이 있나요?"]),
            Milestone(title: "비행 즐기기", description: "사진과 영상 촬영", successCriteria: ["비행 중 촬영하고 싶은 장면이나 앵글을 미리 생각해보세요", "조종사에게 요청하고 싶은 특별한 비행 코스나 동작이 있나요?", "착륙 시 주의할 점과 배운 착륙 자세를 설명해보세요"])
        ],
        .서핑_배우기: [
            Milestone(title: "서핑 스팟 선택", description: "국내 서핑 명소", successCriteria: ["어떤 서핑 스팟을 선택했고, 그곳의 파도 특성과 매력은?", "조사한 서핑 명소들의 장단점을 비교해보세요", "선택한 장소의 시즌별 특징과 방문 계획 시기는?"]),
            Milestone(title: "서핑 스쿨 등록", description: "초보자 그룹 레슨", successCriteria: ["그룹과 프라이빗 레슨 중 어떤 것을 선택했고, 그 이유는?", "레슨 비용에 포함된 항목과 별도로 준비해야 할 것은?", "강사의 자격이나 교육 스타일 중 중요하게 생각한 점은?"]),
            Milestone(title: "기초 이론 학습", description: "파도, 조류, 에티켓", successCriteria: ["서핑 에티켓 중 가장 중요하게 기억해야 할 것들을 정리해보세요", "이안류의 위험성과 대처법에 대해 배운 것을 설명해주세요", "파도를 읽는 방법 중 알게 된 핵심 포인트는?"]),
            Milestone(title: "팝업 연습", description: "보드 위에 일어서기", successCriteria: ["팝업 연습 중 가장 어려웠던 점과 극복 방법은?", "올바른 팝업 자세와 연습하면서 개선된 점을 설명해보세요", "무릎 자세에서 완전히 일어서기까지의 과정에서 배운 팁은?"]),
            Milestone(title: "첫 파도 타기", description: "화이트워시에서 연습", successCriteria: ["첫 파도를 탔을 때의 느낌과 감정을 기록해보세요", "보드 위에서 균형 잡는 것이 어려웠다면 어떻게 개선했나요?", "다음 단계로 도전하고 싶은 기술이나 파도 종류는?"])
        ],
        .요트_항해_체험하기: [
            Milestone(title: "요트 체험 종류 선택", description: "세일링 vs 모터 요트", successCriteria: ["세일링 요트와 모터 요트 중 어떤 것을 선택했고, 그 이유는?", "요트 체험을 통해 가장 기대하는 경험이나 순간은?", "체험 시간을 어떻게 정했고, 그 시간에 하고 싶은 활동은?"]),
            Milestone(title: "출항지 선택", description: "마리나 리서치", successCriteria: ["어떤 출항지를 선택했고, 그곳의 바다 풍경이 기대되는 이유는?", "조사한 마리나들의 특징과 각각의 매력을 비교해보세요", "출항지 주변에서 함께 즐길 수 있는 관광지나 맛집 정보는?"]),
            Milestone(title: "요트 렌탈 예약", description: "스키퍼 포함 여부", successCriteria: ["예약 시 확인한 중요한 조건이나 포함 사항을 정리해보세요", "선장과의 대화를 통해 알고 싶은 바다 이야기나 질문은?", "일몰 크루즈에 대한 기대와 그 시간에 하고 싶은 것은?"]),
            Milestone(title: "멀미 대비", description: "멀미약 준비", successCriteria: ["멀미 예방을 위해 준비한 것들과 그 방법을 선택한 이유는?", "평소 멀미 경험과 그때 효과적이었던 대처법을 적어보세요", "항해 전 식사와 컨디션 관리 계획은 어떻게 세웠나요?"]),
            Milestone(title: "항해 즐기기", description: "선상 활동 준비", successCriteria: ["선상에서 하고 싶은 활동과 그 활동을 위한 준비물은?", "사진 촬영을 위해 특별히 준비한 아이템이나 구상한 장면은?", "항해 중 가장 기대되는 순간과 그 순간을 어떻게 기록할 계획인가요?"])
        ],
        .미슐랭_3스타_레스토랑_방문하기: [
            Milestone(title: "레스토랑 선택", description: "미슐랭 가이드 리서치", successCriteria: ["어떤 레스토랑을 선택했고, 그 레스토랑의 시그니처 요리나 특징은?", "선호하는 요리 스타일을 선택한 이유와 그에 대한 기대는?", "예산 계획과 이 특별한 식사를 위해 준비한 것들은?"]),
            Milestone(title: "예약하기", description: "최소 1-3개월 전 예약", successCriteria: ["예약 과정에서 경험한 것과 알게 된 팁을 공유해주세요", "이 식사를 함께할 사람과 특별한 기념일이 있다면 어떤 의미인가요?", "레스토랑에 미리 알린 특별 요청이나 식이 제한 사항은?"]),
            Milestone(title: "드레스 코드 확인", description: "스마트 캐주얼 이상", successCriteria: ["준비한 복장과 그 복장을 선택한 이유를 설명해주세요", "파인다이닝에 어울리는 복장에 대해 조사하면서 알게 된 점은?", "함께 가는 사람과 드레스 코드를 어떻게 맞출 계획인가요?"]),
            Milestone(title: "메뉴 선택", description: "테이스팅 코스 추천", successCriteria: ["어떤 코스를 선택했고, 가장 기대되는 요리는 무엇인가요?", "와인 페어링에 대한 생각과 선택한 옵션은?", "셰프의 철학이나 요리 스토리 중 인상 깊은 것은?"]),
            Milestone(title: "다이닝 에티켓", description: "파인다이닝 매너", successCriteria: ["파인다이닝 에티켓 중 새롭게 알게 된 것들을 정리해보세요", "식사 중 웨이터나 소믈리에와 나누고 싶은 대화나 질문은?", "이 경험을 통해 배우고 싶은 것과 기록하고 싶은 순간은?"])
        ],
        .헬기_조종_체험하기: [
            Milestone(title: "체험 종류 선택", description: "탑승 vs 조종 체험", successCriteria: ["탑승 체험과 직접 조종 체험 중 어떤 것을 선택했고, 그 이유는?", "헬기 조종을 통해 가장 기대하는 경험이나 순간은?", "선택한 비행 시간과 그 시간 동안 경험하고 싶은 것은?"]),
            Milestone(title: "장소 선택", description: "체험 가능 장소", successCriteria: ["어떤 장소를 선택했고, 그곳에서 볼 수 있는 풍경이 기대되는 이유는?", "조사한 체험 장소들의 특징과 비용을 비교해보세요", "해당 장소에서의 헬기 체험이 특별한 이유는?"]),
            Milestone(title: "예약 및 준비", description: "사전 예약 필수", successCriteria: ["예약 과정에서 확인한 중요한 정보나 준비 사항은?", "체험 전 건강 상태와 컨디션 관리 계획을 설명해주세요", "이 체험을 위해 특별히 준비하거나 공부한 것이 있나요?"])
        ],
        .열기구_타고_하늘_여행하기: [
            Milestone(title: "장소 선택", description: "열기구 명소", successCriteria: ["어떤 열기구 명소를 선택했고, 그곳의 풍경이 특별한 이유는?", "조사한 열기구 명소들의 특징과 각각의 매력을 비교해보세요", "선택한 장소에서 가장 보고 싶은 풍경이나 순간은?"]),
            Milestone(title: "시즌 확인", description: "일출 비행 추천", successCriteria: ["일출 비행을 선택한 이유와 그 시간대에 기대하는 풍경은?", "열기구 비행에 이상적인 날씨 조건에 대해 알게 된 것은?", "방문 시기를 선택할 때 고려한 요소들을 정리해보세요"]),
            Milestone(title: "예약 및 준비", description: "최소 1주일 전 예약", successCriteria: ["업체를 선택할 때 중요하게 확인한 리뷰나 정보는?", "날씨로 인한 취소 시 대비 계획은 어떻게 세웠나요?", "비행 중 필요한 준비물과 복장 계획을 설명해주세요"])
        ],
        .빙벽_등반_체험하기: [
            Milestone(title: "기초 체력", description: "클라이밍 경험", successCriteria: ["클라이밍 경험이 있다면 그 경험이 빙벽 등반에 어떻게 도움이 될까요?", "빙벽 등반을 위해 어떤 체력 훈련을 하고 있나요?", "추위에 대한 나의 내성과 극한 환경을 대비한 준비는?"]),
            Milestone(title: "장소 선택", description: "빙벽 장소 리서치", successCriteria: ["어떤 빙벽 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 빙벽 장소들의 난이도와 특징을 비교해보세요", "선택한 장소에서 가장 기대되는 경험이나 도전은?"]),
            Milestone(title: "장비 및 가이드", description: "전문 가이드 필수", successCriteria: ["예약한 투어의 안전 시스템과 가이드 자격에 대해 알게 된 점은?", "빙벽 등반에 필요한 장비들과 각각의 용도를 설명해보세요", "안전 교육에서 가장 중요하게 배워야 할 것들은 무엇이라고 생각하나요?"])
        ],
        .집라인_타보기: [
            Milestone(title: "장소 선택", description: "집라인 명소", successCriteria: ["어떤 집라인 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 집라인 명소들의 길이, 속도, 풍경을 비교해보세요", "그 장소에서 집라인을 타며 보고 싶은 풍경은?"]),
            Milestone(title: "예약하기", description: "온라인 예약", successCriteria: ["예약 시 확인한 중요한 조건이나 제한 사항을 정리해보세요", "집라인 체험에 대한 기대와 약간의 두려움이 있다면 무엇인가요?", "함께 가는 사람이 있다면 누구이고, 왜 함께 하고 싶나요?"]),
            Milestone(title: "체험 준비", description: "복장 준비", successCriteria: ["준비한 복장과 그렇게 선택한 이유를 설명해주세요", "집라인 체험 중 촬영 계획과 기록하고 싶은 순간은?", "체험 전후로 즐길 수 있는 주변 관광지나 활동 계획은?"])
        ],
        .래프팅_도전하기: [
            Milestone(title: "난이도 선택", description: "급류 등급 확인", successCriteria: ["어떤 급류 등급을 선택했고, 그 난이도에 대한 기대와 걱정은?", "래프팅 경험이 있다면 이전 경험과 이번 도전의 차이점은?", "선택한 코스의 길이와 그 코스에서 가장 기대되는 구간은?"]),
            Milestone(title: "장소 선택", description: "래프팅 명소", successCriteria: ["어떤 래프팅 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 래프팅 명소들의 특징과 각각의 장단점을 비교해보세요", "선택한 시즌과 그 시기의 물살 특성에 대해 알게 된 것은?"]),
            Milestone(title: "안전 준비", description: "수영 능력 확인", successCriteria: ["래프팅을 위한 수영 실력과 체력 준비 상태를 설명해보세요", "안전 장비 착용법과 비상 상황 대처에 대해 배운 것은?", "함께 가는 팀원들과 어떻게 협력할 계획인가요?"])
        ],
        .승마_배우기: [
            Milestone(title: "승마장 선택", description: "승마 클럽 리서치", successCriteria: ["어떤 승마장을 선택했고, 그곳을 선택한 이유는?", "승마장의 레슨 프로그램과 시설에 대해 알게 된 점은?", "비용과 레슨 커리큘럼을 비교하면서 고려한 요소는?"]),
            Milestone(title: "기초 레슨 등록", description: "승마 기초 배우기", successCriteria: ["말과 친해지는 과정에서 느낀 감정과 배운 점은?", "승마 기본 자세와 중요 포인트를 설명해보세요", "안전 수칙 중 가장 중요하게 기억해야 할 것들은?"]),
            Milestone(title: "장비 준비", description: "승마 복장", successCriteria: ["준비한 승마 복장과 장비에 대해 설명해주세요", "승마 장비를 선택할 때 고려한 점은?", "승마를 통해 배우고 싶은 것과 목표는?"])
        ],
        .캠핑카로_한달_살기: [
            Milestone(title: "캠핑카 선택", description: "렌탈 vs 구매", successCriteria: ["어떤 종류의 캠핑카를 선택했고, 그 결정의 이유는?", "캠핑카 렌탈 업체들을 비교하면서 중요하게 고려한 점은?", "캠핑카 여행에 대한 기대와 이 여행이 나에게 주는 의미는?"]),
            Milestone(title: "여행 루트", description: "한 달 일정 계획", successCriteria: ["한 달 여행의 주요 목적지와 각 장소를 선택한 이유를 설명해보세요", "루트를 계획하면서 가장 기대되는 구간과 경험은?", "인프라(전기, 인터넷 등) 확보 계획과 대안은 어떻게 세웠나요?"]),
            Milestone(title: "생활 준비", description: "캠핑카 생활 필수품", successCriteria: ["캠핑카 생활을 위해 준비한 필수품 목록과 선택 이유는?", "한 달간의 식사 계획과 조리 방식에 대해 설명해보세요", "장기 여행을 위한 생활 루틴과 자기 관리 계획은?"])
        ],
        .오토바이_라이센스_취득하기: [
            Milestone(title: "면허 종류 결정", description: "1종/2종 선택", successCriteria: ["어떤 종류의 면허를 취득하려고 하고, 그 선택의 이유는?", "면허 취득 후 타고 싶은 오토바이와 여행 계획은?", "시험 요건과 준비 기간에 대해 조사한 내용을 정리해보세요"]),
            Milestone(title: "학원 등록", description: "운전학원 선택", successCriteria: ["어떤 학원을 선택했고, 그 학원의 특징과 장점은?", "학원 커리큘럼과 실기 연습 시간에 대해 설명해보세요", "학원에서 가장 집중적으로 배우고 싶은 기술은?"]),
            Milestone(title: "시험 준비", description: "필기/기능/주행", successCriteria: ["필기 시험 준비 중 가장 중요하게 공부한 내용은?", "기능 시험에서 어려웠던 점과 극복 방법은?", "도로 주행 시 가장 긴장되는 상황과 대비 방법은?"])
        ],
        .와인_테이스팅_투어하기: [
            Milestone(title: "와인 지역 선택", description: "유명 와이너리", successCriteria: ["어떤 와인 지역을 선택했고, 그 지역 와인의 특징과 매력은?", "조사한 와인 지역들을 비교하면서 알게 된 각각의 특색은?", "방문하고 싶은 와이너리와 그곳에서 기대하는 경험은?"]),
            Milestone(title: "투어 예약", description: "와이너리 투어", successCriteria: ["선택한 투어의 코스와 포함된 프로그램을 설명해보세요", "투어를 통해 가장 기대하는 경험이나 배우고 싶은 것은?", "함께 가는 사람과 이 투어가 특별한 이유는?"]),
            Milestone(title: "와인 지식", description: "기초 테이스팅", successCriteria: ["테이스팅에 대해 공부하면서 알게 된 중요한 포인트들은?", "관심 있는 포도 품종과 그 품종의 특징을 설명해보세요", "와인 테이스팅을 통해 발견하고 싶은 나만의 취향은?"])
        ],
        .오페라_공연_관람하기: [
            Milestone(title: "공연 선택", description: "오페라 작품 선택", successCriteria: ["어떤 오페라 작품을 선택했고, 그 작품에 대해 알게 된 것은?", "선택한 공연장의 특별한 역사나 매력을 설명해보세요", "이 공연을 통해 경험하고 싶은 감정이나 순간은?"]),
            Milestone(title: "티켓 예매", description: "좌석 선택", successCriteria: ["좌석을 선택할 때 고려한 점과 선택 이유를 설명해보세요", "오페라 공연을 위해 준비한 복장과 그 선택의 의미는?", "함께 가는 사람이 있다면 누구이고, 왜 함께 하고 싶나요?"]),
            Milestone(title: "공연 준비", description: "에티켓 숙지", successCriteria: ["작품의 줄거리와 인상 깊은 아리아에 대해 정리해보세요", "오페라 관람 에티켓 중 새롭게 알게 된 것들은?", "공연 후 기록하고 싶은 감상과 기대하는 감동은?"])
        ],
        .뮤지컬_브로드웨이에서_보기: [
            Milestone(title: "작품 선택", description: "브로드웨이 뮤지컬", successCriteria: ["어떤 뮤지컬을 선택했고, 그 작품에 끌린 이유는?", "작품에 대해 조사하면서 알게 된 흥미로운 정보는?", "브로드웨이 뮤지컬 관람이 나에게 특별한 의미는?"]),
            Milestone(title: "티켓 예매", description: "공식 예매 또는 TKTS", successCriteria: ["티켓 예매 과정에서 알게 된 팁이나 경험을 공유해주세요", "좌석을 선택할 때 고려한 점과 선택 이유는?", "공연을 더 즐기기 위해 미리 준비한 것들은?"]),
            Milestone(title: "뉴욕 여행", description: "타임스퀘어 방문", successCriteria: ["뉴욕 여행 일정과 공연 전후로 계획한 활동은?", "타임스퀘어와 브로드웨이 주변에서 경험하고 싶은 것은?", "이 여행에서 뮤지컬 외에 기대하는 특별한 순간은?"])
        ],
        .록_콘서트_최전방_관람하기: [
            Milestone(title: "아티스트 선택", description: "좋아하는 밴드/가수", successCriteria: ["어떤 아티스트를 보고 싶고, 그 아티스트가 나에게 특별한 이유는?", "이 아티스트의 어떤 곡이나 앨범이 가장 기대되나요?", "콘서트에서 가장 기대하는 순간이나 퍼포먼스는?"]),
            Milestone(title: "티켓 예매", description: "스탠딩/최전방", successCriteria: ["티켓팅 전략과 준비 과정을 설명해보세요", "최전방에서 관람하고 싶은 이유와 기대하는 경험은?", "콘서트 당일 입장을 위한 계획은 어떻게 세웠나요?"]),
            Milestone(title: "콘서트 준비", description: "체력 및 준비물", successCriteria: ["콘서트를 위한 체력 관리와 컨디션 준비 계획은?", "준비한 물품 목록과 그 선택 이유를 설명해보세요", "콘서트 후 남기고 싶은 추억과 기록 방법은?"])
        ],
        .오로라_사진_촬영하기: [
            Milestone(title: "장소 선택", description: "오로라 명소", successCriteria: ["어떤 오로라 관측 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 오로라 명소들의 특징과 각각의 장단점을 비교해보세요", "선택한 장소에서 오로라 외에 기대하는 경험은?"]),
            Milestone(title: "시즌 확인", description: "9월-3월 추천", successCriteria: ["방문 시기를 선택할 때 고려한 요소들을 정리해보세요", "오로라 관측에 최적인 날씨와 달 조건에 대해 알게 된 것은?", "오로라를 보지 못할 경우의 대안 활동 계획은?"]),
            Milestone(title: "촬영 장비", description: "카메라 세팅", successCriteria: ["오로라 촬영을 위해 준비한 장비와 선택 이유를 설명해보세요", "오로라 사진 촬영 설정과 기법에 대해 공부한 내용은?", "촬영하고 싶은 구도나 장면을 미리 구상해보세요"])
        ],
        .세계_일주_크루즈_타기: [
            Milestone(title: "크루즈 선택", description: "세계 일주 노선", successCriteria: ["어떤 크루즈를 선택했고, 그 크루즈의 특별한 매력과 노선은?", "여러 크루즈 회사를 비교하면서 알게 된 각각의 특징은?", "세계 일주 크루즈가 나에게 주는 의미와 이 여행에서 기대하는 것은?"]),
            Milestone(title: "예약하기", description: "최소 1년 전 예약", successCriteria: ["선택한 캐빈 타입과 그 선택의 이유를 설명해보세요", "가장 기대되는 기항지와 그곳에서 하고 싶은 활동은?", "비자 및 서류 준비 과정에서 알게 된 중요한 정보는?"]),
            Milestone(title: "장기 여행 준비", description: "짐 꾸리기", successCriteria: ["장기 여행을 위한 짐 리스트와 선택 기준을 설명해보세요", "선상 생활과 기항지 방문을 위한 건강 관리 계획은?", "몇 개월간의 여행 동안 유지하고 싶은 루틴이나 습관은?"])
        ],
        .북극_탐험하기: [
            Milestone(title: "탐험 방식", description: "쇄빙선 크루즈", successCriteria: ["어떤 탐험 방식을 선택했고, 그 방식의 특별한 매력은?", "조사한 북극 탐험 루트들의 특징을 비교해보세요", "북극 탐험이 나에게 주는 의미와 기대하는 경험은?"]),
            Milestone(title: "예약 및 준비", description: "전문 탐험 업체", successCriteria: ["선택한 탐험 업체의 특징과 선택 이유를 설명해보세요", "극지방을 위해 준비한 방한 장비와 선택 기준은?", "극한 환경에 대비한 건강 관리와 안전 준비는?"]),
            Milestone(title: "야생동물 관찰", description: "북극곰, 바다코끼리", successCriteria: ["가장 만나고 싶은 북극 야생동물과 그 이유는?", "야생동물 촬영을 위해 준비한 장비와 구상한 장면은?", "야생동물 관찰 시 지켜야 할 안전 수칙과 에티켓은?"])
        ],
        .남극_펭귄과_만나기: [
            Milestone(title: "남극 크루즈", description: "탐험 크루즈 선택", successCriteria: ["어떤 남극 크루즈를 선택했고, 그 크루즈의 특별한 코스는?", "여러 탐험 크루즈를 비교하면서 알게 된 각각의 특징은?", "남극 여행이 나에게 주는 의미와 이 여행에서 가장 기대하는 것은?"]),
            Milestone(title: "비용 및 예약", description: "고가의 탐험", successCriteria: ["이 여행을 위한 예산 계획과 준비 과정을 설명해보세요", "예약 과정에서 알게 된 중요한 정보나 팁은?", "취소 및 긴급 상황에 대비한 보험과 계획은?"]),
            Milestone(title: "펭귄 관찰 준비", description: "상륙 준비", successCriteria: ["남극 상륙을 위해 준비한 장비와 복장을 설명해보세요", "펭귄 촬영을 위해 준비한 장비와 구상한 장면은?", "펭귄 관찰 시 지켜야 할 규칙과 에티켓에 대해 알게 된 것은?"])
        ],
        .사막에서_별_관측하기: [
            Milestone(title: "사막 선택", description: "별 관측 명소", successCriteria: ["어떤 사막을 선택했고, 그곳의 밤하늘이 특별한 이유는?", "조사한 별 관측 명소들의 특징을 비교해보세요", "사막에서 보고 싶은 천체나 별자리는 무엇인가요?"]),
            Milestone(title: "시기 선택", description: "신월 주변 추천", successCriteria: ["방문 시기를 선택할 때 고려한 요소들을 정리해보세요", "은하수나 특별한 천문 현상 관측 계획이 있나요?", "날씨와 달 조건에 대해 조사하면서 알게 된 것은?"]),
            Milestone(title: "관측 준비", description: "장비 및 투어", successCriteria: ["별 관측을 위해 준비한 장비와 앱을 설명해보세요", "사막의 밤 추위에 대비한 복장과 준비물은?", "별 관측 경험을 기록하고 싶은 방법과 기대하는 감동은?"])
        ],
        .동굴_탐험하기: [
            Milestone(title: "동굴 선택", description: "동굴 종류", successCriteria: ["어떤 동굴을 선택했고, 그 동굴의 특별한 매력은?", "조사한 동굴들의 특징과 형성 과정에 대해 알게 된 것은?", "동굴 탐험을 통해 가장 기대하는 경험이나 장면은?"]),
            Milestone(title: "투어 예약", description: "가이드 투어 필수", successCriteria: ["선택한 투어의 코스와 난이도를 설명해보세요", "가이드 투어를 통해 배우고 싶은 동굴 지식은?", "투어 중 안전을 위해 알아야 할 중요한 수칙은?"]),
            Milestone(title: "탐험 준비", description: "복장 및 장비", successCriteria: ["동굴 탐험을 위해 준비한 복장과 장비를 설명해보세요", "어두운 동굴에서 조명 장비 사용 계획과 촬영 구상은?", "동굴 탐험에 대한 기대와 약간의 긴장이 있다면 무엇인가요?"])
        ],
        .폭포_뒤에서_사진찍기: [
            Milestone(title: "폭포 선택", description: "뒤로 갈 수 있는 폭포", successCriteria: ["어떤 폭포를 선택했고, 그 폭포의 특별한 매력은?", "조사한 폭포들의 특징과 접근 방법을 비교해보세요", "폭포 뒤에서 촬영하고 싶은 장면이나 구도를 구상해보세요"]),
            Milestone(title: "방문 계획", description: "시즌 및 시간", successCriteria: ["방문 시기와 시간대를 선택할 때 고려한 요소들은?", "폭포 물량과 빛의 조건에 대해 조사한 내용은?", "예상되는 어려움과 그에 대한 대비 계획은?"]),
            Milestone(title: "촬영 준비", description: "방수 장비", successCriteria: ["폭포 촬영을 위해 준비한 방수 장비를 설명해보세요", "물에 젖을 것에 대비한 복장과 준비물은?", "폭포 뒤에서의 경험을 기록할 방법과 기대하는 순간은?"])
        ],
        .화산_분화구_보기: [
            Milestone(title: "화산 선택", description: "활화산 vs 휴화산", successCriteria: ["어떤 화산을 선택했고, 그 화산의 특별한 매력은?", "활화산과 휴화산의 차이와 각각의 매력을 비교해보세요", "화산에서 가장 보고 싶은 장면이나 경험은?"]),
            Milestone(title: "투어 예약", description: "안전한 관람 투어", successCriteria: ["선택한 투어의 안전 시스템과 코스를 설명해보세요", "화산 활동 상태 확인 방법과 주의 사항은?", "투어 가이드에게 물어보고 싶은 화산 관련 질문은?"]),
            Milestone(title: "방문 준비", description: "건강 및 장비", successCriteria: ["화산 방문을 위해 준비한 장비와 복장을 설명해보세요", "화산가스와 고도에 대비한 건강 관리 계획은?", "화산 경험을 기록하고 싶은 방법과 기대하는 감동은?"])
        ],
        .온천_투어하기: [
            Milestone(title: "온천 지역 선택", description: "유명 온천지", successCriteria: ["어떤 온천 지역을 선택했고, 그곳의 특별한 매력은?", "조사한 온천 명소들의 특징과 효능을 비교해보세요", "온천 여행에서 가장 기대하는 힐링 경험은?"]),
            Milestone(title: "온천 예약", description: "료칸/리조트", successCriteria: ["선택한 숙소의 특징과 선택 이유를 설명해보세요", "온천과 함께 즐기고 싶은 식사나 서비스는?", "함께 가는 사람과 이 여행이 특별한 이유는?"]),
            Milestone(title: "온천 에티켓", description: "입욕 매너", successCriteria: ["온천 에티켓에 대해 새롭게 알게 된 것들을 정리해보세요", "온천 문화의 특별함과 그 경험에서 기대하는 것은?", "온천 후 즐기고 싶은 휴식 방법이나 활동은?"])
        ],
        .빙하_위_걷기: [
            Milestone(title: "빙하 선택", description: "트레킹 명소", successCriteria: ["어떤 빙하를 선택했고, 그 빙하의 특별한 매력은?", "조사한 빙하들의 특징과 트레킹 코스를 비교해보세요", "빙하 위를 걸으면서 경험하고 싶은 순간은?"]),
            Milestone(title: "투어 예약", description: "가이드 필수", successCriteria: ["선택한 트레킹 투어의 코스와 난이도를 설명해보세요", "빙하 트레킹 장비의 사용법에 대해 알게 된 것은?", "가이드에게 물어보고 싶은 빙하 관련 질문은?"]),
            Milestone(title: "체력 및 장비", description: "트레킹 준비", successCriteria: ["빙하 트레킹을 위한 체력 준비와 훈련 계획은?", "준비한 복장과 장비를 설명해보세요", "극한 환경에서의 트레킹에 대한 기대와 각오는?"])
        ],
        .사파리_차량_운전하기: [
            Milestone(title: "사파리 선택", description: "셀프 드라이브 사파리", successCriteria: ["어떤 사파리를 선택했고, 그곳의 특별한 매력은?", "셀프 드라이브를 선택한 이유와 기대하는 자유로움은?", "가장 만나고 싶은 야생동물과 그 이유는?"]),
            Milestone(title: "차량 렌탈", description: "4WD 필수", successCriteria: ["렌탈 차량 선택 시 고려한 점과 선택 이유를 설명해보세요", "사파리 운전을 위해 준비한 서류와 보험 정보는?", "오프로드 운전에 대한 경험이나 연습 계획은?"]),
            Milestone(title: "사파리 준비", description: "안전 수칙", successCriteria: ["야생동물 안전 수칙 중 가장 중요하게 기억할 것들은?", "사파리 촬영을 위해 준비한 장비와 구상한 장면은?", "셀프 드라이브 사파리에서 기대하는 특별한 경험은?"])
        ],
        .코끼리_목욕시키기: [
            Milestone(title: "체험 장소", description: "윤리적 코끼리 보호소", successCriteria: ["어떤 보호소를 선택했고, 그곳이 윤리적인지 확인한 방법은?", "코끼리 복지에 대해 조사하면서 알게 된 중요한 점은?", "코끼리와의 교감에서 가장 기대하는 순간은?"]),
            Milestone(title: "예약하기", description: "반나절/종일 프로그램", successCriteria: ["선택한 프로그램의 활동과 특징을 설명해보세요", "코끼리와 함께하는 활동 중 가장 기대되는 것은?", "이 체험이 나에게 주는 의미와 기대하는 감동은?"]),
            Milestone(title: "체험 준비", description: "복장 및 준비물", successCriteria: ["체험을 위해 준비한 복장과 물품을 설명해보세요", "코끼리와의 만남을 기록할 방법과 구상한 장면은?", "코끼리 보호소에서 배우고 싶은 것은?"])
        ],
        .상어와_다이빙하기: [
            Milestone(title: "다이빙 타입", description: "케이지 vs 자유 다이빙", successCriteria: ["케이지와 자유 다이빙 중 어떤 것을 선택했고, 그 이유는?", "상어와의 만남에 대한 기대와 두려움을 솔직히 적어보세요", "만나고 싶은 상어 종류와 그 이유는?"]),
            Milestone(title: "장소 선택", description: "상어 다이빙 명소", successCriteria: ["어떤 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 상어 다이빙 명소들의 특징을 비교해보세요", "선택한 장소에서 기대하는 상어 관찰 경험은?"]),
            Milestone(title: "안전 준비", description: "전문 업체 선택", successCriteria: ["업체 선택 시 안전 관련해서 확인한 중요한 정보는?", "상어 다이빙 안전 수칙에 대해 배운 것은?", "이 도전을 통해 극복하고 싶은 두려움이나 목표는?"])
        ],
        .돌고래와_수영하기: [
            Milestone(title: "체험 장소", description: "야생 vs 시설", successCriteria: ["야생과 시설 중 어떤 것을 선택했고, 그 이유는?", "돌고래 복지와 윤리적 프로그램에 대해 조사한 내용은?", "돌고래와의 만남에서 가장 기대하는 순간은?"]),
            Milestone(title: "투어 예약", description: "스노클링/다이빙", successCriteria: ["선택한 투어의 특징과 돌고래 조우 확률에 대해 알게 된 것은?", "소규모 그룹을 선택한 이유와 기대하는 경험은?", "돌고래와의 교감에서 느끼고 싶은 감정은?"]),
            Milestone(title: "수영 준비", description: "스노클링 장비", successCriteria: ["수영 실력과 스노클링 경험에 대해 설명해보세요", "돌고래 관찰 에티켓과 거리 유지 규칙에 대해 배운 것은?", "이 경험을 기록할 방법과 기대하는 감동은?"])
        ],
        .고래_관측하기: [
            Milestone(title: "시즌 확인", description: "고래 이동 시기", successCriteria: ["방문 시기를 선택할 때 고려한 고래 시즌 정보는?", "관찰하고 싶은 고래 종류와 그 종의 특징은?", "고래 관측 성공률을 높이기 위해 조사한 정보는?"]),
            Milestone(title: "장소 선택", description: "고래 관측 명소", successCriteria: ["어떤 관측 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 고래 관측 명소들의 특징을 비교해보세요", "선택한 장소에서 기대하는 고래 관측 경험은?"]),
            Milestone(title: "투어 준비", description: "보트 투어 예약", successCriteria: ["선택한 투어의 코스와 특징을 설명해보세요", "멀미 예방과 장시간 항해 대비 준비는?", "고래 촬영을 위해 준비한 장비와 구상한 장면은?"])
        ],
        .카약_원정하기: [
            Milestone(title: "난이도 선택", description: "초보 vs 중급", successCriteria: ["어떤 난이도의 카약을 선택했고, 그 선택의 이유는?", "바다 카약과 급류 카약의 차이와 각각의 매력을 비교해보세요", "카약을 통해 경험하고 싶은 자연 풍경이나 순간은?"]),
            Milestone(title: "장소 선택", description: "카약 명소", successCriteria: ["어떤 카약 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 카약 명소들의 특징을 비교해보세요", "선택한 장소에서 가장 기대되는 풍경이나 경험은?"]),
            Milestone(title: "기술 배우기", description: "패들링 기초", successCriteria: ["패들링 기술에 대해 배운 것을 설명해보세요", "안전을 위해 알아야 할 중요한 기술과 대처법은?", "카약 원정을 통해 도전하고 싶은 것과 목표는?"])
        ],
        .카누_타기: [
            Milestone(title: "장소 선택", description: "카누 체험지", successCriteria: ["어떤 카누 체험지를 선택했고, 그곳의 특별한 매력은?", "강과 호수 중 어떤 환경을 선호하고, 그 이유는?", "카누를 타면서 보고 싶은 풍경이나 경험하고 싶은 순간은?"]),
            Milestone(title: "예약하기", description: "카누 렌탈", successCriteria: ["선택한 카누 타입과 체험 시간을 설명해보세요", "함께 가는 사람이 있다면 누구이고, 왜 함께 하고 싶나요?", "카누 체험에서 기대하는 힐링이나 교감은?"]),
            Milestone(title: "체험 준비", description: "복장 및 안전", successCriteria: ["카누 체험을 위해 준비한 복장과 물품을 설명해보세요", "안전을 위해 알아야 할 주의사항을 정리해보세요", "카누 위에서 하고 싶은 활동이나 기록하고 싶은 순간은?"])
        ],
        .윈드서핑_배우기: [
            Milestone(title: "장소 선택", description: "윈드서핑 스팟", successCriteria: ["어떤 윈드서핑 장소를 선택했고, 그곳의 바람 조건 특징은?", "조사한 윈드서핑 스팟들의 장단점을 비교해보세요", "윈드서핑을 통해 느끼고 싶은 자유로움과 기대는?"]),
            Milestone(title: "레슨 등록", description: "초보자 강습", successCriteria: ["선택한 레슨 프로그램과 그 선택 이유를 설명해보세요", "윈드서핑에서 가장 배우고 싶은 기술은?", "강습에서 기대하는 것과 목표 수준은?"]),
            Milestone(title: "기초 기술", description: "업홀링, 세일링", successCriteria: ["배운 기초 기술과 연습 과정에서 알게 된 팁은?", "바람을 읽고 활용하는 방법에 대해 배운 것은?", "윈드서핑을 잘하게 되면 도전하고 싶은 것은?"])
        ],
        .카이트서핑_도전하기: [
            Milestone(title: "레슨 등록", description: "IKO 공인 레슨", successCriteria: ["선택한 레슨의 커리큘럼과 특징을 설명해보세요", "카이트서핑을 배우려는 동기와 기대하는 것은?", "레슨 기간 동안의 목표와 달성하고 싶은 기술 수준은?"]),
            Milestone(title: "장소 선택", description: "카이트 서핑 명소", successCriteria: ["어떤 장소를 선택했고, 그곳의 바람과 파도 조건은?", "조사한 카이트서핑 명소들의 특징을 비교해보세요", "선택한 장소에서 가장 기대되는 서핑 경험은?"]),
            Milestone(title: "안전 교육", description: "카이트 조종", successCriteria: ["카이트 조종에 대해 배운 핵심 기술을 설명해보세요", "안전 시스템과 비상 상황 대처법에 대해 배운 것은?", "카이트서핑의 위험성을 인지하고 대비한 안전 계획은?"])
        ],
        .제트스키_타기: [
            Milestone(title: "장소 선택", description: "제트스키 명소", successCriteria: ["어떤 장소를 선택했고, 그곳의 바다 풍경이 기대되는 이유는?", "조사한 제트스키 체험지들의 특징을 비교해보세요", "제트스키를 타면서 느끼고 싶은 스릴과 자유로움은?"]),
            Milestone(title: "렌탈 예약", description: "시간당 렌탈", successCriteria: ["선택한 렌탈 시간과 코스를 설명해보세요", "예약 시 확인한 중요한 조건이나 보험 정보는?", "함께 타는 사람이 있다면 누구이고, 기대하는 경험은?"]),
            Milestone(title: "안전 수칙", description: "운전 방법", successCriteria: ["제트스키 안전 수칙과 조작법에 대해 배운 것은?", "바다에서의 주의사항과 다른 선박과의 규칙은?", "제트스키 체험을 기록하고 싶은 방법과 기대하는 순간은?"])
        ],
        .파라세일링하기: [
            Milestone(title: "장소 선택", description: "파라세일링 명소", successCriteria: ["어떤 파라세일링 장소를 선택했고, 그곳의 바다 풍경이 기대되는 이유는?", "조사한 파라세일링 명소들의 특징과 높이를 비교해보세요", "파라세일링에서 느끼고 싶은 해방감과 기대하는 순간은?"]),
            Milestone(title: "예약하기", description: "업체 선택", successCriteria: ["선택한 업체의 안전 기록과 선택 이유를 설명해보세요", "가격 비교 후 결정한 옵션과 그 이유는?", "사진/영상 기록 계획과 남기고 싶은 순간은?"]),
            Milestone(title: "체험 준비", description: "복장 및 소지품", successCriteria: ["체험을 위해 준비한 복장과 선택 이유를 설명해보세요", "귀중품 보관과 안전 준비에 대해 정리해보세요", "파라세일링 체험에서 기대하는 감정과 추억은?"])
        ],
        .수상스키_타기: [
            Milestone(title: "장소 선택", description: "수상스키 스팟", successCriteria: ["어떤 수상스키 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 장소들의 수질과 시설을 비교해보세요", "수상스키를 통해 느끼고 싶은 스릴과 성취감은?"]),
            Milestone(title: "레슨 등록", description: "초보자 강습", successCriteria: ["선택한 강습 프로그램의 특징과 기대하는 것은?", "함께 체험하는 사람이 있다면 누구이고, 왜 함께 하고 싶나요?", "수상스키 입문 동기와 배우고 싶은 기술은?"]),
            Milestone(title: "기초 기술", description: "물 위에 서기", successCriteria: ["수상스키 기본 자세에 대해 배운 것을 설명해보세요", "시작 자세와 균형 잡기에서 어려운 점과 극복 방법은?", "안전을 위한 낙법과 주의사항을 정리해보세요"])
        ],
        .웨이크보드하기: [
            Milestone(title: "장소 선택", description: "웨이크보드 스팟", successCriteria: ["케이블 파크와 보트 웨이크보드의 차이점과 선택한 방식의 이유는?", "조사한 웨이크보드 장소들의 특징을 비교해보세요", "웨이크보드를 통해 경험하고 싶은 순간과 기대는?"]),
            Milestone(title: "레슨 등록", description: "초보자 강습", successCriteria: ["선택한 강습 프로그램과 기대하는 배움의 목표는?", "장비 선택 시 고려한 점과 웻수트 등 준비물을 정리해보세요", "웨이크보드를 배우려는 동기와 도전하고 싶은 이유는?"]),
            Milestone(title: "기초 기술", description: "일어서기", successCriteria: ["딥워터 스타트 자세에 대해 배운 핵심 포인트를 설명해보세요", "체중 분배와 균형 잡기에서 알게 된 팁은?", "안전한 낙법과 물에서의 주의사항을 정리해보세요"])
        ],
        .플라이보드하기: [
            Milestone(title: "장소 선택", description: "플라이보드 체험지", successCriteria: ["어떤 플라이보드 장소를 선택했고, 그곳의 특별한 매력은?", "조사한 체험지들의 시설과 환경을 비교해보세요", "플라이보드에서 느끼고 싶은 짜릿함과 기대하는 순간은?"]),
            Milestone(title: "예약하기", description: "체험 시간", successCriteria: ["선택한 체험 시간과 프로그램의 특징을 설명해보세요", "촬영 옵션과 남기고 싶은 특별한 순간 계획은?", "플라이보드 도전에 대한 기대와 약간의 긴장감이 있다면?"]),
            Milestone(title: "기초 연습", description: "밸런스 잡기", successCriteria: ["플라이보드를 위한 수영 실력과 체력 준비 상태를 설명해보세요", "균형 잡기에서 예상되는 어려움과 극복 전략은?", "안전 장비와 주의사항에 대해 알게 된 것을 정리해보세요"])
        ],
        .세일링_요트_조종하기: [
            Milestone(title: "세일링 레슨", description: "요트 조종 배우기", successCriteria: ["어떤 세일링 스쿨을 선택했고, 그곳의 교육 프로그램 특징은?", "세일링을 배우려는 동기와 이 기술이 나에게 주는 의미는?", "자격증 취득 목표와 앞으로의 항해 계획을 설명해보세요"]),
            Milestone(title: "기초 이론", description: "바람, 방향, 매듭", successCriteria: ["바람 방향을 읽는 방법에 대해 배운 것을 설명해보세요", "세일링에서 중요한 매듭 종류와 각각의 용도는?", "세일 조작의 원리와 기본 기술을 정리해보세요"]),
            Milestone(title: "실습 항해", description: "직접 조종하기", successCriteria: ["태킹과 자이빙의 차이점과 각각의 기술 포인트를 설명해보세요", "정박 과정에서 배운 중요한 포인트와 주의사항은?", "비상 상황 대처법과 안전 수칙을 정리해보세요"])
        ],
        .크루즈_디너쇼하기: [
            Milestone(title: "크루즈 선택", description: "디너 크루즈", successCriteria: ["어떤 크루즈를 선택했고, 그 크루즈의 특별한 매력은?", "코스 요리와 공연 프로그램에 대해 조사한 내용은?", "크루즈 디너쇼에서 기대하는 로맨틱한 순간이나 경험은?"]),
            Milestone(title: "예약하기", description: "날짜 및 시간", successCriteria: ["선택한 시간대와 그 이유를 설명해보세요 (일몰 등)", "좌석이나 테이블 선택 시 고려한 점은?", "함께 가는 사람과 이 경험이 특별한 이유는?"]),
            Milestone(title: "준비하기", description: "복장 및 준비", successCriteria: ["크루즈 디너를 위해 준비한 복장과 그 선택의 의미는?", "특별한 순간을 기록할 방법과 남기고 싶은 추억은?", "멀미 등 건강 대비와 기타 준비사항을 정리해보세요"])
        ],
        .헬리콥터_투어하기: [
            Milestone(title: "장소 선택", description: "헬기 투어 명소", successCriteria: ["어떤 헬기 투어를 선택했고, 그곳에서 보고 싶은 풍경은?", "조사한 헬기 투어 명소들의 특징을 비교해보세요", "헬기에서 내려다보는 경험에서 기대하는 감동은?"]),
            Milestone(title: "예약하기", description: "투어 시간 선택", successCriteria: ["선택한 비행 시간과 코스의 특징을 설명해보세요", "일몰 등 특별한 시간대를 고려한 이유가 있다면?", "사진/영상 기록 계획과 남기고 싶은 장면은?"]),
            Milestone(title: "탑승 준비", description: "안전 교육", successCriteria: ["안전 교육에서 배운 중요한 내용을 정리해보세요", "헬기 탑승 경험에 대한 기대와 약간의 긴장감이 있다면?", "투어 중 집중해서 보고 싶은 포인트와 기대하는 순간은?"])
        ],
        .소형_비행기_조종하기: [
            Milestone(title: "체험 비행 예약", description: "조종 체험", successCriteria: ["어떤 체험 비행을 선택했고, 그 프로그램의 특징은?", "소형 비행기 조종을 해보고 싶은 이유와 기대하는 경험은?", "비행 자격 조건과 준비 사항에 대해 알게 된 것은?"]),
            Milestone(title: "기초 이론", description: "비행 원리", successCriteria: ["이착륙의 원리에 대해 배운 것을 설명해보세요", "계기판의 주요 장치들과 각각의 역할을 정리해보세요", "조종간 조작의 기본 원리와 주의사항은?"]),
            Milestone(title: "실제 조종", description: "교관과 함께", successCriteria: ["비행 체험에서 가장 기대되는 순간과 도전하고 싶은 기술은?", "하늘에서 내려다보는 풍경에서 기대하는 감동은?", "조종 경험을 통해 얻고 싶은 것과 이 도전의 의미는?"])
        ],
        .글라이더_체험하기: [
            Milestone(title: "글라이딩 센터", description: "체험 장소 선택", successCriteria: ["어떤 글라이딩 센터를 선택했고, 그곳의 특징은?", "글라이더 체험에서 기대하는 무동력 비행의 매력은?", "최적의 날씨 조건에 대해 알게 된 것을 정리해보세요"]),
            Milestone(title: "비행 준비", description: "안전 교육", successCriteria: ["안전 교육에서 배운 핵심 내용을 정리해보세요", "비상 탈출 절차와 주의사항에 대해 배운 것은?", "글라이더 비행에 대한 기대와 약간의 긴장감이 있다면?"]),
            Milestone(title: "글라이딩 체험", description: "무동력 비행", successCriteria: ["상승 기류를 이용한 비행의 원리에 대해 배운 것은?", "조종간을 잡아보면서 느끼고 싶은 감각과 경험은?", "무동력 비행의 특별함과 이 체험에서 기대하는 감동은?"])
        ],
        .행글라이더하기: [
            Milestone(title: "체험 장소", description: "행글라이딩 명소", successCriteria: ["어떤 행글라이딩 장소를 선택했고, 그곳의 풍경이 기대되는 이유는?", "조사한 행글라이딩 명소들의 특징을 비교해보세요", "텐덤 비행을 통해 느끼고 싶은 해방감과 기대는?"]),
            Milestone(title: "예약 및 준비", description: "날씨 확인", successCriteria: ["최적의 바람 조건에 대해 알게 된 것을 정리해보세요", "촬영 계획과 남기고 싶은 특별한 순간은?", "행글라이딩에 대한 기대와 약간의 두려움이 있다면 솔직히 적어보세요"]),
            Milestone(title: "이륙 준비", description: "달리기 이륙", successCriteria: ["달리기 이륙의 기술과 주의사항에 대해 배운 것은?", "체력 준비와 이륙 전 마음가짐은 어떤가요?", "착륙 자세와 안전 수칙을 정리해보세요"])
        ],
        .실내_스카이다이빙하기: [
            Milestone(title: "장소 선택", description: "실내 스카이다이빙 센터", successCriteria: ["어떤 실내 스카이다이빙 센터를 선택했고, 그곳의 시설 특징은?", "조사한 센터들의 시설과 프로그램을 비교해보세요", "실내 스카이다이빙에서 느끼고 싶은 무중력 감각과 기대는?"]),
            Milestone(title: "예약하기", description: "체험 시간 선택", successCriteria: ["선택한 비행 시간과 패키지의 특징을 설명해보세요", "촬영 옵션과 남기고 싶은 순간 계획은?", "함께 체험하는 사람이 있다면 누구이고, 왜 함께 하고 싶나요?"]),
            Milestone(title: "체험 준비", description: "복장 및 교육", successCriteria: ["안전 교육에서 배운 핵심 자세와 주의사항은?", "비행 자세 연습에서 어려운 점과 기대되는 점은?", "실내 스카이다이빙 체험에서 기대하는 짜릿함과 감동은?"])
        ],
        .암벽_등반하기: [
            Milestone(title: "실내 클라이밍", description: "기초 연습", successCriteria: ["실내 클라이밍을 통해 어떤 기초 기술을 연습하고 있나요?", "클라이밍 장비 사용법과 안전 점검에 대해 배운 것은?", "암벽 등반에 도전하려는 동기와 이 스포츠의 매력은?"]),
            Milestone(title: "야외 암벽 선택", description: "등반 장소", successCriteria: ["어떤 암벽을 선택했고, 그곳의 특별한 매력은?", "조사한 암벽 장소들의 난이도와 특징을 비교해보세요", "야외 암벽에서 경험하고 싶은 순간과 도전 목표는?"]),
            Milestone(title: "안전 장비", description: "장비 및 가이드", successCriteria: ["암벽 등반을 위해 준비한 장비와 각각의 역할을 설명해보세요", "파트너나 가이드와 함께하는 이유와 협력 계획은?", "암벽 등반 안전 수칙 중 가장 중요하게 기억할 것들은?"])
        ],
        .볼더링하기: [
            Milestone(title: "볼더링장 선택", description: "실내 볼더링", successCriteria: ["어떤 볼더링장을 선택했고, 그곳의 시설 특징은?", "볼더링을 시작하려는 동기와 이 스포츠의 매력은?", "초보자 코스의 특징과 장비 대여 정보를 정리해보세요"]),
            Milestone(title: "기초 기술", description: "홀드 잡기", successCriteria: ["다양한 홀드 잡는 기술과 각각의 특징을 설명해보세요", "풋워크의 중요성과 연습하면서 알게 된 팁은?", "안전한 낙법과 부상 예방에 대해 배운 것은?"]),
            Milestone(title: "난이도 도전", description: "등급 올리기", successCriteria: ["현재 도전 중인 난이도와 목표로 하는 등급은?", "문제 해결 과정에서 느끼는 성취감과 어려움은?", "볼더링을 통해 얻고 싶은 것과 이 도전의 의미는?"])
        ],
        .클라이밍_자격증_취득하기: [
            Milestone(title: "교육 과정 선택", description: "자격증 종류", successCriteria: ["어떤 클라이밍 자격증을 목표로 하고, 그 선택의 이유는?", "교육 기관 선택 시 고려한 점과 결정 이유는?", "자격증 취득을 통해 이루고 싶은 목표와 의미는?"]),
            Milestone(title: "이론 학습", description: "안전 및 장비", successCriteria: ["로프 매듭의 종류와 각각의 용도를 설명해보세요", "빌레이 기술의 핵심 포인트와 주의사항은?", "안전 점검 절차와 중요하게 확인해야 할 것들을 정리해보세요"]),
            Milestone(title: "실기 시험", description: "자격증 취득", successCriteria: ["실기 연습 과정에서 가장 어려웠던 점과 극복 방법은?", "시험 준비를 위한 연습 계획과 목표는?", "자격증 취득 후 활용 계획과 앞으로의 클라이밍 목표는?"])
        ],
        .트레일_러닝하기: [
            Milestone(title: "코스 선택", description: "트레일 러닝 코스", successCriteria: ["어떤 트레일 코스를 선택했고, 그곳의 자연 환경이 매력적인 이유는?", "조사한 코스들의 난이도와 특징을 비교해보세요", "트레일 러닝을 통해 느끼고 싶은 자연과의 교감은?"]),
            Milestone(title: "장비 준비", description: "트레일화 및 장비", successCriteria: ["트레일 러닝화를 선택할 때 고려한 점과 결정 이유는?", "수분 보급과 안전을 위해 준비한 장비를 설명해보세요", "GPS나 기록 장비를 통해 추적하고 싶은 데이터와 목표는?"]),
            Milestone(title: "훈련 시작", description: "오르막/내리막 연습", successCriteria: ["기초 체력 훈련 계획과 현재 진행 상황을 설명해보세요", "오르막과 내리막 기술의 핵심 포인트와 어려운 점은?", "트레일 러닝을 통해 달성하고 싶은 목표와 이 도전의 의미는?"])
        ],
        .크로스컨트리_스키_타기: [
            Milestone(title: "장소 선택", description: "크로스컨트리 코스", successCriteria: ["어떤 크로스컨트리 장소를 선택했고, 그곳의 설경이 기대되는 이유는?", "조사한 코스들의 난이도와 특징을 비교해보세요", "크로스컨트리 스키를 통해 느끼고 싶은 겨울 자연의 매력은?"]),
            Milestone(title: "장비 대여", description: "스키 및 폴", successCriteria: ["장비 선택 시 고려한 점과 부츠 피팅의 중요성을 설명해보세요", "스키 왁싱의 역할과 관리에 대해 알게 된 것은?", "크로스컨트리 스키 장비의 특징과 일반 스키와의 차이점은?"]),
            Milestone(title: "기초 기술", description: "클래식 vs 스케이팅", successCriteria: ["클래식 주법과 스케이팅 주법의 차이와 각각의 특징을 설명해보세요", "경사 오르내리기에서 배운 기술 포인트와 주의사항은?", "크로스컨트리 스키의 매력과 이 스포츠에서 기대하는 경험은?"])
        ],
        .스노보드_배우기: [
            Milestone(title: "스키장 선택", description: "스노보드 강습", successCriteria: ["어떤 스키장을 선택했고, 그곳의 슬로프 특징은?", "강습 프로그램의 내용과 기대하는 것을 설명해보세요", "스노보드를 배우려는 동기와 이 스포츠의 매력은?"]),
            Milestone(title: "장비 준비", description: "보드 및 보호대", successCriteria: ["레귤러/구피 스탠스 결정 과정과 자신의 스탠스를 설명해보세요", "안전을 위해 준비한 보호대와 그 중요성은?", "스노보드 장비 선택 시 고려한 점은?"]),
            Milestone(title: "기초 기술", description: "낙법, 사이드슬립", successCriteria: ["안전한 낙법의 핵심 포인트와 배운 것을 설명해보세요", "사이드슬립 기술과 연습 과정에서 알게 된 팁은?", "첫 턴 도전에 대한 기대와 목표로 하는 기술 수준은?"])
        ],
        .스키_점프하기: [
            Milestone(title: "스키 실력", description: "중급 이상 필요", successCriteria: ["현재 스키 실력과 점프 도전을 위한 준비 상태를 설명해보세요", "속도에 대한 두려움과 그것을 극복하려는 마음가짐은?", "스키 점프 센터 선택 시 고려한 점과 결정 이유는?"]),
            Milestone(title: "소형 점프대", description: "초보자 점프", successCriteria: ["첫 점프를 위한 점프대 선택과 그 이유를 설명해보세요", "안전 장비와 보호 장치에 대해 알게 된 것은?", "강사의 지도를 통해 배우고 싶은 핵심 기술은?"]),
            Milestone(title: "기초 기술", description: "이륙, 비행, 착지", successCriteria: ["이륙 자세의 핵심 포인트와 주의사항을 정리해보세요", "공중 자세 유지의 어려움과 연습 방법은?", "텔레마크 착지 기술과 스키 점프에서 기대하는 짜릿함은?"])
        ],
        .아이스_스케이팅하기: [
            Milestone(title: "스케이트장 선택", description: "실내/야외 링크", successCriteria: ["어떤 스케이트장을 선택했고, 그곳의 분위기가 기대되는 이유는?", "실내와 야외 링크의 장단점을 비교해보세요", "아이스 스케이팅을 통해 느끼고 싶은 겨울의 즐거움은?"]),
            Milestone(title: "장비 준비", description: "스케이트 및 보호대", successCriteria: ["스케이트 피팅의 중요성과 선택 시 고려한 점은?", "안전을 위해 준비한 보호대와 복장을 설명해보세요", "함께 스케이트 타는 사람이 있다면 누구이고, 기대하는 순간은?"]),
            Milestone(title: "기초 기술", description: "균형 잡기, 멈추기", successCriteria: ["빙판 위 균형 잡기에서 배운 핵심 포인트와 팁은?", "기초 스케이팅 동작과 연습 과정에서 알게 된 것은?", "멈추는 기술과 안전 수칙을 정리해보세요"])
        ],
        .아이스하키_관람하기: [
            Milestone(title: "경기 선택", description: "리그 및 팀", successCriteria: ["어떤 경기를 선택했고, 그 경기가 특별한 이유는?", "응원하는 팀이 있다면 그 팀에 관심을 갖게 된 계기는?", "아이스하키 경기 관람에서 기대하는 현장의 열기와 감동은?"]),
            Milestone(title: "티켓 예매", description: "좋은 좌석 선택", successCriteria: ["좌석 선택 시 고려한 점과 선택 이유를 설명해보세요", "함께 관람하는 사람과 이 경험이 특별한 이유는?", "경기 관람을 더 즐기기 위해 미리 알아본 정보는?"]),
            Milestone(title: "관람 준비", description: "경기장 방문", successCriteria: ["아이스하키 규칙과 관전 포인트를 정리해보세요", "경기장의 추위에 대비한 복장과 준비물은?", "경기 관람 후 남기고 싶은 추억과 기대하는 순간은?"])
        ],
        .컬링_체험하기: [
            Milestone(title: "체험 장소", description: "컬링장 찾기", successCriteria: ["어떤 컬링장을 선택했고, 그곳의 시설 특징은?", "컬링을 체험하려는 동기와 이 스포츠의 매력은?", "체험 프로그램의 내용과 기대하는 것을 설명해보세요"]),
            Milestone(title: "기초 배우기", description: "딜리버리, 스위핑", successCriteria: ["스톤 딜리버리 기술과 자세의 핵심 포인트를 설명해보세요", "스위핑의 역할과 기술에 대해 배운 것은?", "컬링 경기 규칙의 특이한 점과 전략적 매력을 정리해보세요"]),
            Milestone(title: "체험하기", description: "미니 게임", successCriteria: ["함께 팀을 구성한 사람들과 기대하는 팀워크는?", "미니 게임에서 시도해보고 싶은 전략이나 작전은?", "컬링 체험을 통해 느끼고 싶은 재미와 성취감은?"])
        ],
        .개썰매_타기: [
            Milestone(title: "장소 선택", description: "개썰매 체험지", successCriteria: ["어떤 개썰매 체험지를 선택했고, 그곳의 겨울 풍경이 기대되는 이유는?", "조사한 체험지들의 특징과 프로그램을 비교해보세요", "개썰매 체험에서 기대하는 눈밭 질주의 짜릿함과 동물과의 교감은?"]),
            Milestone(title: "투어 예약", description: "반나절/종일 투어", successCriteria: ["선택한 투어의 코스와 특징을 설명해보세요", "직접 운전과 탑승의 차이와 선택 이유는?", "오로라 등 추가 체험과의 결합 계획이 있다면?"]),
            Milestone(title: "방한 준비", description: "따뜻한 복장", successCriteria: ["극한 추위에 대비한 방한 복장과 장비를 설명해보세요", "개썰매 체험 중 주의사항과 준비물을 정리해보세요", "개썰매 체험에서 기대하는 특별한 순간과 추억은?"])
        ],
        .스노모빌하기: [
            Milestone(title: "장소 선택", description: "스노모빌 체험지", successCriteria: ["어떤 스노모빌 체험지를 선택했고, 그곳의 설원 풍경이 기대되는 이유는?", "조사한 체험지들의 특징과 조건을 비교해보세요", "스노모빌에서 느끼고 싶은 눈밭 질주의 짜릿함과 자유로움은?"]),
            Milestone(title: "투어 예약", description: "가이드 투어", successCriteria: ["선택한 투어의 코스와 소요 시간을 설명해보세요", "장비 제공과 보험 조건에 대해 확인한 내용은?", "함께 체험하는 사람과 기대하는 순간은?"]),
            Milestone(title: "운전 준비", description: "안전 교육", successCriteria: ["안전 교육에서 배운 운전 기술과 주의사항을 정리해보세요", "속도 제한과 안전 규칙에 대해 알게 된 것은?", "극한 추위에 대비한 방한 장비와 준비물을 설명해보세요"])
        ],
        .아이스_피싱하기: [
            Milestone(title: "장소 선택", description: "얼음 낚시터", successCriteria: ["어떤 얼음 낚시터를 선택했고, 그곳의 겨울 풍경이 기대되는 이유는?", "조사한 낚시터들의 특징과 잡을 수 있는 어종을 비교해보세요", "아이스 피싱에서 기대하는 특별한 겨울 체험과 매력은?"]),
            Milestone(title: "장비 준비", description: "낚시 장비", successCriteria: ["얼음 낚시를 위해 준비한 장비와 각각의 용도를 설명해보세요", "미끼 선택과 낚시 기법에 대해 알게 된 것은?", "텐트나 의자 등 편의 장비 준비 계획은?"]),
            Milestone(title: "방한 준비", description: "추위 대비", successCriteria: ["장시간 추위에 대비한 방한 복장과 장비를 설명해보세요", "따뜻하게 지내기 위한 준비물과 팁을 정리해보세요", "얼음 위에서의 여유로운 시간에 기대하는 것은?"])
        ],
        .북유럽_사우나하기: [
            Milestone(title: "사우나 선택", description: "전통 사우나 체험", successCriteria: ["어떤 북유럽 사우나를 선택했고, 그곳의 특별한 매력은?", "핀란드 사우나와 스웨덴 바스투의 차이점과 각각의 특징을 비교해보세요", "호수나 바다 근처 사우나에서 기대하는 자연과의 교감은?"]),
            Milestone(title: "사우나 예약", description: "프라이빗/퍼블릭", successCriteria: ["프라이빗과 퍼블릭 사우나의 차이와 선택 이유를 설명해보세요", "북유럽 사우나 에티켓에 대해 새롭게 알게 된 것들은?", "함께 체험하는 사람과 이 경험이 특별한 이유는?"]),
            Milestone(title: "체험 준비", description: "에티켓 숙지", successCriteria: ["사우나 후 차가운 물에 들어가는 경험에 대한 기대와 각오는?", "비히타(자작나무 다발) 사용법과 그 효과에 대해 알게 된 것은?", "북유럽 사우나 문화를 통해 경험하고 싶은 힐링과 휴식은?"])
        ],
        .터키식_목욕탕하기: [
            Milestone(title: "함맘 선택", description: "터키 전통 목욕탕", successCriteria: ["어떤 함맘을 선택했고, 그곳의 역사와 특별한 분위기는?", "관광객용과 로컬용 함맘의 차이와 선택 이유를 설명해보세요", "터키식 목욕탕에서 기대하는 힐링과 문화 체험은?"]),
            Milestone(title: "서비스 선택", description: "스크럽/마사지", successCriteria: ["선택한 서비스와 각각의 특징을 설명해보세요", "케세 스크럽의 효과와 그 경험에 대한 기대는?", "함맘 서비스를 통해 느끼고 싶은 휴식과 재충전은?"]),
            Milestone(title: "에티켓 숙지", description: "함맘 문화", successCriteria: ["함맘 이용 에티켓과 절차에 대해 알게 된 것을 정리해보세요", "팁 문화와 현지 관습에 대해 조사한 내용은?", "터키 함맘 문화의 특별함과 이 체험에서 배우고 싶은 것은?"])
        ],
        .일본_료칸_체험하기: [
            Milestone(title: "료칸 선택", description: "전통 료칸", successCriteria: ["어떤 료칸을 선택했고, 그곳의 특별한 매력과 역사는?", "온천과 가이세키 요리에 대해 조사한 내용을 정리해보세요", "일본 료칸 체험에서 기대하는 전통 문화의 아름다움은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["숙박 옵션 선택 시 고려한 점과 결정 이유를 설명해보세요", "가이세키 요리에서 기대하는 음식과 경험은?", "함께 여행하는 사람과 이 체험이 특별한 이유는?"]),
            Milestone(title: "에티켓 숙지", description: "료칸 문화", successCriteria: ["유카타 착용법과 료칸에서의 복장 에티켓을 정리해보세요", "다다미방과 일본 전통 숙박의 에티켓에 대해 알게 된 것은?", "온천 입욕 매너와 일본 목욕 문화의 특별함을 설명해보세요"])
        ],
        .한옥_스테이하기: [
            Milestone(title: "한옥 선택", description: "전통 한옥", successCriteria: ["어떤 한옥을 선택했고, 그곳의 역사와 건축적 특징은?", "조사한 한옥들의 분위기와 특색을 비교해보세요", "한옥 스테이에서 기대하는 한국 전통 문화의 정취는?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["숙박 옵션 선택 시 고려한 점(온돌방, 조식 등)을 설명해보세요", "함께 묵는 사람과 이 체험이 특별한 이유는?", "한옥 생활에서 기대하는 특별한 순간과 경험은?"]),
            Milestone(title: "체험 준비", description: "한복 체험", successCriteria: ["한복 체험이나 전통 문화 활동에 대한 계획을 설명해보세요", "다도 체험이나 전통 놀이에서 배우고 싶은 것은?", "한옥 스테이를 통해 느끼고 싶은 한국 전통의 아름다움과 여유는?"])
        ],
        .사막_캠핑하기: [
            Milestone(title: "사막 선택", description: "캠핑 가능 사막", successCriteria: ["어떤 사막을 선택했고, 그곳의 특별한 풍경과 분위기는?", "조사한 사막들의 특징과 캠핑 환경을 비교해보세요", "사막에서의 밤하늘과 자연에서 기대하는 감동은?"]),
            Milestone(title: "투어 예약", description: "사막 캠핑 투어", successCriteria: ["선택한 투어의 코스와 포함된 활동을 설명해보세요", "낙타 타기나 사막 활동에서 기대하는 체험은?", "사막 캠프에서의 식사와 문화 체험에 기대하는 것은?"]),
            Milestone(title: "준비물", description: "사막 대비", successCriteria: ["낮과 밤의 극심한 온도 차이에 대비한 준비물을 설명해보세요", "사막 생활에 필요한 필수 장비와 주의사항을 정리해보세요", "사막 캠핑에서 기대하는 특별한 순간과 경험은?"])
        ],
        .글램핑하기: [
            Milestone(title: "글램핑장 선택", description: "글램핑 명소", successCriteria: ["어떤 글램핑장을 선택했고, 그곳의 자연 환경과 시설 특징은?", "조사한 글램핑장들의 시설과 분위기를 비교해보세요", "글램핑에서 기대하는 자연 속 편안한 휴식과 체험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["선택한 옵션(BBQ, 체험활동 등)과 그 이유를 설명해보세요", "함께 가는 사람과 이 여행이 특별한 이유는?", "글램핑에서 즐기고 싶은 활동과 기대하는 추억은?"]),
            Milestone(title: "준비물", description: "짐 꾸리기", successCriteria: ["글램핑을 위해 준비한 복장과 물품을 설명해보세요", "함께 즐길 활동(보드게임, 요리 등)에 대한 계획은?", "자연 속에서 보내는 시간에 기대하는 힐링과 여유는?"])
        ],
        .트리하우스_숙박하기: [
            Milestone(title: "트리하우스 선택", description: "숙박 장소", successCriteria: ["어떤 트리하우스를 선택했고, 그곳의 독특한 분위기와 주변 자연 환경은?", "조사한 트리하우스들의 특징과 시설을 비교해보세요", "나무 위에서의 숙박에서 기대하는 동화 같은 경험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["시설과 접근성에 대해 확인한 내용을 설명해보세요", "함께 묵는 사람과 이 특별한 숙박의 의미는?", "트리하우스에서 경험하고 싶은 특별한 순간과 기대는?"]),
            Milestone(title: "체험 준비", description: "자연 속 숙박", successCriteria: ["자연 속 숙박을 위해 준비한 물품과 장비를 설명해보세요", "트리하우스에서의 밤을 기록할 계획과 남기고 싶은 추억은?", "숲속에서의 특별한 밤에 기대하는 감동과 힐링은?"])
        ],
        .동굴_호텔하기: [
            Milestone(title: "동굴 호텔 선택", description: "독특한 숙박", successCriteria: ["어떤 동굴 호텔을 선택했고, 그곳의 역사와 독특한 분위기는?", "조사한 동굴 호텔들의 특징과 시설을 비교해보세요", "동굴 숙박에서 기대하는 신비로운 경험과 매력은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["선택한 객실의 특징과 결정 이유를 설명해보세요", "함께 묵는 사람과 이 특별한 숙박의 의미는?", "동굴 호텔에서 경험하고 싶은 순간과 기대하는 것은?"]),
            Milestone(title: "체험 즐기기", description: "동굴 생활", successCriteria: ["동굴의 시원한 온도와 독특한 환경에 대해 알게 된 것은?", "동굴 호텔의 분위기를 기록할 촬영 계획과 남기고 싶은 장면은?", "주변 관광 계획과 동굴 숙박을 통해 느끼고 싶은 감동은?"])
        ],
        .얼음_호텔하기: [
            Milestone(title: "얼음 호텔 선택", description: "아이스 호텔", successCriteria: ["어떤 얼음 호텔을 선택했고, 그곳의 독특한 건축과 예술 작품은?", "조사한 얼음 호텔들의 특징과 컨셉을 비교해보세요", "얼음 속에서의 숙박에서 기대하는 판타지 같은 경험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["선택한 객실 타입(얼음 방, 따뜻한 방)과 그 이유를 설명해보세요", "침낭 숙박 등 얼음 호텔만의 특별한 경험에 대한 기대는?", "함께 묵는 사람과 이 극한 체험의 의미는?"]),
            Milestone(title: "숙박 준비", description: "방한 대비", successCriteria: ["영하의 온도에서 잠자기 위한 준비물과 복장을 설명해보세요", "사우나 등 추위를 녹일 시설과 활동에 대한 기대는?", "얼음 호텔에서의 밤에 기대하는 특별한 경험과 감동은?"])
        ],
        .수중_호텔하기: [
            Milestone(title: "수중 호텔 선택", description: "언더워터 호텔", successCriteria: ["어떤 수중 호텔을 선택했고, 그곳의 해저 풍경과 시설 특징은?", "조사한 수중 호텔들의 특징과 해양 환경을 비교해보세요", "바다 속에서의 숙박에서 기대하는 환상적인 경험은?"]),
            Milestone(title: "예약하기", description: "특별한 숙박", successCriteria: ["수중 객실의 특징과 포함된 활동(다이빙 등)을 설명해보세요", "함께 묵는 사람과 이 로맨틱한 체험의 의미는?", "수중 호텔에서 즐기고 싶은 활동과 식사 계획은?"]),
            Milestone(title: "체험 즐기기", description: "바다 속 숙박", successCriteria: ["수중 창을 통해 보고 싶은 해양 생물과 기대하는 장면은?", "바다 속 숙박을 기록할 촬영 계획과 남기고 싶은 순간은?", "이 특별한 날의 의미와 기대하는 감동은?"])
        ],
        .등대_숙박하기: [
            Milestone(title: "등대 숙박 선택", description: "등대 호텔", successCriteria: ["어떤 등대를 선택했고, 그곳의 역사와 바다 풍경이 기대되는 이유는?", "조사한 등대 숙박지들의 특징과 위치를 비교해보세요", "등대에서의 숙박에서 기대하는 낭만적인 경험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["등대의 시설과 접근성에 대해 알게 된 것을 설명해보세요", "함께 묵는 사람과 이 고립된 숙박의 의미는?", "등대에서 경험하고 싶은 특별한 순간과 기대는?"]),
            Milestone(title: "체험 준비", description: "등대 생활", successCriteria: ["일출이나 일몰 촬영 계획과 기대하는 장면을 설명해보세요", "파도 소리와 함께하는 밤에 기대하는 힐링과 감동은?", "등대 숙박을 통해 느끼고 싶은 고요함과 자유로움은?"])
        ],
        .성_호텔_숙박하기: [
            Milestone(title: "성 호텔 선택", description: "캐슬 호텔", successCriteria: ["어떤 고성 호텔을 선택했고, 그곳의 역사와 건축적 아름다움은?", "조사한 성 호텔들의 특징과 분위기를 비교해보세요", "고성에서의 숙박에서 기대하는 귀족 같은 경험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["선택한 객실 타입과 포함된 경험(디너 코스 등)을 설명해보세요", "함께 묵는 사람과 이 로맨틱한 숙박의 의미는?", "성에서 경험하고 싶은 특별한 순간과 기대는?"]),
            Milestone(title: "체험 준비", description: "귀족 체험", successCriteria: ["성 호텔의 드레스 코드와 준비한 복장을 설명해보세요", "성 투어나 역사 체험에서 배우고 싶은 것은?", "고성의 분위기를 기록할 촬영 계획과 남기고 싶은 장면은?"])
        ],
        .기차_호텔하기: [
            Milestone(title: "기차 호텔 선택", description: "럭셔리 열차", successCriteria: ["어떤 럭셔리 열차를 선택했고, 그 열차의 역사와 특별한 분위기는?", "조사한 럭셔리 열차들의 노선과 특징을 비교해보세요", "기차 위에서의 숙박에서 기대하는 로맨틱한 여정은?"]),
            Milestone(title: "예약하기", description: "여정 선택", successCriteria: ["선택한 노선과 캐빈 타입의 특징을 설명해보세요", "포함된 식사와 서비스에서 기대하는 경험은?", "함께 여행하는 사람과 이 특별한 기차 여행의 의미는?"]),
            Milestone(title: "여행 준비", description: "기차 여행", successCriteria: ["드레스 코드와 준비한 복장을 설명해보세요", "창밖으로 보고 싶은 풍경과 기대하는 장면은?", "기차 여행의 낭만을 기록할 촬영 계획과 남기고 싶은 순간은?"])
        ],
        .비행기_호텔하기: [
            Milestone(title: "비행기 호텔 선택", description: "항공기 개조 호텔", successCriteria: ["어떤 비행기 호텔을 선택했고, 그 항공기의 역사와 개조 스토리는?", "조사한 비행기 호텔들의 특징과 시설을 비교해보세요", "비행기 안에서의 숙박에서 기대하는 독특한 경험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["선택한 객실의 특징과 원래 항공기에서의 위치를 설명해보세요", "시설과 편의사항에 대해 확인한 내용은?", "함께 묵는 사람과 이 특별한 숙박의 의미는?"]),
            Milestone(title: "체험 준비", description: "특별한 숙박", successCriteria: ["조종석 투어 등 비행기만의 특별한 체험에 대한 기대는?", "항공기의 독특한 분위기를 기록할 촬영 계획은?", "항공이나 비행에 대한 관심과 이 체험의 의미는?"])
        ],
        .럭셔리_사파리_롯지하기: [
            Milestone(title: "사파리 선택", description: "럭셔리 롯지", successCriteria: ["어떤 사파리 롯지를 선택했고, 그곳의 특별한 럭셔리와 야생 환경은?", "조사한 사파리 지역과 롯지들의 특징을 비교해보세요", "럭셔리 사파리에서 기대하는 야생과 편안함의 조화는?"]),
            Milestone(title: "예약하기", description: "올인클루시브", successCriteria: ["포함된 사파리 활동과 서비스를 상세히 설명해보세요", "가이드와 함께하는 사파리에서 배우고 싶은 것은?", "함께 여행하는 사람과 이 특별한 경험의 의미는?"]),
            Milestone(title: "사파리 준비", description: "야생 체험", successCriteria: ["야생동물 관찰을 위해 준비한 장비(쌍안경, 카메라)를 설명해보세요", "건강 준비(예방접종, 말라리아 예방)에 대해 알게 된 것은?", "사파리에서 만나고 싶은 야생동물과 기대하는 감동은?"])
        ],
        .오버워터_방갈로하기: [
            Milestone(title: "리조트 선택", description: "수상 방갈로", successCriteria: ["어떤 수상 방갈로를 선택했고, 그곳의 바다 환경과 풍경은?", "조사한 리조트들의 특징과 시설을 비교해보세요", "바다 위에서의 숙박에서 기대하는 로맨틱한 경험은?"]),
            Milestone(title: "예약하기", description: "숙박 예약", successCriteria: ["선택한 빌라의 특징(유리 바닥, 프라이빗 풀 등)을 설명해보세요", "포함된 서비스와 활동(스노클링 등)에 대한 기대는?", "함께 묵는 사람과 이 특별한 휴가의 의미는?"]),
            Milestone(title: "체험 준비", description: "바다 위 숙박", successCriteria: ["수상 방갈로에서 즐길 활동과 준비한 것을 설명해보세요", "바다 위에서의 일출/일몰에 기대하는 감동은?", "이 꿈같은 휴가를 기록할 촬영 계획과 남기고 싶은 순간은?"])
        ],
        .짚라인_캐노피_투어하기: [
            Milestone(title: "장소 선택", description: "정글 캐노피", successCriteria: ["어떤 캐노피 투어를 선택했고, 그곳의 정글 환경이 기대되는 이유는?", "조사한 짚라인 장소들의 코스와 특징을 비교해보세요", "정글 위를 나는 체험에서 기대하는 짜릿함과 자연의 매력은?"]),
            Milestone(title: "투어 예약", description: "캐노피 투어", successCriteria: ["선택한 투어의 코스와 짚라인 개수를 설명해보세요", "안전 장비와 교육에 대해 알게 된 것은?", "함께 체험하는 사람과 기대하는 순간은?"]),
            Milestone(title: "체험 준비", description: "정글 체험", successCriteria: ["캐노피 투어를 위해 준비한 복장과 장비를 설명해보세요", "정글 환경에서의 주의사항과 준비물을 정리해보세요", "나무 위에서 보는 정글 풍경에서 기대하는 감동은?"])
        ],
        .ATV_오프로드하기: [
            Milestone(title: "장소 선택", description: "ATV 체험지", successCriteria: ["어떤 ATV 체험지를 선택했고, 그곳의 코스 환경과 난이도는?", "조사한 체험지들의 특징과 코스를 비교해보세요", "ATV 오프로드에서 느끼고 싶은 스릴과 모험심은?"]),
            Milestone(title: "예약하기", description: "체험 예약", successCriteria: ["면허 조건과 보험 정보에 대해 확인한 내용은?", "선택한 코스와 체험 시간을 설명해보세요", "함께 체험하는 사람과 기대하는 경험은?"]),
            Milestone(title: "체험 준비", description: "안전 장비", successCriteria: ["안전 교육에서 배운 주요 내용과 주의사항을 정리해보세요", "오프로드 체험을 위해 준비한 복장과 장비는?", "ATV 질주에서 기대하는 짜릿함과 도전은?"])
        ],
        ._4륜_사막_투어하기: [
            Milestone(title: "사막 선택", description: "4WD 투어 장소", successCriteria: ["어떤 사막을 선택했고, 그곳의 모래 언덕과 풍경이 기대되는 이유는?", "조사한 사막 투어 장소들의 특징을 비교해보세요", "4륜 사막 질주에서 느끼고 싶은 스릴과 모험은?"]),
            Milestone(title: "투어 예약", description: "사막 사파리", successCriteria: ["선택한 투어의 코스와 포함된 활동(샌드보딩 등)을 설명해보세요", "사막에서의 저녁 식사나 문화 체험에 대한 기대는?", "함께 체험하는 사람과 기대하는 순간은?"]),
            Milestone(title: "체험 준비", description: "사막 대비", successCriteria: ["사막 환경에 대비한 준비물(선글라스, 스카프 등)을 설명해보세요", "사막 풍경을 기록할 촬영 계획과 남기고 싶은 장면은?", "사막 투어에서 기대하는 특별한 경험과 감동은?"])
        ],
        .스쿠터_여행하기: [
            Milestone(title: "목적지 선택", description: "스쿠터 여행지", successCriteria: ["어떤 목적지를 선택했고, 그곳을 스쿠터로 여행하고 싶은 이유는?", "조사한 스쿠터 여행지들의 도로 환경과 풍경을 비교해보세요", "스쿠터 여행에서 느끼고 싶은 자유로움과 모험은?"]),
            Milestone(title: "렌탈 준비", description: "스쿠터 대여", successCriteria: ["면허와 보험 조건에 대해 확인한 내용을 정리해보세요", "렌탈 업체 선택 시 고려한 점과 결정 이유는?", "스쿠터 여행에서 주의해야 할 안전 사항은?"]),
            Milestone(title: "여행 계획", description: "루트 계획", successCriteria: ["계획한 여행 루트와 각 코스의 특별한 매력을 설명해보세요", "휴식과 충전을 위한 중간 정차 계획은?", "스쿠터 여행에서 기대하는 특별한 순간과 경험은?"])
        ],
        .자전거_국토_횡단하기: [
            Milestone(title: "루트 선택", description: "국토 종주 코스", successCriteria: ["어떤 국토 종주 코스를 선택했고, 그 루트의 특별한 매력은?", "4대강 자전거길과 다양한 코스를 비교하면서 알게 된 것은?", "국토 횡단이 나에게 주는 의미와 이 도전에서 기대하는 성취감은?"]),
            Milestone(title: "장비 준비", description: "자전거 및 짐", successCriteria: ["장거리 라이딩을 위해 준비한 자전거와 장비를 설명해보세요", "패니어와 짐 꾸리기에서 고려한 점과 필수품 목록은?", "수리 도구와 비상 상황 대비 계획을 정리해보세요"]),
            Milestone(title: "일정 계획", description: "숙박 및 휴식", successCriteria: ["계획한 일일 주행 거리와 각 구간의 특징을 설명해보세요", "숙박 계획과 중간 휴식 포인트를 정리해보세요", "체력 훈련 과정과 현재 준비 상태, 그리고 완주를 향한 각오는?"])
        ],
        .오토바이_투어하기: [
            Milestone(title: "루트 선택", description: "바이크 투어 코스", successCriteria: ["어떤 바이크 투어 코스를 선택했고, 그 루트의 특별한 풍경은?", "조사한 투어 코스들의 특징과 도로 환경을 비교해보세요", "바이크 투어에서 느끼고 싶은 자유로움과 모험심은?"]),
            Milestone(title: "바이크 준비", description: "바이크 렌탈/소유", successCriteria: ["투어에 사용할 바이크와 선택 이유를 설명해보세요", "면허와 보험 등 필요한 조건을 정리해보세요", "장거리 투어를 위한 바이크 점검과 준비는?"]),
            Milestone(title: "투어 준비", description: "장비 및 계획", successCriteria: ["라이딩 기어와 안전 장비를 설명해보세요", "숙박과 휴식 계획을 정리해보세요", "바이크 투어에서 기대하는 특별한 순간과 경험은?"])
        ],
        .클래식카_드라이브하기: [
            Milestone(title: "클래식카 선택", description: "렌탈 또는 체험", successCriteria: ["어떤 클래식카를 선택했고, 그 차의 역사와 특별한 매력은?", "렌탈 업체 선택 시 고려한 점과 결정 이유는?", "클래식카 드라이브에서 느끼고 싶은 향수와 낭만은?"]),
            Milestone(title: "드라이브 코스", description: "경치 좋은 도로", successCriteria: ["계획한 드라이브 코스와 그 도로의 특별한 풍경은?", "사진 촬영 포인트와 남기고 싶은 장면을 설명해보세요", "함께 드라이브하는 사람과 기대하는 순간은?"]),
            Milestone(title: "체험 즐기기", description: "클래식카 운전", successCriteria: ["수동 변속기 등 클래식카만의 운전 경험에 대한 기대는?", "보험과 안전 준비에 대해 확인한 내용은?", "복고풍 분위기를 위해 준비한 복장이나 소품은?"])
        ],
        .슈퍼카_체험하기: [
            Milestone(title: "슈퍼카 선택", description: "페라리, 람보르기니 등", successCriteria: ["어떤 슈퍼카를 선택했고, 그 차에 끌리는 이유는?", "체험 업체 선택 시 고려한 점과 결정 이유는?", "슈퍼카 드라이빙에서 느끼고 싶은 스릴과 성취감은?"]),
            Milestone(title: "체험 예약", description: "서킷 또는 도로", successCriteria: ["서킷과 도로 주행 중 어떤 것을 선택했고, 그 이유는?", "선택한 체험 코스와 시간을 설명해보세요", "함께 체험하는 사람과 기대하는 순간은?"]),
            Milestone(title: "드라이빙 준비", description: "운전 준비", successCriteria: ["슈퍼카 운전을 위한 면허와 준비 상태를 설명해보세요", "운전 교육에서 배우고 싶은 기술과 기대는?", "슈퍼카의 엄청난 성능을 경험하면서 느끼고 싶은 감동은?"])
        ],
        .F1_관람하기: [
            Milestone(title: "그랑프리 선택", description: "F1 서킷", successCriteria: ["어떤 그랑프리를 선택했고, 그 서킷의 특별한 매력은?", "조사한 그랑프리들의 특징과 분위기를 비교해보세요", "F1 현장 관람에서 기대하는 짜릿함과 감동은?"]),
            Milestone(title: "티켓 예매", description: "관람석 선택", successCriteria: ["좌석 위치를 선택할 때 고려한 점과 결정 이유는?", "피트워크 투어 등 추가 경험에 대한 기대는?", "함께 관람하는 사람과 이 경험이 특별한 이유는?"]),
            Milestone(title: "현지 방문", description: "F1 관람 준비", successCriteria: ["여행 일정과 숙박, 교통 계획을 정리해보세요", "F1 관람을 위해 준비한 물품(귀마개 등)과 이유는?", "F1 현장의 열기와 굉음 속에서 기대하는 경험은?"])
        ],
        .NASCAR_체험하기: [
            Milestone(title: "체험 프로그램", description: "NASCAR 드라이빙", successCriteria: ["어떤 NASCAR 체험 프로그램을 선택했고, 직접 운전 vs 동승의 선택 이유는?", "NASCAR 레이싱에서 느끼고 싶은 스피드와 스릴은?", "이 체험이 나에게 주는 의미와 기대하는 성취감은?"]),
            Milestone(title: "장소 선택", description: "미국 서킷", successCriteria: ["어떤 서킷을 선택했고, 그 서킷의 역사와 특별한 매력은?", "미국 여행 계획과 NASCAR 체험을 연계한 일정은?", "미국 모터스포츠 문화에서 경험하고 싶은 것은?"]),
            Milestone(title: "체험 준비", description: "안전 교육", successCriteria: ["안전 교육에서 배울 핵심 내용과 주의사항에 대한 기대는?", "레이싱 복장과 장비에 대해 알게 된 것은?", "NASCAR 체험에서 기대하는 짜릿한 순간과 도전은?"])
        ],
        .카트_레이싱하기: [
            Milestone(title: "카트장 선택", description: "실내/야외 카트", successCriteria: ["어떤 카트장을 선택했고, 실내/야외의 선택 이유는?", "조사한 카트장들의 트랙과 시설을 비교해보세요", "카트 레이싱에서 느끼고 싶은 스피드와 경쟁의 재미는?"]),
            Milestone(title: "예약하기", description: "시간 예약", successCriteria: ["그룹 레이싱과 개인 랩타임 중 선택한 것과 이유는?", "함께 레이싱하는 사람과 기대하는 경쟁은?", "목표로 하는 랩타임이나 달성하고 싶은 기록은?"]),
            Milestone(title: "레이싱 준비", description: "기본 기술", successCriteria: ["브레이킹 포인트와 에이펙스 등 레이싱 기술에 대해 배운 것은?", "빠른 랩타임을 위한 나만의 전략이나 팁은?", "카트 레이싱에서 기대하는 짜릿함과 성취감은?"])
        ],
        .드리프트_체험하기: [
            Milestone(title: "체험 프로그램", description: "드리프트 강습", successCriteria: ["어떤 드리프트 체험 프로그램을 선택했고, 그 프로그램의 특징은?", "면허와 비용 조건에 대해 확인한 내용을 정리해보세요", "드리프트 기술을 배워서 느끼고 싶은 짜릿함과 도전은?"]),
            Milestone(title: "장소 선택", description: "서킷 또는 체험장", successCriteria: ["선택한 체험장의 안전 시설과 특징을 설명해보세요", "제공되는 차량과 강사 지도에 대해 알게 된 것은?", "드리프트를 배우면서 기대하는 성취감과 도전은?"]),
            Milestone(title: "기초 기술", description: "드리프트 배우기", successCriteria: ["후륜구동 원리와 드리프트 메커니즘에 대해 배운 것을 설명해보세요", "카운터 스티어링과 스로틀 컨트롤 기술에서 가장 어려웠던 점은?", "드리프트 기술을 익히면서 느낀 성취감과 다음 목표는?"])
        ],
        .오프로드_랠리하기: [
            Milestone(title: "체험 프로그램", description: "랠리 체험", successCriteria: ["어떤 랠리 체험 프로그램을 선택했고, 코드라이버 vs 직접 운전 중 선택한 이유는?", "랠리 스포츠에 관심을 갖게 된 계기와 기대하는 경험은?", "오프로드 랠리에서 느끼고 싶은 스릴과 모험심은?"]),
            Milestone(title: "장소 선택", description: "오프로드 코스", successCriteria: ["어떤 오프로드 코스를 선택했고, 그 코스의 특징과 난이도는?", "조사한 국내외 랠리 코스들의 특징을 비교해보세요", "선택한 코스에서 기대하는 도전과 극복하고 싶은 것은?"]),
            Milestone(title: "안전 준비", description: "장비 및 교육", successCriteria: ["안전 교육에서 배운 핵심 내용과 주의사항을 정리해보세요", "헬멧과 안전 장비에 대해 알게 된 것은?", "랠리 체험에서 기대하는 짜릿한 순간과 안전하게 즐기기 위한 마음가짐은?"])
        ],
        .트럭_운전하기: [
            Milestone(title: "체험 프로그램", description: "대형 트럭 운전", successCriteria: ["어떤 트럭 운전 체험 프로그램을 선택했고, 면허 조건은 어떻게 되나요?", "대형 트럭 운전에 도전하고 싶은 이유와 기대하는 경험은?", "트럭 운전을 통해 느끼고 싶은 도전감과 성취감은?"]),
            Milestone(title: "장소 선택", description: "체험장 또는 도로", successCriteria: ["선택한 체험장의 안전 시설과 특징을 설명해보세요", "동승 교관과 보험에 대해 확인한 내용은?", "대형 트럭을 운전하면서 기대하는 특별한 경험은?"]),
            Milestone(title: "운전 준비", description: "대형차 감각", successCriteria: ["대형차의 특성(사각지대, 브레이킹 거리 등)에 대해 배운 것을 정리해보세요", "일반 차량과 다른 대형 트럭만의 운전 감각에서 느낀 점은?", "트럭 운전 체험을 통해 얻은 새로운 시각과 배움은?"])
        ],
        .탱크_운전하기: [
            Milestone(title: "체험 프로그램", description: "탱크 드라이빙", successCriteria: ["어떤 탱크 운전 체험 프로그램을 선택했고, 그 프로그램의 특별한 점은?", "탱크 운전에 도전하고 싶은 이유와 기대하는 경험은?", "군용 장비를 직접 조종하면서 느끼고 싶은 도전감과 흥분은?"]),
            Milestone(title: "장소 선택", description: "군용 차량 체험", successCriteria: ["선택한 탱크의 종류와 역사에 대해 알게 된 것을 설명해보세요", "장애물 코스나 사격 체험 등 포함된 활동을 정리해보세요", "탱크 운전에서 가장 기대되는 순간과 경험은?"]),
            Milestone(title: "체험 준비", description: "안전 교육", successCriteria: ["안전 교육에서 배운 핵심 내용과 주의사항을 정리해보세요", "체험을 위해 준비한 복장과 건강 상태를 확인해보세요", "탱크를 직접 운전하면서 느끼고 싶은 특별한 감동과 성취감은?"])
        ],
        .잠수함_탑승하기: [
            Milestone(title: "잠수함 투어 선택", description: "관광 잠수함", successCriteria: ["어떤 잠수함 투어를 선택했고, 그곳의 해저 환경과 볼거리는?", "조사한 잠수함 투어들의 특징(깊이, 시간)을 비교해보세요", "바다 속 세계를 잠수함으로 탐험하면서 기대하는 경험은?"]),
            Milestone(title: "예약하기", description: "투어 예약", successCriteria: ["선택한 투어의 가격과 포함된 서비스를 설명해보세요", "멀미 대비 등 건강 준비에 대해 확인한 내용은?", "함께 탑승하는 사람과 이 특별한 경험의 의미는?"]),
            Milestone(title: "탑승 준비", description: "수중 관광", successCriteria: ["잠수함 탑승을 위해 준비한 것(카메라, 복장 등)을 설명해보세요", "해저에서 보고 싶은 풍경과 해양 생물에 대한 기대는?", "잠수함 창을 통해 바라보는 바다 속 세계에서 느끼고 싶은 감동은?"])
        ],
        .열기구_축제_가기: [
            Milestone(title: "축제 선택", description: "세계 열기구 축제", successCriteria: ["어떤 열기구 축제를 선택했고, 그 축제의 특별한 매력과 규모는?", "조사한 열기구 축제들(카파도키아, 앨버커키, 치앙마이)의 특징을 비교해보세요", "수백 개의 열기구가 하늘을 채우는 장관에서 기대하는 감동은?"]),
            Milestone(title: "일정 확인", description: "축제 날짜", successCriteria: ["축제 일정과 숙소, 교통 계획을 정리해보세요", "직접 열기구 탑승도 계획하고 있다면 그 기대와 의미는?", "축제 기간 동안 경험하고 싶은 것들을 설명해보세요"]),
            Milestone(title: "관람 준비", description: "사진 촬영", successCriteria: ["열기구 축제를 담기 위해 준비한 촬영 장비와 계획은?", "일출과 함께하는 열기구 풍경에서 기대하는 장면을 설명해보세요", "이 축제에서 남기고 싶은 추억과 특별한 순간은?"])
        ],
        .연날리기_축제_가기: [
            Milestone(title: "축제 선택", description: "세계 연 축제", successCriteria: ["어떤 연 축제를 선택했고, 그 축제의 전통과 특별한 분위기는?", "조사한 연 축제들(인도 구자라트, 중국 웨이팡, 국내)의 특징을 비교해보세요", "하늘을 수놓는 다양한 연들을 보면서 기대하는 감동은?"]),
            Milestone(title: "일정 확인", description: "축제 날짜", successCriteria: ["축제 일정과 여행 계획을 정리해보세요", "숙소와 교통 준비에서 고려한 점은?", "축제 기간 동안 경험하고 싶은 현지 문화와 음식은?"]),
            Milestone(title: "참여 준비", description: "연 날리기", successCriteria: ["직접 연을 날릴 계획이라면 준비한 연과 선택 이유는?", "연 축제의 분위기를 담을 촬영 계획과 남기고 싶은 장면은?", "연날리기를 통해 느끼고 싶은 동심과 자유로움은?"])
        ],
        .불꽃놀이_축제_가기: [
            Milestone(title: "축제 선택", description: "세계 불꽃축제", successCriteria: ["어떤 불꽃 축제를 선택했고, 그 축제의 규모와 특별한 매력은?", "조사한 불꽃 축제들(시드니, 몬트리올, 부산)의 특징을 비교해보세요", "밤하늘을 수놓는 불꽃놀이에서 기대하는 감동과 의미는?"]),
            Milestone(title: "일정 확인", description: "축제 날짜", successCriteria: ["축제 일정과 최적의 관람 장소를 조사한 내용을 정리해보세요", "숙소와 교통 계획에서 고려한 점은?", "함께 관람하는 사람과 이 특별한 순간의 의미는?"]),
            Milestone(title: "관람 준비", description: "최적의 관람", successCriteria: ["불꽃놀이를 완벽하게 즐기기 위해 준비한 것들(돗자리, 음식 등)을 설명해보세요", "불꽃놀이 촬영을 위해 준비한 장비와 계획은?", "밤하늘의 불꽃 속에서 느끼고 싶은 감동과 남기고 싶은 추억은?"])
        ],
        .와인_만들기_체험하기: [
            Milestone(title: "와이너리 선택", description: "체험 가능 와이너리", successCriteria: ["어떤 와이너리를 선택했고, 그곳의 포도 품종과 와인 스타일의 특징은?", "조사한 와이너리들(국내, 나파밸리, 토스카나)의 특징을 비교해보세요", "와인 만들기 체험에서 기대하는 배움과 특별한 경험은?"]),
            Milestone(title: "체험 예약", description: "와인 메이킹", successCriteria: ["선택한 체험 프로그램의 내용(포도 수확, 발효, 병입 등)을 설명해보세요", "와인 시즌과 방문 시기를 선택한 이유는?", "나만의 와인을 만든다는 것이 갖는 의미와 기대는?"]),
            Milestone(title: "체험 준비", description: "와인 제조 과정", successCriteria: ["와인 제조 과정에 대해 미리 공부한 내용을 정리해보세요", "자신의 와인 라벨 디자인과 그 의미를 설명해보세요", "직접 만든 와인을 누구와 함께 마시고 싶고, 그 순간에 대한 기대는?"])
        ]
    ]

    private static let positionData: [Self: LocationInfo] = [
        .스쿠버다이빙_자격증_취득하기: LocationInfo(latitude: 13.7563, longitude: 100.5018, name: "태국 코타오", address: "Koh Tao, Thailand"),
        .번지점프_도전하기: LocationInfo(latitude: -44.9796, longitude: 168.6626, name: "퀸즈타운", address: "Queenstown, New Zealand"),
        .스카이다이빙_체험하기: LocationInfo(latitude: -37.6648, longitude: 176.1841, name: "타우포", address: "Taupo, New Zealand")
    ]
}

