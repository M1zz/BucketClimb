import Foundation
import SwiftUI

class BucketListViewModel: ObservableObject {
    @Published var bucketItems: [BucketListItem] = []
    @Published var showArchiveTab: Bool = false {
        didSet {
            UserDefaults.standard.set(showArchiveTab, forKey: "ShowArchiveTab")
        }
    }

    private let saveKey = "SavedBucketList"

    init() {
        loadData()
        showArchiveTab = UserDefaults.standard.bool(forKey: "ShowArchiveTab")
    }

    var myBucketLists: [BucketListItem] {
        bucketItems.filter { $0.status == .inBucket }
    }

    var climbingBucketLists: [BucketListItem] {
        bucketItems.filter { $0.status == .climbing }
    }

    var itemsCompleted: [BucketListItem] {
        bucketItems.filter { $0.status == .completed }
    }

    // 인기 버킷리스트 600개 (썸네일 + 배경이미지 포함)
    let popularBucketLists: [(title: String, category: BucketCategory, thumbnail: String, backgroundImage: String)] = [
        // 여행 (100개)
        ("아이슬란드에서 오로라 보기", .travel, "sparkles", "iceland_aurora"),
        ("산토리니에서 일몰 감상하기", .travel, "sunset.fill", "santorini_sunset"),
        ("뉴질랜드 남섬 일주하기", .travel, "car.fill", "newzealand_south"),
        ("스위스 융프라우 등반하기", .travel, "mountain.2.fill", "swiss_jungfrau"),
        ("몰디브에서 수상 방갈로 숙박", .travel, "house.fill", "maldives_bungalow"),
        ("일본 벚꽃 시즌 교토 여행", .travel, "leaf.fill", "kyoto_cherry"),
        ("프랑스 파리 에펠탑 방문", .travel, "building.2.fill", "paris_eiffel"),
        ("이탈리아 베네치아 곤돌라 타기", .travel, "ferry.fill", "venice_gondola"),
        ("체코 프라하 구시가지 산책", .travel, "figure.walk", "prague_oldtown"),
        ("크로아티아 플리트비체 국립공원", .travel, "tree.fill", "plitvice_park"),
        ("노르웨이 피오르드 크루즈", .travel, "ferry.fill", "norway_fjord"),
        ("캐나다 밴프 국립공원 여행", .travel, "mountain.2.fill", "banff_park"),
        ("페루 마추픽추 방문하기", .travel, "building.columns.fill", "machu_picchu"),
        ("미국 그랜드 캐년 보기", .travel, "mountain.2.fill", "grand_canyon"),
        ("브라질 이과수 폭포 보기", .travel, "drop.fill", "iguazu_falls"),
        ("호주 대보초 스노클링", .travel, "fish.fill", "great_barrier_reef"),
        ("뉴질랜드 밀포드 사운드", .travel, "water.waves", "milford_sound"),
        ("남극 크루즈 여행", .travel, "snowflake", "antarctica_cruise"),
        ("모로코 사하라 사막 투어", .travel, "sun.max.fill", "sahara_desert"),
        ("인도 타지마할 방문", .travel, "crown.fill", "taj_mahal"),
        ("터키 카파도키아 열기구", .travel, "balloon.fill", "cappadocia_balloon"),
        ("그리스 미코노스 여행", .travel, "sun.horizon.fill", "mykonos_greece"),
        ("스페인 바르셀로나 가우디 건축", .travel, "building.2.fill", "barcelona_gaudi"),
        ("포르투갈 리스본 전차 타기", .travel, "tram.fill", "lisbon_tram"),
        ("아프리카 사파리 투어", .travel, "binoculars.fill", "africa_safari"),
        ("캄보디아 앙코르와트 일출", .travel, "sunrise.fill", "angkor_wat"),
        ("베트남 하롱베이 크루즈", .travel, "sailboat.fill", "halong_bay"),
        ("태국 치앙마이 코끼리 보호소", .travel, "pawprint.circle.fill", "chiangmai_elephant"),
        ("발리 우붓 라이스 테라스", .travel, "leaf.circle.fill", "bali_ubud"),
        ("필리핀 팔라완 엘니도", .travel, "water.waves.and.arrow.up", "palawan_elnido"),
        ("싱가포르 마리나베이 야경", .travel, "building.2.circle.fill", "singapore_marina"),
        ("홍콩 빅토리아 피크 야경", .travel, "sparkles", "hongkong_peak"),
        ("두바이 부르즈 칼리파", .travel, "building.2", "dubai_burj"),
        ("요르단 페트라 고대도시", .travel, "building.columns", "petra_jordan"),
        ("이집트 피라미드 방문", .travel, "pyramid.fill", "egypt_pyramid"),
        ("케냐 마사이마라 대이동", .travel, "hare.fill", "kenya_migration"),
        ("탄자니아 세렝게티", .travel, "figure.walk", "serengeti"),
        ("마다가스카르 바오밥 나무", .travel, "tree.circle.fill", "madagascar_baobab"),
        ("세이셸 해변 휴양", .travel, "beach.umbrella.fill", "seychelles_beach"),
        ("모리셔스 수중 폭포", .travel, "drop.triangle.fill", "mauritius_waterfall"),
        ("몰타 블루라군", .travel, "water.waves.and.arrow.down", "malta_lagoon"),
        ("아이슬란드 블루라군 온천", .travel, "drop.circle.fill", "iceland_lagoon"),
        ("덴마크 코펜하겐 자전거 여행", .travel, "bicycle.circle.fill", "copenhagen_bike"),
        ("스웨덴 스톡홀름 군도", .travel, "ferry.circle.fill", "stockholm_archipelago"),
        ("핀란드 오로라 유리 이글루", .travel, "house.circle.fill", "finland_igloo"),
        ("러시아 상트페테르부르크", .travel, "building.columns.circle.fill", "st_petersburg"),
        ("폴란드 아우슈비츠 역사 탐방", .travel, "book.circle.fill", "auschwitz"),
        ("체코 체스키 크룸로프", .travel, "building.2.crop.circle.fill", "cesky_krumlov"),
        ("헝가리 부다페스트 온천", .travel, "thermometer.medium", "budapest_spa"),
        ("오스트리아 잘츠부르크", .travel, "music.note.house.fill", "salzburg"),
        ("독일 노이슈반슈타인 성", .travel, "building.2.fill", "neuschwanstein"),
        ("네덜란드 튤립 축제", .travel, "leaf.fill", "netherlands_tulip"),
        ("벨기에 브뤼셀 그랑플라스", .travel, "building.fill", "brussels_plaza"),
        ("룩셈부르크 고성 투어", .travel, "building.columns.fill", "luxembourg_castle"),
        ("아일랜드 더블린 펍 투어", .travel, "wineglass.fill", "dublin_pub"),
        ("영국 런던 빅벤", .travel, "clock.fill", "london_bigben"),
        ("스코틀랜드 하이랜드", .travel, "mountain.2.fill", "scotland_highland"),
        ("웨일스 스노도니아", .travel, "figure.hiking", "wales_snowdonia"),
        ("아르헨티나 부에노스아이레스 탱고", .travel, "figure.dance", "argentina_tango"),
        ("칠레 파타고니아 트레킹", .travel, "figure.hiking", "patagonia"),
        ("볼리비아 우유니 소금사막", .travel, "camera.metering.matrix", "uyuni_salt"),
        ("에콰도르 갈라파고스", .travel, "tortoise.fill", "galapagos"),
        ("코스타리카 열대우림", .travel, "leaf.circle.fill", "costa_rica_jungle"),
        ("멕시코 칸쿤 세노테", .travel, "water.waves.and.arrow.down", "cancun_cenote"),
        ("쿠바 아바나 클래식 카", .travel, "car.circle.fill", "havana_car"),
        ("자메이카 레게 페스티벌", .travel, "music.note.list", "jamaica_reggae"),
        ("캐나다 나이아가라 폭포", .travel, "drop.triangle.fill", "niagara_falls"),
        ("미국 옐로스톤 국립공원", .travel, "flame.circle.fill", "yellowstone"),
        ("미국 요세미티 국립공원", .travel, "mountain.2.circle.fill", "yosemite"),
        ("미국 자이온 국립공원", .travel, "mountain.2.fill", "zion"),
        ("미국 앤틸로프 캐년", .travel, "mountain.2.circle.fill", "antelope_canyon"),
        ("미국 모뉴먼트 밸리", .travel, "mountain.2.fill", "monument_valley"),
        ("미국 세도나 레드록", .travel, "mountain.2.circle.fill", "sedona_redrock"),
        ("캐나다 로키산맥 기차 여행", .travel, "train.side.front.car", "rocky_train"),
        ("알래스카 빙하 크루즈", .travel, "snowflake", "alaska_glacier"),
        ("하와이 마우이 화산", .travel, "flame.fill", "maui_volcano"),
        ("하와이 카우아이 나팔리", .travel, "water.waves", "kauai_napali"),
        ("타히티 보라보라", .travel, "water.waves.and.arrow.up", "bora_bora"),
        ("피지 산호초 다이빙", .travel, "figure.pool.swim", "fiji_diving"),
        ("뉴칼레도니아 천국 해변", .travel, "beach.umbrella.fill", "new_caledonia"),
        ("호주 시드니 오페라하우스", .travel, "building.2.fill", "sydney_opera"),
        ("호주 울룰루 일출", .travel, "sunrise.fill", "uluru"),
        ("호주 화이트헤븐 비치", .travel, "beach.umbrella.fill", "whitehaven_beach"),
        ("뉴질랜드 와이토모 반딧불 동굴", .travel, "sparkles", "waitomo_cave"),
        ("뉴질랜드 테카포 별 관측", .travel, "sparkles", "tekapo_stars"),
        ("뉴질랜드 퀸즈타운 번지점프", .travel, "arrow.down.circle.fill", "queenstown_bungy"),
        ("프랑스령 폴리네시아 모레아", .travel, "water.waves", "moorea"),
        ("미얀마 바간 사원", .travel, "building.columns.fill", "bagan_temple"),
        ("라오스 루앙프라방", .travel, "building.2.fill", "luang_prabang"),
        ("스리랑카 시기리야 바위", .travel, "mountain.2.fill", "sigiriya"),
        ("몰디브 물고기와 수영", .travel, "fish.fill", "maldives_snorkel"),
        ("부탄 타이거 네스트", .travel, "mountain.2.fill", "bhutan_tiger_nest"),
        ("네팔 안나푸르나 트레킹", .travel, "figure.hiking", "annapurna"),
        ("파키스탄 훈자 계곡", .travel, "mountain.2.circle.fill", "hunza_valley"),
        ("우즈베키스탄 사마르칸트", .travel, "building.columns.fill", "samarkand"),
        ("조지아 와인 투어", .travel, "wineglass.fill", "georgia_wine"),
        ("아르메니아 세반 호수", .travel, "water.waves", "sevan_lake"),
        ("아제르바이잔 바쿠 불의 땅", .travel, "flame.fill", "baku_fire"),

        // 경험 (100개)
        ("스카이다이빙 체험하기", .experience, "figure.fall", "skydiving"),
        ("번지점프 도전하기", .experience, "arrow.down.circle.fill", "bungee_jump"),
        ("스쿠버다이빙 자격증 취득", .experience, "figure.pool.swim", "scuba_diving"),
        ("패러글라이딩 체험", .experience, "airplane.departure", "paragliding"),
        ("헬기 조종 체험하기", .experience, "airplane.circle.fill", "helicopter_pilot"),
        ("열기구 타고 하늘 여행", .experience, "balloon.fill", "hot_air_balloon"),
        ("빙벽 등반 체험하기", .experience, "snowflake", "ice_climbing"),
        ("집라인 타보기", .experience, "arrow.forward.circle.fill", "zipline"),
        ("래프팅 도전하기", .experience, "drop.triangle.fill", "rafting"),
        ("서핑 배우기", .experience, "water.waves", "surfing"),
        ("승마 배우기", .experience, "figure.equestrian.sports", "horse_riding"),
        ("요트 항해 체험", .experience, "sailboat.fill", "yacht_sailing"),
        ("캠핑카로 한달 살기", .experience, "tent.fill", "camper_van"),
        ("오토바이 라이센스 취득", .experience, "motorcycle", "motorcycle_license"),
        ("와인 테이스팅 투어", .experience, "wineglass.fill", "wine_tasting"),
        ("미슐랭 3스타 레스토랑 방문", .experience, "fork.knife", "michelin_restaurant"),
        ("오페라 공연 관람", .experience, "theatermasks.fill", "opera_house"),
        ("뮤지컬 브로드웨이에서 보기", .experience, "music.note", "broadway_musical"),
        ("록 콘서트 최전방 관람", .experience, "music.mic", "rock_concert"),
        ("오로라 사진 촬영하기", .experience, "camera.fill", "aurora_photography"),
        ("세계 일주 크루즈", .experience, "ferry.fill", "world_cruise"),
        ("북극 탐험", .experience, "snowflake", "arctic_exploration"),
        ("남극 펭귄과 만나기", .experience, "figure.walk", "antarctica_penguin"),
        ("사막에서 별 관측", .experience, "sparkles", "desert_stars"),
        ("동굴 탐험", .experience, "mountain.2.fill", "cave_exploration"),
        ("폭포 뒤에서 사진찍기", .experience, "drop.fill", "waterfall_behind"),
        ("화산 분화구 보기", .experience, "flame.fill", "volcano_crater"),
        ("온천 투어", .experience, "drop.circle.fill", "hot_spring"),
        ("빙하 위 걷기", .experience, "snowflake", "glacier_walk"),
        ("사파리 차량 운전", .experience, "car.fill", "safari_driving"),
        ("코끼리 목욕시키기", .experience, "drop.fill", "elephant_bath"),
        ("상어와 다이빙", .experience, "fish.fill", "shark_diving"),
        ("돌고래와 수영", .experience, "figure.pool.swim", "dolphin_swim"),
        ("고래 관측", .experience, "fish.circle.fill", "whale_watching"),
        ("카약 원정", .experience, "sailboat.fill", "kayak_expedition"),
        ("카누 타기", .experience, "figure.outdoor.cycle", "canoe_ride"),
        ("윈드서핑 배우기", .experience, "wind", "windsurfing"),
        ("카이트서핑 도전", .experience, "wind", "kitesurfing"),
        ("제트스키 타기", .experience, "water.waves", "jetski"),
        ("파라세일링", .experience, "parachute.fill", "parasailing"),
        ("수상스키", .experience, "figure.pool.swim", "water_skiing"),
        ("웨이크보드", .experience, "figure.surfing", "wakeboard"),
        ("플라이보드", .experience, "figure.fall", "flyboard"),
        ("세일링 요트 조종", .experience, "sailboat.fill", "sailing_yacht"),
        ("크루즈 디너쇼", .experience, "fork.knife", "cruise_dinner"),
        ("헬리콥터 투어", .experience, "airplane.circle.fill", "helicopter_tour"),
        ("소형 비행기 조종", .experience, "airplane", "small_plane"),
        ("글라이더 체험", .experience, "airplane.departure", "glider"),
        ("행글라이더", .experience, "figure.fall", "hang_glider"),
        ("실내 스카이다이빙", .experience, "wind", "indoor_skydive"),
        ("암벽 등반", .experience, "figure.climbing", "rock_climbing"),
        ("볼더링", .experience, "figure.climbing", "bouldering"),
        ("클라이밍 자격증", .experience, "rosette", "climbing_license"),
        ("트레일 러닝", .experience, "figure.run", "trail_running"),
        ("크로스컨트리 스키", .experience, "figure.skiing.crosscountry", "cross_country_ski"),
        ("스노보드 배우기", .experience, "snowflake", "snowboard"),
        ("스키 점프", .experience, "figure.skiing.downhill", "ski_jump"),
        ("아이스 스케이팅", .experience, "figure.skating", "ice_skating"),
        ("아이스하키 관람", .experience, "hockey.puck.fill", "ice_hockey"),
        ("컬링 체험", .experience, "circle.fill", "curling"),
        ("개썰매 타기", .experience, "hare.fill", "dog_sledding"),
        ("스노모빌", .experience, "snowflake", "snowmobile"),
        ("아이스 피싱", .experience, "fish.fill", "ice_fishing"),
        ("북유럽 사우나", .experience, "flame.fill", "nordic_sauna"),
        ("터키식 목욕탕", .experience, "drop.fill", "turkish_bath"),
        ("일본 료칸 체험", .experience, "building.fill", "ryokan"),
        ("한옥 스테이", .experience, "house.fill", "hanok_stay"),
        ("사막 캠핑", .experience, "tent.fill", "desert_camping"),
        ("글램핑", .experience, "tent.2.fill", "glamping"),
        ("트리하우스 숙박", .experience, "tree.fill", "treehouse"),
        ("동굴 호텔", .experience, "mountain.2.fill", "cave_hotel"),
        ("얼음 호텔", .experience, "snowflake", "ice_hotel"),
        ("수중 호텔", .experience, "fish.fill", "underwater_hotel"),
        ("등대 숙박", .experience, "light.beacon.max.fill", "lighthouse_stay"),
        ("성 호텔 숙박", .experience, "building.2.fill", "castle_hotel"),
        ("기차 호텔", .experience, "train.side.front.car", "train_hotel"),
        ("비행기 호텔", .experience, "airplane", "airplane_hotel"),
        ("럭셔리 사파리 롯지", .experience, "house.lodge.fill", "safari_lodge"),
        ("오버워터 방갈로", .experience, "house.fill", "overwater_bungalow"),
        ("짚라인 캐노피 투어", .experience, "arrow.forward.circle.fill", "canopy_tour"),
        ("ATV 오프로드", .experience, "car.circle.fill", "atv_offroad"),
        ("4륜 사막 투어", .experience, "car.fill", "desert_4wd"),
        ("스쿠터 여행", .experience, "scooter", "scooter_travel"),
        ("자전거 국토 횡단", .experience, "bicycle", "bike_crossing"),
        ("오토바이 투어", .experience, "motorcycle", "motorcycle_tour"),
        ("클래식카 드라이브", .experience, "car.circle.fill", "classic_car"),
        ("슈퍼카 체험", .experience, "car.2.fill", "supercar"),
        ("F1 관람", .experience, "car.circle.fill", "f1_watching"),
        ("NASCAR 체험", .experience, "car.fill", "nascar"),
        ("카트 레이싱", .experience, "figure.motorsports", "kart_racing"),
        ("드리프트 체험", .experience, "car.circle.fill", "drift"),
        ("오프로드 랠리", .experience, "car.fill", "offroad_rally"),
        ("트럭 운전", .experience, "truck.box.fill", "truck_driving"),
        ("탱크 운전", .experience, "car.fill", "tank_driving"),
        ("잠수함 탑승", .experience, "water.waves.and.arrow.down", "submarine"),
        ("열기구 축제", .experience, "balloon.fill", "balloon_festival"),
        ("연날리기 축제", .experience, "wind", "kite_festival"),
        ("불꽃놀이 축제", .experience, "sparkles", "fireworks_festival"),
        ("와인 만들기 체험", .experience, "wineglass.fill", "wine_making"),

        // 성취 (100개)
        ("에베레스트 베이스캠프 트레킹", .achievement, "mountain.2.fill", "everest_milestone"),
        ("풀코스 마라톤 완주하기", .achievement, "figure.run", "full_marathon"),
        ("하프 마라톤 완주", .achievement, "figure.run.circle.fill", "half_marathon"),
        ("철인3종 경기 완주", .achievement, "figure.open.water.swim", "triathlon"),
        ("100km 울트라 마라톤", .achievement, "gauge.with.needle.fill", "ultra_marathon"),
        ("등산 100대 명산 완등", .achievement, "mountain.2.circle.fill", "100_mountains"),
        ("킬리만자로 등정", .achievement, "mountain.2", "kilimanjaro"),
        ("후지산 등정", .achievement, "triangle.fill", "mount_fuji"),
        ("북한산 100회 등반", .achievement, "figure.hiking", "bukhansan"),
        ("사이클 국토 종주", .achievement, "bicycle", "korea_cycling"),
        ("제주 올레길 완주", .achievement, "map.fill", "jeju_olle"),
        ("산티아고 순례길 완주", .achievement, "location.fill", "camino_santiago"),
        ("책 100권 읽기", .achievement, "books.vertical.fill", "reading_100books"),
        ("책 출판하기", .achievement, "book.closed.fill", "publish_book"),
        ("개인전 전시회 열기", .achievement, "photo.fill", "art_exhibition"),
        ("유튜브 구독자 10만 달성", .achievement, "play.rectangle.fill", "youtube_100k"),
        ("블로그 방문자 100만 달성", .achievement, "chart.line.uptrend.xyaxis", "blog_1m"),
        ("창업해서 첫 매출 내기", .achievement, "cart.fill", "startup_sales"),
        ("연봉 1억 달성하기", .achievement, "dollarsign.circle.fill", "salary_100m"),
        ("자산 10억 만들기", .achievement, "banknote.fill", "asset_1b"),
        ("10km 달리기", .achievement, "figure.run.circle.fill", "10km_run"),
        ("5km 달리기", .achievement, "figure.run", "5km_run"),
        ("100일 연속 운동", .achievement, "calendar", "100day_workout"),
        ("365일 운동 챌린지", .achievement, "calendar.circle.fill", "365day_workout"),
        ("스쿼트 1000개", .achievement, "figure.strengthtraining.traditional", "1000_squats"),
        ("푸시업 1000개", .achievement, "figure.strengthtraining.functional", "1000_pushups"),
        ("플랭크 10분", .achievement, "figure.core.training", "10min_plank"),
        ("5km 수영", .achievement, "figure.pool.swim", "5km_swim"),
        ("오픈워터 수영", .achievement, "figure.open.water.swim", "openwater_swim"),
        ("수영 4대 영법", .achievement, "figure.pool.swim", "4_swimming_styles"),
        ("프리다이빙 자격증", .achievement, "figure.pool.swim", "freediving_license"),
        ("다이빙 마스터", .achievement, "figure.pool.swim", "diving_master"),
        ("인명구조 자격증", .achievement, "cross.case.fill", "lifeguard_license"),
        ("CPR 자격증", .achievement, "cross.fill", "cpr_license"),
        ("응급처치 전문가", .achievement, "cross.case.fill", "first_aid_expert"),
        ("소방관 체력 테스트", .achievement, "flame.fill", "firefighter_test"),
        ("군인 체력 테스트", .achievement, "figure.strengthtraining.traditional", "military_test"),
        ("경찰 체력 테스트", .achievement, "figure.run", "police_test"),
        ("올림픽 관람", .achievement, "trophy.fill", "olympics"),
        ("월드컵 관람", .achievement, "soccerball", "worldcup"),
        ("슈퍼볼 관람", .achievement, "football.fill", "superbowl"),
        ("윔블던 관람", .achievement, "tennisball.fill", "wimbledon"),
        ("투르 드 프랑스 관람", .achievement, "bicycle", "tour_de_france"),
        ("마스터스 골프", .achievement, "figure.golf", "masters_golf"),
        ("보스턴 마라톤", .achievement, "figure.run", "boston_marathon"),
        ("뉴욕 마라톤", .achievement, "figure.run", "newyork_marathon"),
        ("도쿄 마라톤", .achievement, "figure.run", "tokyo_marathon"),
        ("런던 마라톤", .achievement, "figure.run", "london_marathon"),
        ("베를린 마라톤", .achievement, "figure.run", "berlin_marathon"),
        ("시카고 마라톤", .achievement, "figure.run", "chicago_marathon"),
        ("6대 메이저 마라톤 완주", .achievement, "figure.run.circle.fill", "6major_marathon"),
        ("스파르탄 레이스", .achievement, "figure.run", "spartan_race"),
        ("터프머더 완주", .achievement, "figure.run", "tough_mudder"),
        ("워리어 대시", .achievement, "figure.run", "warrior_dash"),
        ("크로스핏 대회 출전", .achievement, "figure.strengthtraining.traditional", "crossfit_competition"),
        ("보디빌딩 대회", .achievement, "figure.strengthtraining.traditional", "bodybuilding"),
        ("파워리프팅 대회", .achievement, "dumbbell.fill", "powerlifting"),
        ("역도 대회", .achievement, "dumbbell.fill", "weightlifting"),
        ("격투기 대회 출전", .achievement, "figure.boxing", "mma_competition"),
        ("복싱 시합", .achievement, "figure.boxing", "boxing_match"),
        ("태권도 사범", .achievement, "figure.taichi", "taekwondo_master"),
        ("유도 검은띠", .achievement, "figure.wrestling", "judo_blackbelt"),
        ("합기도 사범", .achievement, "figure.martial.arts", "hapkido_master"),
        ("검도 단증", .achievement, "figure.fencing", "kendo_dan"),
        ("주짓수 검은띠", .achievement, "figure.wrestling", "jiujitsu_blackbelt"),
        ("무에타이 수련", .achievement, "figure.kickboxing", "muay_thai"),
        ("크라브 마가 자격증", .achievement, "figure.martial.arts", "krav_maga"),
        ("서핑 대회 출전", .achievement, "figure.surfing", "surfing_competition"),
        ("스케이트보드 대회", .achievement, "figure.skateboarding", "skateboard_competition"),
        ("BMX 대회", .achievement, "bicycle", "bmx_competition"),
        ("산악자전거 대회", .achievement, "bicycle.circle.fill", "mtb_competition"),
        ("철인 3종 70.3", .achievement, "figure.open.water.swim", "ironman_703"),
        ("철인 3종 풀코스", .achievement, "figure.open.water.swim", "ironman_full"),
        ("듀애슬론 완주", .achievement, "figure.run", "duathlon"),
        ("아쿠아슬론 완주", .achievement, "figure.pool.swim", "aquathlon"),
        ("스윔런 완주", .achievement, "figure.pool.swim", "swimrun"),
        ("울트라 트레일 완주", .achievement, "figure.hiking", "ultra_trail"),
        ("UTMB 완주", .achievement, "figure.hiking", "utmb"),
        ("서부 100마일", .achievement, "figure.run", "western_states"),
        ("배드워터 135", .achievement, "figure.run", "badwater_135"),
        ("사하라 사막 레이스", .achievement, "figure.run", "sahara_race"),
        ("남극 마라톤", .achievement, "figure.run", "antarctica_marathon"),
        ("에베레스트 마라톤", .achievement, "figure.run", "everest_marathon"),
        ("만리장성 마라톤", .achievement, "figure.run", "great_wall_marathon"),
        ("빅서 마라톤", .achievement, "figure.run", "big_sur_marathon"),
        ("자선 마라톤 10회", .achievement, "heart.fill", "charity_marathon_10"),
        ("블로그 수익화", .achievement, "dollarsign.circle.fill", "blog_profit"),
        ("유튜브 수익화", .achievement, "dollarsign.circle.fill", "youtube_profit"),
        ("팟캐스트 100화", .achievement, "mic.fill", "podcast_100"),
        ("강연 100회", .achievement, "mic.circle.fill", "lecture_100"),
        ("워크숍 개최", .achievement, "person.3.fill", "workshop_host"),
        ("컨퍼런스 발표", .achievement, "person.wave.2.fill", "conference_speaker"),
        ("TED 강연", .achievement, "mic.fill", "ted_talk"),
        ("베스트셀러 작가", .achievement, "book.closed.fill", "bestseller_author"),
        ("상 수상", .achievement, "trophy.fill", "award_winner"),
        ("특허 등록", .achievement, "doc.text.fill", "patent"),
        ("기네스북 등재", .achievement, "book.fill", "guinness_record"),

        // 학습 (100개)
        ("영어 유창하게 구사하기", .learning, "text.bubble.fill", "english_fluent"),
        ("중국어 HSK 6급 취득", .learning, "character.textbox", "chinese_hsk6"),
        ("일본어 JLPT N1 취득", .learning, "character.book.closed.fill", "japanese_n1"),
        ("프랑스어 회화 마스터", .learning, "bubble.left.and.bubble.right.fill", "french_master"),
        ("스페인어 배우기", .learning, "globe.americas.fill", "spanish_learning"),
        ("코딩 마스터하기", .learning, "chevron.left.forwardslash.chevron.right", "coding_master"),
        ("AI/머신러닝 전문가 되기", .learning, "brain.fill", "ai_ml_expert"),
        ("사진 작가 자격증", .learning, "camera.aperture", "photography_license"),
        ("바리스타 자격증 취득", .learning, "cup.and.saucer.fill", "barista_license"),
        ("소믈리에 자격증", .learning, "wineglass", "sommelier_license"),
        ("요리사 자격증 취득", .learning, "flame.fill", "chef_license"),
        ("공인중개사 자격증", .learning, "building.fill", "realtor_license"),
        ("재무설계사 자격증", .learning, "chart.pie.fill", "financial_planner"),
        ("MBA 학위 취득", .learning, "graduationcap.fill", "mba_degree"),
        ("박사 학위 취득하기", .learning, "doc.text.fill", "phd_degree"),
        ("독일어 배우기", .learning, "globe.europe.africa.fill", "german_learning"),
        ("이탈리아어 배우기", .learning, "globe.europe.africa.fill", "italian_learning"),
        ("포르투갈어 배우기", .learning, "globe.americas.fill", "portuguese_learning"),
        ("러시아어 배우기", .learning, "character.book.closed.fill", "russian_learning"),
        ("아랍어 배우기", .learning, "character.textbox", "arabic_learning"),
        ("한국어 능력시험 6급", .learning, "character.book.closed.fill", "topik_6"),
        ("TOEIC 990점", .learning, "text.badge.checkmark", "toeic_990"),
        ("TOEFL 120점", .learning, "text.badge.checkmark", "toefl_120"),
        ("IELTS 9.0", .learning, "text.badge.checkmark", "ielts_9"),
        ("OPIc AL", .learning, "text.bubble.fill", "opic_al"),
        ("번역가 자격증", .learning, "doc.text.fill", "translator_license"),
        ("통역사 자격증", .learning, "person.2.fill", "interpreter_license"),
        ("교사 자격증", .learning, "person.fill.viewfinder", "teacher_license"),
        ("변호사 시험", .learning, "book.closed.fill", "lawyer_exam"),
        ("회계사 자격증", .learning, "doc.text.fill", "cpa_license"),
        ("세무사 자격증", .learning, "doc.text.fill", "tax_license"),
        ("감정평가사", .learning, "building.fill", "appraiser_license"),
        ("관세사 자격증", .learning, "shippingbox.fill", "customs_license"),
        ("변리사 자격증", .learning, "doc.text.fill", "patent_attorney"),
        ("노무사 자격증", .learning, "person.3.fill", "labor_attorney"),
        ("행정사 자격증", .learning, "folder.fill", "admin_attorney"),
        ("법무사 자격증", .learning, "doc.text.fill", "legal_attorney"),
        ("PMP 자격증", .learning, "chart.bar.fill", "pmp_license"),
        ("정보처리기사", .learning, "desktopcomputer", "computer_engineer"),
        ("네트워크관리사", .learning, "network", "network_admin"),
        ("리눅스마스터", .learning, "terminal.fill", "linux_master"),
        ("SQLD 자격증", .learning, "cylinder.fill", "sqld_license"),
        ("빅데이터분석기사", .learning, "chart.bar.xaxis", "bigdata_analyst"),
        ("AWS 자격증", .learning, "cloud.fill", "aws_license"),
        ("구글 클라우드 자격증", .learning, "cloud.fill", "gcp_license"),
        ("Azure 자격증", .learning, "cloud.fill", "azure_license"),
        ("CISSP 자격증", .learning, "lock.shield.fill", "cissp_license"),
        ("CEH 자격증", .learning, "lock.fill", "ceh_license"),
        ("CCNA 자격증", .learning, "network", "ccna_license"),
        ("CCNP 자격증", .learning, "network", "ccnp_license"),
        ("데이터사이언티스트", .learning, "chart.xyaxis.line", "data_scientist"),
        ("풀스택 개발자", .learning, "chevron.left.forwardslash.chevron.right", "fullstack_dev"),
        ("iOS 개발자", .learning, "apple.logo", "ios_developer"),
        ("안드로이드 개발자", .learning, "android", "android_developer"),
        ("블록체인 개발자", .learning, "link.circle.fill", "blockchain_dev"),
        ("게임 개발자", .learning, "gamecontroller.fill", "game_developer"),
        ("Unity 마스터", .learning, "cube.fill", "unity_master"),
        ("Unreal Engine 마스터", .learning, "cube.fill", "unreal_master"),
        ("3D 모델링", .learning, "cube.transparent.fill", "3d_modeling"),
        ("Maya 마스터", .learning, "cube.fill", "maya_master"),
        ("Blender 마스터", .learning, "cube.fill", "blender_master"),
        ("포토샵 전문가", .learning, "photo.fill", "photoshop_expert"),
        ("일러스트레이터 전문가", .learning, "paintbrush.fill", "illustrator_expert"),
        ("프리미어 프로 전문가", .learning, "video.fill", "premiere_expert"),
        ("애프터 이펙트 전문가", .learning, "sparkles", "aftereffects_expert"),
        ("파이널 컷 프로", .learning, "video.fill", "finalcut_expert"),
        ("다빈치 리졸브", .learning, "video.circle.fill", "davinci_resolve"),
        ("캐드 자격증", .learning, "square.and.pencil", "cad_license"),
        ("건축기사 자격증", .learning, "building.2.fill", "architect_license"),
        ("실내건축기사", .learning, "house.fill", "interior_license"),
        ("조경기사 자격증", .learning, "tree.fill", "landscape_license"),
        ("토목기사 자격증", .learning, "road.lanes", "civil_engineer"),
        ("전기기사 자격증", .learning, "bolt.fill", "electric_engineer"),
        ("기계기사 자격증", .learning, "gearshape.fill", "mechanical_engineer"),
        ("화학분석기사", .learning, "testtube.2", "chemical_analyst"),
        ("환경기사 자격증", .learning, "leaf.fill", "environmental_engineer"),
        ("에너지관리기사", .learning, "bolt.circle.fill", "energy_manager"),
        ("소방설비기사", .learning, "flame.fill", "fire_equipment_engineer"),
        ("위험물기능사", .learning, "exclamationmark.triangle.fill", "hazmat_technician"),
        ("가스기사 자격증", .learning, "flame.circle.fill", "gas_engineer"),
        ("항공정비사", .learning, "airplane", "aircraft_mechanic"),
        ("자동차정비기사", .learning, "car.fill", "auto_mechanic"),
        ("용접기능사", .learning, "flame.fill", "welder_license"),
        ("보일러기능사", .learning, "flame.circle.fill", "boiler_technician"),
        ("냉동기계기사", .learning, "snowflake", "refrigeration_engineer"),
        ("위생사 자격증", .learning, "cross.fill", "hygienist_license"),
        ("영양사 자격증", .learning, "fork.knife.circle.fill", "dietitian_license"),
        ("임상영양사", .learning, "cross.case.fill", "clinical_dietitian"),
        ("간호사 자격증", .learning, "cross.case.fill", "nurse_license"),
        ("약사 자격증", .learning, "cross.vial.fill", "pharmacist_license"),
        ("수의사 자격증", .learning, "pawprint.circle.fill", "veterinarian_license"),
        ("물리치료사", .learning, "figure.walk", "physical_therapist"),
        ("작업치료사", .learning, "hand.raised.fill", "occupational_therapist"),
        ("언어치료사", .learning, "text.bubble.fill", "speech_therapist"),
        ("임상심리사", .learning, "brain.fill", "clinical_psychologist"),
        ("상담심리사", .learning, "person.2.fill", "counseling_psychologist"),
        ("사회복지사 1급", .learning, "heart.circle.fill", "social_worker_1"),
        ("보육교사 자격증", .learning, "figure.and.child.holdinghands", "childcare_teacher"),
        ("유치원 정교사", .learning, "figure.2.and.child.holdinghands", "kindergarten_teacher"),

        // 건강 (100개)
        ("체중 10kg 감량", .health, "scalemass.fill", "weight_loss"),
        ("복근 만들기", .health, "figure.core.training", "abs_workout"),
        ("벤치프레스 100kg", .health, "dumbbell.fill", "bench_press"),
        ("풀업 20개 하기", .health, "figure.strengthtraining.traditional", "pullup_20"),
        ("요가 강사 자격증", .health, "figure.yoga", "yoga_instructor"),
        ("필라테스 마스터하기", .health, "figure.pilates", "pilates_master"),
        ("금연 1년 달성", .health, "wind", "quit_smoking"),
        ("채식주의자 되기", .health, "carrot.fill", "vegetarian"),
        ("명상 100일 연속", .health, "sparkles", "meditation_100days"),
        ("건강검진 올 정상 판정", .health, "stethoscope", "health_checkup"),
        ("체중 5kg 감량", .health, "scalemass.fill", "weight_loss_5kg"),
        ("체중 20kg 감량", .health, "scalemass.fill", "weight_loss_20kg"),
        ("체지방률 10% 달성", .health, "percent", "bodyfat_10"),
        ("체지방률 15% 달성", .health, "percent", "bodyfat_15"),
        ("근육량 5kg 증량", .health, "figure.strengthtraining.traditional", "muscle_gain_5kg"),
        ("근육량 10kg 증량", .health, "figure.strengthtraining.traditional", "muscle_gain_10kg"),
        ("스쿼트 200kg", .health, "figure.strengthtraining.traditional", "squat_200kg"),
        ("데드리프트 200kg", .health, "figure.strengthtraining.traditional", "deadlift_200kg"),
        ("벤치프레스 150kg", .health, "dumbbell.fill", "bench_press_150kg"),
        ("풀업 50개", .health, "figure.strengthtraining.traditional", "pullup_50"),
        ("푸시업 100개 연속", .health, "figure.strengthtraining.functional", "pushup_100"),
        ("플랭크 30분", .health, "figure.core.training", "plank_30min"),
        ("버피 100개", .health, "figure.run", "burpee_100"),
        ("에어 스쿼트 500개", .health, "figure.strengthtraining.traditional", "airsquat_500"),
        ("유연성 향상", .health, "figure.flexibility", "flexibility"),
        ("일자 다리 만들기", .health, "figure.walk", "straight_legs"),
        ("거북목 교정", .health, "figure.walk", "neck_correction"),
        ("골반 교정", .health, "figure.walk", "pelvis_correction"),
        ("자세 교정", .health, "figure.stand", "posture_correction"),
        ("척추 건강", .health, "figure.walk", "spine_health"),
        ("관절 건강", .health, "figure.walk", "joint_health"),
        ("혈압 정상화", .health, "heart.fill", "blood_pressure"),
        ("콜레스테롤 정상화", .health, "drop.fill", "cholesterol"),
        ("혈당 정상화", .health, "drop.circle.fill", "blood_sugar"),
        ("간 수치 정상화", .health, "cross.fill", "liver_function"),
        ("신장 건강", .health, "drop.circle.fill", "kidney_health"),
        ("당뇨 예방", .health, "cross.case.fill", "diabetes_prevention"),
        ("고혈압 예방", .health, "heart.circle.fill", "hypertension_prevention"),
        ("심장병 예방", .health, "heart.fill", "heart_disease_prevention"),
        ("뇌졸중 예방", .health, "brain.fill", "stroke_prevention"),
        ("암 검진", .health, "stethoscope", "cancer_screening"),
        ("금주 100일", .health, "wind", "no_alcohol_100days"),
        ("금주 1년", .health, "wind", "no_alcohol_1year"),
        ("금연 100일", .health, "wind", "no_smoking_100days"),
        ("금연 5년", .health, "wind", "no_smoking_5years"),
        ("카페인 디톡스", .health, "cup.and.saucer.fill", "caffeine_detox"),
        ("설탕 디톡스", .health, "sugar.cubes.fill", "sugar_detox"),
        ("가공식품 끊기", .health, "fork.knife", "no_processed_food"),
        ("유기농 식단", .health, "leaf.fill", "organic_diet"),
        ("지중해식 식단", .health, "fork.knife.circle.fill", "mediterranean_diet"),
        ("케토 식단", .health, "fork.knife", "keto_diet"),
        ("간헐적 단식", .health, "clock.fill", "intermittent_fasting"),
        ("하루 2L 물 마시기", .health, "drop.fill", "drink_2l_water"),
        ("채소 500g 먹기", .health, "carrot.fill", "eat_500g_veggies"),
        ("과일 200g 먹기", .health, "apple.logo", "eat_200g_fruits"),
        ("견과류 섭취", .health, "circle.fill", "eat_nuts"),
        ("프로바이오틱스 섭취", .health, "pill.fill", "probiotics"),
        ("비타민 D 보충", .health, "sun.max.fill", "vitamin_d"),
        ("오메가3 보충", .health, "fish.fill", "omega3"),
        ("단백질 체중×2g", .health, "fork.knife.circle.fill", "protein_intake"),
        ("아침 식사 챙기기", .health, "sunrise.fill", "breakfast_daily"),
        ("규칙적인 식사", .health, "clock.circle.fill", "regular_meals"),
        ("과식 줄이기", .health, "fork.knife", "reduce_overeating"),
        ("야식 끊기", .health, "moon.fill", "no_late_night_snack"),
        ("배달 음식 줄이기", .health, "takeoutbag.and.cup.and.straw.fill", "reduce_delivery"),
        ("집밥 먹기", .health, "house.fill", "home_cooked_meal"),
        ("요리 실력 향상", .health, "flame.fill", "cooking_skill"),
        ("도시락 싸기", .health, "backpack.fill", "pack_lunch"),
        ("일찍 자기", .health, "bed.double.fill", "early_sleep"),
        ("7시간 수면", .health, "bed.double.fill", "7hour_sleep"),
        ("8시간 수면", .health, "bed.double.fill", "8hour_sleep"),
        ("불면증 치료", .health, "moon.stars.fill", "insomnia_treatment"),
        ("수면의 질 개선", .health, "bed.double.circle.fill", "sleep_quality"),
        ("아침형 인간 되기", .health, "sunrise.fill", "morning_person"),
        ("새벽 5시 기상", .health, "alarm.fill", "wake_5am"),
        ("규칙적인 수면", .health, "clock.fill", "regular_sleep"),
        ("낮잠 줄이기", .health, "zzz", "reduce_nap"),
        ("스트레스 관리", .health, "sparkles", "stress_management"),
        ("분노 조절", .health, "brain.fill", "anger_management"),
        ("우울증 극복", .health, "brain.fill", "overcome_depression"),
        ("불안 장애 치료", .health, "brain.fill", "anxiety_treatment"),
        ("공황 장애 극복", .health, "brain.fill", "overcome_panic"),
        ("심리 상담 받기", .health, "person.2.fill", "counseling"),
        ("정신 건강 검진", .health, "brain.fill", "mental_health_checkup"),
        ("긍정적 사고", .health, "sparkles", "positive_thinking"),
        ("감사 일기", .health, "book.fill", "gratitude_journal"),
        ("하루 30분 산책", .health, "figure.walk", "walk_30min"),
        ("하루 1만보 걷기", .health, "figure.walk", "walk_10000steps"),
        ("계단 오르기", .health, "figure.stairs", "take_stairs"),
        ("자전거 출퇴근", .health, "bicycle", "bike_commute"),
        ("걷기 출퇴근", .health, "figure.walk", "walk_commute"),
        ("엘리베이터 안 타기", .health, "figure.walk", "no_elevator"),
        ("앉아있는 시간 줄이기", .health, "figure.stand", "reduce_sitting"),
        ("스탠딩 데스크", .health, "figure.stand", "standing_desk"),
        ("스트레칭 습관", .health, "figure.flexibility", "stretching_habit"),
        ("마사지 정기적으로", .health, "hand.raised.fill", "regular_massage"),
        ("발 마사지", .health, "foot.fill", "foot_massage"),
        ("족욕 습관", .health, "drop.fill", "foot_bath"),
        ("반신욕 습관", .health, "drop.fill", "half_bath"),

        // 관계 (100개)
        ("부모님과 세계여행", .relationship, "figure.2.and.child.holdinghands", "parents_world_trip"),
        ("가족들과 유럽 여행", .relationship, "person.3.fill", "family_europe"),
        ("친구들과 제주도 한달 살기", .relationship, "person.2.fill", "jeju_friends"),
        ("연인과 오로라 보기", .relationship, "heart.circle.fill", "couple_aurora"),
        ("결혼식 올리기", .relationship, "ring.circle.fill", "wedding"),
        ("아이 낳고 키우기", .relationship, "figure.and.child.holdinghands", "raising_child"),
        ("반려동물 입양하기", .relationship, "pawprint.fill", "adopt_pet"),
        ("멘토 만나 인생 조언 듣기", .relationship, "person.crop.circle.fill.badge.checkmark", "meet_mentor"),
        ("평생 친구 10명 만들기", .relationship, "person.3.sequence.fill", "10_lifelong_friends"),
        ("사랑하는 사람에게 프러포즈", .relationship, "heart.text.square.fill", "propose"),
        ("부모님 효도 여행", .relationship, "figure.2.and.child.holdinghands", "parents_trip"),
        ("부모님께 집 사드리기", .relationship, "house.fill", "house_for_parents"),
        ("부모님 건강검진", .relationship, "stethoscope", "parents_checkup"),
        ("부모님 용돈 드리기", .relationship, "won.circle.fill", "parents_allowance"),
        ("부모님과 맛집 투어", .relationship, "fork.knife.circle.fill", "parents_food_tour"),
        ("조부모님 모시고 여행", .relationship, "figure.2.and.child.holdinghands", "grandparents_trip"),
        ("형제자매와 여행", .relationship, "person.3.fill", "siblings_trip"),
        ("가족 사진 촬영", .relationship, "camera.fill", "family_photo"),
        ("가족 영상 제작", .relationship, "video.fill", "family_video"),
        ("가족 앨범 만들기", .relationship, "book.closed.fill", "family_album"),
        ("가족 단체 티셔츠", .relationship, "tshirt.fill", "family_tshirt"),
        ("가족 모임 정례화", .relationship, "calendar", "family_gathering"),
        ("가족 그룹채팅", .relationship, "message.fill", "family_chat"),
        ("매주 부모님 전화", .relationship, "phone.fill", "call_parents_weekly"),
        ("매일 가족 식사", .relationship, "fork.knife", "family_dinner_daily"),
        ("가족 캠핑", .relationship, "tent.fill", "family_camping"),
        ("가족 등산", .relationship, "mountain.2.fill", "family_hiking"),
        ("가족 자전거 여행", .relationship, "bicycle", "family_biking"),
        ("연인과 세계여행", .relationship, "heart.fill", "couple_world_trip"),
        ("연인과 동거", .relationship, "house.fill", "live_together"),
        ("연인에게 깜짝 선물", .relationship, "gift.fill", "surprise_gift"),
        ("기념일 챙기기", .relationship, "calendar.circle.fill", "celebrate_anniversary"),
        ("커플 사진 촬영", .relationship, "camera.fill", "couple_photo"),
        ("커플 링 만들기", .relationship, "ring.circle.fill", "couple_ring"),
        ("커플 여행 100일", .relationship, "calendar", "couple_trip_100days"),
        ("연애 1000일", .relationship, "heart.circle.fill", "relationship_1000days"),
        ("연애 5년", .relationship, "heart.fill", "relationship_5years"),
        ("데이트 100회", .relationship, "heart.circle.fill", "date_100times"),
        ("손편지 쓰기", .relationship, "envelope.fill", "love_letter"),
        ("사랑 고백하기", .relationship, "heart.text.square.fill", "confess_love"),
        ("첫 데이트 장소 재방문", .relationship, "location.fill", "revisit_first_date"),
        ("웨딩 촬영", .relationship, "camera.fill", "wedding_photo"),
        ("신혼여행", .relationship, "airplane", "honeymoon"),
        ("결혼 10주년", .relationship, "ring.circle.fill", "10th_anniversary"),
        ("결혼 20주년", .relationship, "ring.circle.fill", "20th_anniversary"),
        ("금혼식", .relationship, "ring.circle.fill", "50th_anniversary"),
        ("자녀 출산", .relationship, "figure.and.child.holdinghands", "child_birth"),
        ("자녀 첫 돌", .relationship, "birthday.cake.fill", "child_first_birthday"),
        ("자녀 입학식", .relationship, "graduationcap.fill", "child_school"),
        ("자녀 졸업식", .relationship, "graduationcap.fill", "child_graduation"),
        ("자녀 성인식", .relationship, "person.fill", "child_adult_ceremony"),
        ("자녀와 여행", .relationship, "airplane", "trip_with_child"),
        ("자녀에게 편지", .relationship, "envelope.fill", "letter_to_child"),
        ("자녀 교육", .relationship, "book.fill", "educate_child"),
        ("자녀 재능 발견", .relationship, "sparkles", "find_child_talent"),
        ("반려견 입양", .relationship, "pawprint.fill", "adopt_dog"),
        ("반려묘 입양", .relationship, "pawprint.fill", "adopt_cat"),
        ("반려동물 훈련", .relationship, "pawprint.circle.fill", "pet_training"),
        ("반려동물과 여행", .relationship, "car.fill", "trip_with_pet"),
        ("반려동물 사진 촬영", .relationship, "camera.fill", "pet_photo"),
        ("친구 10명 만들기", .relationship, "person.3.fill", "make_10_friends"),
        ("친구와 매주 만남", .relationship, "calendar", "meet_friends_weekly"),
        ("친구와 동반 여행", .relationship, "airplane", "trip_with_friends"),
        ("친구에게 깜짝 파티", .relationship, "party.popper.fill", "surprise_party"),
        ("친구 생일 챙기기", .relationship, "birthday.cake.fill", "friend_birthday"),
        ("친구에게 선물", .relationship, "gift.fill", "gift_to_friend"),
        ("우정 10년", .relationship, "heart.fill", "friendship_10years"),
        ("우정 20년", .relationship, "heart.fill", "friendship_20years"),
        ("동창회 참석", .relationship, "person.3.fill", "alumni_reunion"),
        ("동호회 가입", .relationship, "person.3.fill", "join_club"),
        ("봉사 활동", .relationship, "heart.circle.fill", "volunteer"),
        ("기부 활동", .relationship, "dollarsign.circle.fill", "donation"),
        ("후원 아동", .relationship, "figure.and.child.holdinghands", "sponsor_child"),
        ("멘토링", .relationship, "person.2.fill", "mentoring"),
        ("코칭 받기", .relationship, "person.crop.circle.fill", "get_coaching"),
        ("인생 멘토 찾기", .relationship, "person.crop.circle.fill.badge.checkmark", "find_mentor"),
        ("롤모델 만나기", .relationship, "person.fill", "meet_role_model"),
        ("네트워킹", .relationship, "person.3.fill", "networking"),
        ("명함 100장 교환", .relationship, "person.crop.square.fill", "exchange_100_cards"),
        ("커피챗 100회", .relationship, "cup.and.saucer.fill", "coffee_chat_100"),
        ("강연 들으러 가기", .relationship, "mic.fill", "attend_lecture"),
        ("북클럽 참여", .relationship, "book.fill", "book_club"),
        ("스터디 그룹", .relationship, "person.3.fill", "study_group"),
        ("운동 메이트", .relationship, "figure.run", "workout_buddy"),
        ("러닝 크루", .relationship, "figure.run", "running_crew"),
        ("등산 모임", .relationship, "mountain.2.fill", "hiking_group"),
        ("사진 동호회", .relationship, "camera.fill", "photo_club"),
        ("음악 동호회", .relationship, "music.note", "music_club"),
        ("독서 모임", .relationship, "book.fill", "reading_group"),
        ("요리 모임", .relationship, "fork.knife", "cooking_group"),
        ("취미 공유", .relationship, "heart.fill", "share_hobby"),
        ("SNS 친구 만들기", .relationship, "person.crop.circle.fill", "sns_friend"),
        ("펜팔 친구", .relationship, "envelope.fill", "pen_pal"),
        ("외국인 친구", .relationship, "globe.americas.fill", "foreign_friend"),
        ("이웃과 인사", .relationship, "hand.wave.fill", "greet_neighbor"),
        ("동네 친구", .relationship, "house.fill", "local_friend"),
        ("직장 동료와 친해지기", .relationship, "person.2.fill", "befriend_colleague"),
    ]

    func getRandomPopularBuckets(count: Int = 5) -> [(title: String, category: BucketCategory, thumbnail: String, backgroundImage: String)] {
        #warning("개발 모드: 아이슬란드에서 오로라 보기를 항상 첫 번째로 표시")// 개발 모드: "아이슬란드에서 오로라 보기"를 항상 첫 번째로 표시
        let icelandAurora = popularBucketLists[0] // "아이슬란드에서 오로라 보기"
        let others = Array(popularBucketLists.dropFirst().shuffled().prefix(count - 1))
        return [icelandAurora] + others
    }
    
    func addBucketItem(title: String, category: BucketCategory, thumbnail: String? = nil, backgroundImage: String? = nil, location: LocationInfo? = nil) {
        let newItem = BucketListItem(title: title, category: category, thumbnail: thumbnail, backgroundImage: backgroundImage, location: location)
        bucketItems.append(newItem)
        saveData()
    }
    
    func startClimbing(item: BucketListItem) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].status = .climbing
            bucketItems[index].dateStarted = Date()
            saveData()
            // 프리셋 마일스톤 자동 생성
            generatePresetMilestones(for: bucketItems[index])
        }
    }
    
    func completeMilestonesPhase(item: BucketListItem) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].milestonesPhaseCompleted = true
            saveData()
        }
    }

    func completeBucket(item: BucketListItem) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].status = .completed
            bucketItems[index].dateCompleted = Date()
            saveData()
        }
    }
    
    func deleteBucket(item: BucketListItem) {
        bucketItems.removeAll { $0.id == item.id }
        saveData()
    }
    
    func updateObstacle(item: BucketListItem, obstacle: Obstacle, newValue: Double) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let obstacleIndex = bucketItems[itemIndex].obstacles.firstIndex(where: { $0.id == obstacle.id }) {
            bucketItems[itemIndex].obstacles[obstacleIndex].currentValue = newValue
            saveData()
        }
    }
    
    func addDailyProgress(item: BucketListItem, action: String, distance: Double) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            let progress = DailyProgress(date: Date(), action: action, distance: distance)
            bucketItems[index].dailyProgress.append(progress)
            saveData()
        }
    }

    func deleteDailyProgress(item: BucketListItem, progress: DailyProgress) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let progressIndex = bucketItems[itemIndex].dailyProgress.firstIndex(where: { $0.id == progress.id }) {
            bucketItems[itemIndex].dailyProgress.remove(at: progressIndex)
            saveData()
        }
    }

    func toggleMilestone(item: BucketListItem, milestone: Milestone) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let campIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones[campIndex].isCompleted.toggle()
            if bucketItems[itemIndex].milestones[campIndex].isCompleted {
                bucketItems[itemIndex].milestones[campIndex].completedDate = Date()
            } else {
                bucketItems[itemIndex].milestones[campIndex].completedDate = nil
            }
            saveData()
        }
    }

    func toggleChecklistItem(item: BucketListItem, milestone: Milestone, checklistItem: ChecklistItem) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }),
           let checklistIndex = bucketItems[itemIndex].milestones[milestoneIndex].checklist.firstIndex(where: { $0.id == checklistItem.id }) {

            // 체크리스트 아이템 토글
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].isCompleted.toggle()

            // 모든 체크리스트가 완료되었는지 확인하고 마일스톤 자동 완료/해제
            let allCompleted = bucketItems[itemIndex].milestones[milestoneIndex].allChecklistCompleted
            if allCompleted && !bucketItems[itemIndex].milestones[milestoneIndex].isCompleted {
                bucketItems[itemIndex].milestones[milestoneIndex].isCompleted = true
                bucketItems[itemIndex].milestones[milestoneIndex].completedDate = Date()
            } else if !allCompleted && bucketItems[itemIndex].milestones[milestoneIndex].isCompleted {
                bucketItems[itemIndex].milestones[milestoneIndex].isCompleted = false
                bucketItems[itemIndex].milestones[milestoneIndex].completedDate = nil
            }

            saveData()
        }
    }

    func addMilestone(item: BucketListItem, title: String, description: String, successCriteria: [String] = []) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            let newCamp = Milestone(title: title, description: description, successCriteria: successCriteria)
            bucketItems[index].milestones.append(newCamp)
            saveData()
        }
    }

    func generatePresetMilestones(for item: BucketListItem) {
        guard let index = bucketItems.firstIndex(where: { $0.id == item.id }) else { return }

        let milestones = getMilestonesForBucket(title: item.title, category: item.category)
        bucketItems[index].milestones = milestones
        saveData()
    }

    private func getMilestonesForBucket(title: String, category: BucketCategory) -> [Milestone] {
        switch title {
        // MARK: - 여행 카테고리
        case "아이슬란드에서 오로라 보기":
            return [
                Milestone(title: "오로라 시즌 리서치", description: "9월~3월 중 최적의 방문 시기 조사", successCriteria: ["오로라 예보 앱/사이트를 알고 있나요?", "달이 없는 시기를 파악했나요?", "최소 4-5일 체류 계획을 세웠나요?"]),
                Milestone(title: "예산 계획 및 저축", description: "총 250-350만원 예산 확보", successCriteria: ["항공료 약 100-150만원 예상했나요?", "숙박비 1박 15-25만원 계산했나요?", "투어비 및 식비를 포함했나요?"]),
                Milestone(title: "항공권 예매", description: "경유편 또는 직항편 구매", successCriteria: ["스카이스캐너로 가격 비교했나요?", "경유지 시간이 적절한가요?", "수하물 규정을 확인했나요?"]),
                Milestone(title: "숙소 예약", description: "레이캬비크 또는 북부 지역 숙소", successCriteria: ["빛 공해가 적은 위치인가요?", "오로라 알림 서비스가 있는 숙소인가요?", "취소 정책을 확인했나요?"]),
                Milestone(title: "오로라 투어 예약", description: "전문 가이드 투어 또는 렌터카", successCriteria: ["투어 리뷰를 확인했나요?", "무료 재투어 정책이 있나요?", "방한 장비 대여 가능한가요?"]),
                Milestone(title: "방한 장비 준비", description: "극한 추위 대비 의류 및 장비", successCriteria: ["영하 20도용 패딩이 있나요?", "핫팩과 방수 장갑을 준비했나요?", "삼각대와 카메라 배터리 여분이 있나요?"])
            ]

        case "산토리니에서 일몰 감상하기":
            return [
                Milestone(title: "최적 시즌 선택", description: "5-6월 또는 9-10월 방문 계획", successCriteria: ["성수기(7-8월) 피크 시즌을 피했나요?", "일몰 시간을 확인했나요?", "날씨 예보를 체크했나요?"]),
                Milestone(title: "이아 마을 숙소 예약", description: "일몰 명소인 이아 마을 근처 숙소", successCriteria: ["칼데라 뷰 숙소를 예약했나요?", "일몰 포인트까지 도보 거리인가요?", "테라스가 있는 숙소인가요?"]),
                Milestone(title: "항공편 및 페리 예약", description: "아테네 경유 또는 직항 + 페리", successCriteria: ["아테네에서 산토리니행 비행기 예매했나요?", "또는 페리 시간표를 확인했나요?", "공항/항구에서 숙소까지 이동 수단은?"]),
                Milestone(title: "일몰 명소 리서치", description: "이아 성, 산토 와인 등 명소 파악", successCriteria: ["이아 성의 일몰 스팟을 알고 있나요?", "덜 붐비는 대안 장소를 알아봤나요?", "일몰 2시간 전 도착 계획인가요?"]),
                Milestone(title: "그리스 요리 체험 계획", description: "현지 맛집 및 와이너리 예약", successCriteria: ["산토리니 와이너리 투어를 예약했나요?", "해산물 레스토랑을 리서치했나요?", "아마우디 베이 식당을 체크했나요?"])
            ]

        case "뉴질랜드 남섬 일주하기":
            return [
                Milestone(title: "남섬 루트 계획", description: "크라이스트처치-퀸즈타운 루트 설계", successCriteria: ["최소 10-14일 일정을 확보했나요?", "주요 경유지를 정했나요?", "일일 이동 거리가 적절한가요?"]),
                Milestone(title: "렌터카 예약", description: "4WD 또는 캠퍼밴 예약", successCriteria: ["국제운전면허증을 발급받았나요?", "보험 조건을 확인했나요?", "겨울철 체인 필요 여부를 확인했나요?"]),
                Milestone(title: "숙소 예약", description: "주요 거점별 숙소 확보", successCriteria: ["퀸즈타운, 테카포, 밀포드 근처 숙소를 예약했나요?", "DOC 캠핑장을 예약했나요?", "성수기 사전 예약을 완료했나요?"]),
                Milestone(title: "밀포드 사운드 크루즈", description: "피오르드 크루즈 투어 예약", successCriteria: ["크루즈 업체를 선택했나요?", "날씨에 따른 취소 정책을 확인했나요?", "카약 또는 헬기 옵션을 고려했나요?"]),
                Milestone(title: "액티비티 예약", description: "번지점프, 스카이다이빙 등", successCriteria: ["퀸즈타운 번지점프를 예약했나요?", "프란츠 조셉 빙하 하이킹을 예약했나요?", "테카포 별 관측 투어를 예약했나요?"]),
                Milestone(title: "장비 및 준비물", description: "등산화, 방수복, 카메라 등", successCriteria: ["트레킹화를 준비했나요?", "방수 재킷을 챙겼나요?", "여행자 보험에 액티비티가 포함되나요?"])
            ]

        case "스위스 융프라우 등반하기":
            return [
                Milestone(title: "융프라우 지역 리서치", description: "인터라켄, 그린델발트 지역 조사", successCriteria: ["융프라우요흐 vs 쉴트호른 차이를 아나요?", "최적 방문 시즌(6-9월)을 확인했나요?", "날씨 예보 확인 방법을 아나요?"]),
                Milestone(title: "스위스 패스 구매", description: "교통 패스 종류 비교 및 구매", successCriteria: ["스위스 트래블 패스를 알아봤나요?", "융프라우 VIP 패스를 비교했나요?", "할인 혜택을 확인했나요?"]),
                Milestone(title: "숙소 예약", description: "그린델발트 또는 인터라켄 숙소", successCriteria: ["산 전망 숙소를 예약했나요?", "기차역 접근성을 확인했나요?", "조식 포함 여부를 확인했나요?"]),
                Milestone(title: "등산 루트 선택", description: "아이거 트레일 또는 퍼스트 클리프워크", successCriteria: ["본인 체력에 맞는 코스를 선택했나요?", "소요 시간을 확인했나요?", "케이블카 운행 시간을 확인했나요?"]),
                Milestone(title: "고산 준비", description: "고산병 예방 및 장비", successCriteria: ["해발 3,454m 융프라우요흐 고산 적응을 준비했나요?", "선글라스와 선크림을 챙겼나요?", "따뜻한 옷을 준비했나요? (여름에도 추움)"])
            ]

        case "몰디브에서 수상 방갈로 숙박":
            return [
                Milestone(title: "리조트 선택", description: "예산과 위치에 맞는 리조트 선택", successCriteria: ["올인클루시브 vs 조식만 비교했나요?", "말레 공항에서의 이동 수단을 확인했나요?", "하우스 리프 유무를 확인했나요?"]),
                Milestone(title: "수상 빌라 예약", description: "오버워터 빌라 사전 예약", successCriteria: ["선셋 뷰 vs 선라이즈 뷰를 선택했나요?", "프라이빗 풀 옵션을 고려했나요?", "최소 3박 이상 예약했나요?"]),
                Milestone(title: "항공편 예약", description: "말레 국제공항행 항공권", successCriteria: ["경유편 시간을 확인했나요?", "리조트 체크인 시간에 맞추었나요?", "수상비행기 연결을 확인했나요?"]),
                Milestone(title: "스노클링/다이빙 준비", description: "장비 및 투어 예약", successCriteria: ["스노클링 장비를 준비했나요?", "다이빙 자격증이 있나요?", "만타레이 포인트 투어를 예약했나요?"]),
                Milestone(title: "여행 준비물", description: "수영복, 선크림, 방수 카메라", successCriteria: ["래쉬가드를 준비했나요?", "SPF50+ 산호초 안전 선크림이 있나요?", "방수 카메라나 케이스를 준비했나요?"])
            ]

        case "일본 벚꽃 시즌 교토 여행":
            return [
                Milestone(title: "벚꽃 개화 시기 확인", description: "3월 말~4월 초 개화 예측 추적", successCriteria: ["일본 기상청 개화 예보를 확인했나요?", "만개 시기를 예측했나요?", "교토 지역 개화일을 체크했나요?"]),
                Milestone(title: "숙소 조기 예약", description: "벚꽃 시즌 숙소 3-6개월 전 예약", successCriteria: ["기온 지역 료칸을 알아봤나요?", "취소 가능한 숙소를 예약했나요?", "교통 편리한 위치인가요?"]),
                Milestone(title: "JR 패스 구매", description: "일본 철도 패스 결정", successCriteria: ["JR 간사이 패스를 알아봤나요?", "교토 내 버스 패스를 확인했나요?", "패스 수령 방법을 확인했나요?"]),
                Milestone(title: "벚꽃 명소 리스트", description: "마루야마 공원, 철학의 길 등", successCriteria: ["야간 라이트업 장소를 알고 있나요?", "덜 붐비는 숨은 명소를 찾았나요?", "방문 순서를 계획했나요?"]),
                Milestone(title: "교토 맛집 예약", description: "가이세키, 말차 디저트 등", successCriteria: ["미슐랭 레스토랑을 예약했나요?", "말차 카페를 리스트업했나요?", "유명 맛집 대기 시간을 확인했나요?"])
            ]

        case "프랑스 파리 에펠탑 방문":
            return [
                Milestone(title: "파리 여행 계획", description: "3-5일 파리 일정 수립", successCriteria: ["주요 관광지 동선을 계획했나요?", "뮤지엄 패스 구매를 고려했나요?", "에펠탑 방문 요일을 정했나요?"]),
                Milestone(title: "에펠탑 입장권 예매", description: "온라인 사전 예약 필수", successCriteria: ["공식 사이트에서 예매했나요?", "정상 vs 2층 티켓을 선택했나요?", "엘리베이터 vs 계단을 결정했나요?"]),
                Milestone(title: "숙소 예약", description: "에펠탑 전망 또는 접근성 좋은 위치", successCriteria: ["7구 또는 16구 숙소를 알아봤나요?", "메트로역 접근성을 확인했나요?", "에펠탑 뷰 숙소를 고려했나요?"]),
                Milestone(title: "파리 명소 계획", description: "루브르, 오르세, 몽마르트르 등", successCriteria: ["루브르 박물관 예약을 했나요?", "세느강 크루즈를 알아봤나요?", "개선문 입장을 계획했나요?"]),
                Milestone(title: "야경 감상 계획", description: "에펠탑 반짝임 타이밍", successCriteria: ["매시 정각 반짝임 시간을 아나요?", "트로카데로 광장 위치를 아나요?", "야경 촬영 장비를 준비했나요?"])
            ]

        case "이탈리아 베네치아 곤돌라 타기":
            return [
                Milestone(title: "베네치아 여행 계획", description: "2-3일 베네치아 일정", successCriteria: ["아쿠아 알타(침수) 시즌을 피했나요?", "산마르코 광장 방문을 계획했나요?", "무라노/부라노 섬 방문을 고려했나요?"]),
                Milestone(title: "곤돌라 예약", description: "공식 곤돌라 탑승 계획", successCriteria: ["공식 가격(80유로/30분)을 확인했나요?", "석양 시간대를 예약했나요?", "세레나데 옵션을 고려했나요?"]),
                Milestone(title: "숙소 예약", description: "산마르코 또는 리알토 근처", successCriteria: ["수상 택시 접근성을 확인했나요?", "운하 전망 숙소를 알아봤나요?", "조식 포함 여부를 확인했나요?"]),
                Milestone(title: "바포레토 패스", description: "수상버스 이용권 구매", successCriteria: ["1-3일 패스 중 선택했나요?", "공항-시내 노선을 확인했나요?", "주요 정류장을 파악했나요?"]),
                Milestone(title: "이탈리아 맛집", description: "씨푸드 리스토, 젤라또 등", successCriteria: ["베네치아 특산 요리를 알고 있나요?", "관광지 바가지를 피하는 법을 아나요?", "현지인 추천 맛집을 찾았나요?"])
            ]

        case "체코 프라하 구시가지 산책":
            return [
                Milestone(title: "프라하 여행 계획", description: "2-4일 프라하 일정", successCriteria: ["구시가지, 말라스트라나 일정을 세웠나요?", "최적 방문 시즌을 확인했나요?", "크리스마스 마켓 시즌을 고려했나요?"]),
                Milestone(title: "주요 명소 리스트", description: "천문시계, 카를교, 프라하성", successCriteria: ["천문시계 작동 시간을 아나요?", "프라하성 입장권을 예매했나요?", "카를교 일출 시간을 확인했나요?"]),
                Milestone(title: "숙소 예약", description: "구시가지 도보 거리 숙소", successCriteria: ["구시가 광장 근처 숙소를 찾았나요?", "트램역 접근성을 확인했나요?", "조용한 골목 숙소를 고려했나요?"]),
                Milestone(title: "체코 맥주 투어", description: "필스너 우르켈, 현지 펍 투어", successCriteria: ["체코 맥주 종류를 알고 있나요?", "현지 맥주홀을 리서치했나요?", "맥주 박물관 방문을 계획했나요?"]),
                Milestone(title: "주변 도시 계획", description: "체스키 크룸로프 당일치기", successCriteria: ["버스/기차 시간표를 확인했나요?", "체스키 크룸로프 성을 알아봤나요?", "쿠트나호라 방문을 고려했나요?"])
            ]

        case "크로아티아 플리트비체 국립공원":
            return [
                Milestone(title: "방문 시즌 선택", description: "5-6월 또는 9-10월 추천", successCriteria: ["성수기 혼잡을 피했나요?", "폭포수량이 많은 시기를 확인했나요?", "날씨 예보를 체크했나요?"]),
                Milestone(title: "입장권 예매", description: "온라인 사전 예약 필수", successCriteria: ["공식 사이트에서 예매했나요?", "입장 시간대를 선택했나요?", "1일권 vs 2일권을 결정했나요?"]),
                Milestone(title: "코스 선택", description: "A-H 코스 중 선택", successCriteria: ["체력에 맞는 코스를 선택했나요?", "소요 시간을 확인했나요?", "보트/셔틀 포함 여부를 확인했나요?"]),
                Milestone(title: "숙소 예약", description: "공원 근처 또는 자그레브", successCriteria: ["공원 입구 근처 숙소를 찾았나요?", "자그레브에서 이동 계획을 세웠나요?", "렌터카 필요 여부를 결정했나요?"]),
                Milestone(title: "준비물 챙기기", description: "트레킹화, 우비, 카메라", successCriteria: ["미끄럼 방지 신발을 준비했나요?", "방수 재킷을 챙겼나요?", "삼각대를 준비했나요? (폭포 촬영용)"])
            ]

        case "노르웨이 피오르드 크루즈":
            return [
                Milestone(title: "피오르드 선택", description: "게이랑에르, 송네, 하당에르 비교", successCriteria: ["UNESCO 게이랑에르를 고려했나요?", "송네피오르드 규모를 확인했나요?", "방문 시즌을 결정했나요?"]),
                Milestone(title: "크루즈 예약", description: "후티루텐 또는 로컬 페리", successCriteria: ["크루즈 타입을 선택했나요?", "소요 시간을 확인했나요?", "식사 포함 여부를 확인했나요?"]),
                Milestone(title: "노르웨이 인 어 넛셸", description: "인기 패키지 투어 고려", successCriteria: ["베르겐-오슬로 루트를 확인했나요?", "플롬 산악열차를 포함했나요?", "패키지 가격을 비교했나요?"]),
                Milestone(title: "숙소 및 교통", description: "베르겐 또는 오슬로 기점", successCriteria: ["베르겐 브뤼겐 지구 숙소를 알아봤나요?", "국내선 항공을 고려했나요?", "렌터카 필요 여부를 결정했나요?"]),
                Milestone(title: "하이킹 계획", description: "트롤퉁가, 프레이케스톨렌", successCriteria: ["체력에 맞는 코스를 선택했나요?", "가이드 투어를 고려했나요?", "날씨에 따른 대안을 준비했나요?"])
            ]

        case "캐나다 밴프 국립공원 여행":
            return [
                Milestone(title: "밴프 여행 계획", description: "5-7일 로키산맥 일정", successCriteria: ["밴프, 재스퍼 일정을 세웠나요?", "최적 시즌(6-9월)을 확인했나요?", "콜롬비아 아이스필드를 포함했나요?"]),
                Milestone(title: "렌터카 예약", description: "캘거리 공항 픽업", successCriteria: ["4WD 차량을 예약했나요?", "보험 조건을 확인했나요?", "내비게이션을 준비했나요?"]),
                Milestone(title: "숙소 예약", description: "밴프 타운 또는 레이크 루이스", successCriteria: ["성수기 사전 예약을 했나요?", "샤토 레이크 루이스를 고려했나요?", "캠핑장을 알아봤나요?"]),
                Milestone(title: "하이킹 코스 선택", description: "모레인 레이크, 레이크 루이스", successCriteria: ["빅 비하이브 트레일을 알아봤나요?", "곰 스프레이를 준비했나요?", "트레일 컨디션을 확인했나요?"]),
                Milestone(title: "야생동물 관찰 준비", description: "엘크, 곰, 무스 관찰", successCriteria: ["야생동물 안전 수칙을 아나요?", "쌍안경을 준비했나요?", "이른 아침/저녁 관찰 계획인가요?"])
            ]

        case "페루 마추픽추 방문하기":
            return [
                Milestone(title: "마추픽추 리서치", description: "잉카 역사 및 방문 정보", successCriteria: ["건기(5-10월)에 방문 계획인가요?", "입장 인원 제한을 확인했나요?", "고산병 대비를 준비했나요?"]),
                Milestone(title: "입장권 예매", description: "공식 사이트 사전 예약 필수", successCriteria: ["마추픽추 입장권을 예매했나요?", "와이나픽추 등반 추가를 고려했나요?", "시간대를 선택했나요?"]),
                Milestone(title: "쿠스코 적응 일정", description: "고산 적응 2-3일", successCriteria: ["쿠스코에서 2일 이상 머물 계획인가요?", "코카차를 준비했나요?", "고산병 약을 처방받았나요?"]),
                Milestone(title: "이동 수단 결정", description: "잉카 트레일 vs 기차", successCriteria: ["잉카 트레일 4일 트레킹을 고려했나요?", "페루레일 예약을 했나요?", "아구아스 칼리엔테스 숙소를 예약했나요?"]),
                Milestone(title: "가이드 투어 예약", description: "공인 가이드 동행", successCriteria: ["영어/스페인어 가이드를 예약했나요?", "투어 포함 사항을 확인했나요?", "팁 문화를 파악했나요?"])
            ]

        case "미국 그랜드 캐년 보기":
            return [
                Milestone(title: "림 선택", description: "사우스 림 vs 노스 림 결정", successCriteria: ["사우스 림(접근 용이)을 선택했나요?", "노스 림은 5-10월만 개방됨을 아나요?", "웨스트 림 스카이워크를 고려했나요?"]),
                Milestone(title: "국립공원 패스", description: "아메리카 더 뷰티풀 패스", successCriteria: ["연간 패스 구매를 고려했나요?", "입장료를 확인했나요?", "다른 국립공원 방문을 계획했나요?"]),
                Milestone(title: "숙소 예약", description: "공원 내 롯지 또는 투사얀", successCriteria: ["브라이트 엔젤 롯지를 알아봤나요?", "6개월 전 예약을 시도했나요?", "캠핑장을 고려했나요?"]),
                Milestone(title: "하이킹 계획", description: "림 트레일 또는 내려가기", successCriteria: ["브라이트 엔젤 트레일을 알아봤나요?", "물과 간식을 충분히 준비할 계획인가요?", "일출/일몰 뷰포인트를 정했나요?"]),
                Milestone(title: "헬기 투어 고려", description: "공중에서 협곡 감상", successCriteria: ["헬기 투어 업체를 비교했나요?", "가격대를 확인했나요?", "사진 촬영 좌석을 요청할 계획인가요?"])
            ]

        case "브라질 이과수 폭포 보기":
            return [
                Milestone(title: "방문국 선택", description: "브라질 측 vs 아르헨티나 측", successCriteria: ["양쪽 모두 방문 계획인가요?", "브라질 비자가 필요한지 확인했나요?", "최소 2일 일정을 확보했나요?"]),
                Milestone(title: "숙소 예약", description: "포스 두 이과수 시내", successCriteria: ["공원 근처 숙소를 예약했나요?", "셔틀 서비스가 있는 호텔인가요?", "양국 방문에 편리한 위치인가요?"]),
                Milestone(title: "폭포 투어 예약", description: "보트 투어, 헬기 투어", successCriteria: ["마쿠코 사파리(보트)를 예약했나요?", "헬기 투어를 고려했나요?", "방수 가방을 준비했나요?"]),
                Milestone(title: "국경 이동 계획", description: "브라질-아르헨티나 왕복", successCriteria: ["여권을 항상 소지할 계획인가요?", "국경 이동 방법을 확인했나요?", "양국 입장료를 준비했나요?"]),
                Milestone(title: "준비물 챙기기", description: "방수 장비, 선크림", successCriteria: ["우비 또는 방수 재킷을 준비했나요?", "여분의 옷을 챙겼나요?", "방수 신발을 준비했나요?"])
            ]

        case "호주 대보초 스노클링":
            return [
                Milestone(title: "출발지 선택", description: "케언스 vs 포트더글라스", successCriteria: ["케언스가 더 다양한 투어를 제공함을 아나요?", "화이트선데이즈를 고려했나요?", "최적 시즌(6-10월)을 확인했나요?"]),
                Milestone(title: "스노클링 투어 예약", description: "당일 또는 1박 크루즈", successCriteria: ["외부 리프 투어를 예약했나요?", "스노클링 장비 포함인가요?", "라이브어보드를 고려했나요?"]),
                Milestone(title: "다이빙 자격증", description: "PADI 오픈워터 취득 고려", successCriteria: ["다이빙을 원하면 자격증이 필요해요", "케언스 현지 교육을 고려했나요?", "체험 다이빙 옵션을 알아봤나요?"]),
                Milestone(title: "해양 생물 학습", description: "산호, 물고기 종류 공부", successCriteria: ["니모(클라운피시)를 찾을 수 있나요?", "거북이 관찰 포인트를 아나요?", "해양 보호 수칙을 이해했나요?"]),
                Milestone(title: "준비물 챙기기", description: "래쉬가드, 수중카메라", successCriteria: ["SPF50+ 산호 안전 선크림을 준비했나요?", "고프로 또는 수중카메라가 있나요?", "멀미약을 챙겼나요?"])
            ]

        case "터키 카파도키아 열기구":
            return [
                Milestone(title: "열기구 시즌 확인", description: "4-10월이 최적", successCriteria: ["날씨로 인한 취소 가능성을 아나요?", "최소 2일 이상 체류 계획인가요?", "일출 비행을 원하나요?"]),
                Milestone(title: "열기구 업체 예약", description: "안전 기록 확인 필수", successCriteria: ["리뷰가 좋은 업체를 선택했나요?", "보험 포함 여부를 확인했나요?", "조종사 경력을 확인했나요?"]),
                Milestone(title: "숙소 예약", description: "괴레메 동굴 호텔", successCriteria: ["동굴 호텔 체험을 계획했나요?", "테라스에서 열기구 뷰가 가능한가요?", "열기구 픽업 서비스가 있나요?"]),
                Milestone(title: "카파도키아 투어", description: "그린투어, 레드투어", successCriteria: ["지하도시 방문을 계획했나요?", "로즈밸리 하이킹을 고려했나요?", "ATV 투어를 알아봤나요?"]),
                Milestone(title: "이스탄불 연계", description: "국내선 또는 야간버스", successCriteria: ["카이세리 공항 이용을 계획했나요?", "이스탄불-카파도키아 이동을 예약했나요?", "네브셰히르 공항 옵션을 확인했나요?"])
            ]

        case "캄보디아 앙코르와트 일출":
            return [
                Milestone(title: "앙코르 패스 구매", description: "1일/3일/7일권 선택", successCriteria: ["최소 3일권을 추천 - 주요 사원이 많아요", "온라인 구매 가능 여부를 확인했나요?", "사진 촬영용 여권 사진이 있나요?"]),
                Milestone(title: "일출 포인트 선택", description: "연꽃 연못 vs 왼쪽 타워", successCriteria: ["일출 30분 전 도착 계획인가요?", "건기(11-4월)에 방문하나요?", "삼각대를 준비했나요?"]),
                Milestone(title: "시엠립 숙소", description: "올드마켓 근처 추천", successCriteria: ["툭툭 기사 연결 숙소인가요?", "펍스트리트 접근성을 확인했나요?", "풀빌라를 고려했나요?"]),
                Milestone(title: "앙코르 투어 계획", description: "스몰서킷, 빅서킷", successCriteria: ["앙코르톰, 타프롬을 포함했나요?", "반테이스레이를 계획했나요?", "프놈쿨렌을 고려했나요?"]),
                Milestone(title: "가이드 및 교통", description: "프라이빗 가이드 추천", successCriteria: ["한국어 가이드를 찾아봤나요?", "툭툭 vs 에어컨 차량을 선택했나요?", "일일 비용을 확인했나요?"])
            ]

        // MARK: - 경험 카테고리
        case "스카이다이빙 체험하기":
            return [
                Milestone(title: "스카이다이빙 종류 결정", description: "탠덤 vs 솔로 자격증", successCriteria: ["첫 경험이면 탠덤을 추천해요", "AFF 코스 자격증을 고려하나요?", "최소 고도를 확인했나요? (4,000m 추천)"]),
                Milestone(title: "드롭존 선택", description: "국내 vs 해외 명소", successCriteria: ["국내(양평, 서산)를 알아봤나요?", "해외(두바이, 호주, 뉴질랜드)를 고려했나요?", "리뷰와 안전 기록을 확인했나요?"]),
                Milestone(title: "예약 및 비용", description: "탠덤 기준 20-40만원", successCriteria: ["영상 촬영 옵션을 추가했나요?", "취소 정책을 확인했나요?", "날씨로 인한 연기 가능성을 알고 있나요?"]),
                Milestone(title: "당일 준비", description: "복장 및 컨디션 관리", successCriteria: ["전날 음주를 피할 계획인가요?", "편한 운동화를 준비했나요?", "식사는 가볍게 할 계획인가요?"]),
                Milestone(title: "두려움 극복", description: "멘탈 준비", successCriteria: ["영상을 보며 마음의 준비를 했나요?", "호흡법을 연습했나요?", "즐기겠다는 마음가짐이 되었나요?"])
            ]

        case "번지점프 도전하기":
            return [
                Milestone(title: "장소 선택", description: "국내 vs 해외 번지", successCriteria: ["국내(가평, 통영)를 알아봤나요?", "뉴질랜드 퀸즈타운을 고려했나요?", "마카오 타워(233m)를 알고 있나요?"]),
                Milestone(title: "높이 선택", description: "50m부터 시작 권장", successCriteria: ["처음이면 50-80m를 추천해요", "점프 스타일(전방, 후방)을 결정했나요?", "물로 뛰어드는 타입을 고려했나요?"]),
                Milestone(title: "예약하기", description: "온라인 또는 현장 예약", successCriteria: ["예약 가능한 날짜를 확인했나요?", "대기 시간을 고려했나요?", "영상 촬영 옵션이 있나요?"]),
                Milestone(title: "건강 체크", description: "심장, 혈압 확인", successCriteria: ["심장 질환이 없나요?", "고혈압이 있으면 의사 상담을 했나요?", "임산부가 아닌지 확인했나요?"]),
                Milestone(title: "멘탈 준비", description: "두려움 극복하기", successCriteria: ["영상을 보며 시뮬레이션했나요?", "심호흡 연습을 했나요?", "3초 안에 뛰어내릴 결심이 섰나요?"])
            ]

        case "스쿠버다이빙 자격증 취득":
            return [
                Milestone(title: "다이빙 단체 선택", description: "PADI vs SSI vs NAUI", successCriteria: ["PADI가 가장 국제적으로 인정받아요", "온라인 이론 학습이 가능한가요?", "현지 교육 비용을 비교했나요?"]),
                Milestone(title: "오픈워터 교육 등록", description: "3-4일 소요", successCriteria: ["국내(강원도, 제주)를 고려했나요?", "해외(필리핀, 태국)가 더 저렴해요", "교육비에 장비 대여가 포함인가요?"]),
                Milestone(title: "이론 학습", description: "수압, 감압, 안전 수칙", successCriteria: ["PADI eLearning을 완료했나요?", "감압병에 대해 이해했나요?", "핸드시그널을 외웠나요?"]),
                Milestone(title: "수영장 실습", description: "제한수역 다이빙", successCriteria: ["마스크 물빼기를 할 수 있나요?", "레귤레이터 되찾기를 연습했나요?", "중성부력을 연습했나요?"]),
                Milestone(title: "해양 실습", description: "4회 오픈워터 다이빙", successCriteria: ["18m 깊이까지 다이빙했나요?", "버디 시스템을 이해했나요?", "로그북을 작성했나요?"])
            ]

        case "패러글라이딩 체험":
            return [
                Milestone(title: "체험 장소 선택", description: "국내 명소 리서치", successCriteria: ["양평, 단양, 문경을 알아봤나요?", "해외(인터라켄, 포카라)를 고려했나요?", "고도와 비행시간을 비교했나요?"]),
                Milestone(title: "업체 선택 및 예약", description: "안전 기록 확인", successCriteria: ["자격증 있는 조종사인지 확인했나요?", "보험 가입 여부를 확인했나요?", "후기를 충분히 읽었나요?"]),
                Milestone(title: "날씨 확인", description: "바람과 구름 조건", successCriteria: ["예약일 기상 예보를 확인했나요?", "바람이 너무 강하면 취소됨을 아나요?", "대체 날짜를 확보했나요?"]),
                Milestone(title: "복장 준비", description: "편한 운동복과 운동화", successCriteria: ["긴 바지를 입을 계획인가요?", "운동화를 준비했나요?", "선글라스를 챙겼나요?"]),
                Milestone(title: "비행 즐기기", description: "사진과 영상 촬영", successCriteria: ["고프로 또는 촬영 옵션을 추가했나요?", "조종사에게 포토 스팟을 요청했나요?", "착륙 자세를 배웠나요?"])
            ]

        case "서핑 배우기":
            return [
                Milestone(title: "서핑 스팟 선택", description: "국내 서핑 명소", successCriteria: ["양양 죽도해변을 알고 있나요?", "부산 송정해변을 고려했나요?", "제주 중문해변을 알아봤나요?"]),
                Milestone(title: "서핑 스쿨 등록", description: "초보자 그룹 레슨", successCriteria: ["그룹 vs 프라이빗 레슨을 선택했나요?", "보드와 슈트 대여가 포함인가요?", "레슨 시간(2시간 추천)을 확인했나요?"]),
                Milestone(title: "기초 이론 학습", description: "파도, 조류, 에티켓", successCriteria: ["서핑 에티켓을 알고 있나요?", "이안류 대처법을 배웠나요?", "파도 읽는 법을 이해했나요?"]),
                Milestone(title: "팝업 연습", description: "보드 위에 일어서기", successCriteria: ["집에서 팝업 연습을 했나요?", "자세가 안정적인가요?", "무릎 자세에서 일어설 수 있나요?"]),
                Milestone(title: "첫 파도 타기", description: "화이트워시에서 연습", successCriteria: ["거품 파도에서 연습했나요?", "5초 이상 보드 위에 섰나요?", "방향 전환을 시도했나요?"])
            ]

        case "요트 항해 체험":
            return [
                Milestone(title: "요트 체험 종류 선택", description: "세일링 vs 모터 요트", successCriteria: ["세일링 요트의 낭만을 원하나요?", "모터 요트의 편안함을 원하나요?", "체험 시간(반나절/종일)을 정했나요?"]),
                Milestone(title: "출항지 선택", description: "마리나 리서치", successCriteria: ["해운대, 여수, 통영을 알아봤나요?", "제주 요트 투어를 고려했나요?", "해외(푸켓, 두브로브니크)를 고려했나요?"]),
                Milestone(title: "요트 렌탈 예약", description: "스키퍼 포함 여부", successCriteria: ["선장 동승 옵션을 선택했나요?", "식음료 포함 여부를 확인했나요?", "일몰 크루즈를 고려했나요?"]),
                Milestone(title: "멀미 대비", description: "멀미약 준비", successCriteria: ["멀미약을 미리 복용할 계획인가요?", "생강 사탕을 준비했나요?", "가벼운 식사를 할 계획인가요?"]),
                Milestone(title: "항해 즐기기", description: "선상 활동 준비", successCriteria: ["수영복을 준비했나요?", "선크림과 선글라스를 챙겼나요?", "방수 가방을 준비했나요?"])
            ]

        case "미슐랭 3스타 레스토랑 방문":
            return [
                Milestone(title: "레스토랑 선택", description: "미슐랭 가이드 리서치", successCriteria: ["방문하고 싶은 도시를 정했나요?", "요리 스타일(프렌치, 일식 등)을 선택했나요?", "예산을 확인했나요? (인당 30-50만원)"]),
                Milestone(title: "예약하기", description: "최소 1-3개월 전 예약", successCriteria: ["공식 웹사이트에서 예약했나요?", "특별한 날(생일 등)을 알렸나요?", "식이 제한을 미리 알렸나요?"]),
                Milestone(title: "드레스 코드 확인", description: "스마트 캐주얼 이상", successCriteria: ["남성: 재킷 필요 여부를 확인했나요?", "여성: 드레스 코드를 확인했나요?", "편한 구두를 준비했나요?"]),
                Milestone(title: "메뉴 선택", description: "테이스팅 코스 추천", successCriteria: ["풀코스 vs 런치 코스를 선택했나요?", "와인 페어링을 추가했나요?", "알레르기를 미리 알렸나요?"]),
                Milestone(title: "다이닝 에티켓", description: "파인다이닝 매너", successCriteria: ["나이프와 포크 사용법을 아나요?", "냅킨 에티켓을 알고 있나요?", "팁 문화를 확인했나요?"])
            ]

        // MARK: - 성취 카테고리
        case "풀코스 마라톤 완주하기":
            return [
                Milestone(title: "기초 체력 만들기", description: "주 3회 이상 달리기 시작", successCriteria: ["현재 10km를 뛸 수 있나요?", "러닝화를 구입했나요?", "러닝 앱을 설치했나요?"]),
                Milestone(title: "하프 마라톤 완주", description: "21.0975km 도전", successCriteria: ["하프 마라톤 대회에 등록했나요?", "2시간 30분 내 완주할 수 있나요?", "페이스 조절을 연습했나요?"]),
                Milestone(title: "30km 장거리 훈련", description: "LSD(Long Slow Distance) 훈련", successCriteria: ["30km를 3시간 30분 내 뛸 수 있나요?", "보급(물, 젤) 전략을 세웠나요?", "벽(30km 지점)을 경험했나요?"]),
                Milestone(title: "풀코스 대회 등록", description: "서울, 춘천, 경주 등", successCriteria: ["목표 대회를 선정했나요?", "대회 3-4개월 전 등록했나요?", "목표 기록을 설정했나요?"]),
                Milestone(title: "테이퍼링", description: "대회 2주 전 훈련량 감소", successCriteria: ["운동량을 50% 줄였나요?", "탄수화물 로딩을 계획했나요?", "대회 준비물을 체크했나요?"]),
                Milestone(title: "완주 전략", description: "페이스와 보급 계획", successCriteria: ["목표 페이스(분/km)를 정했나요?", "에너지젤 섭취 타이밍을 정했나요?", "부정출발 방지를 위해 일찍 출발하나요?"])
            ]

        case "철인3종 경기 완주":
            return [
                Milestone(title: "수영 실력 향상", description: "자유형 1.5km 완영", successCriteria: ["400m를 쉬지 않고 수영할 수 있나요?", "오픈워터 수영 경험이 있나요?", "젖은 수트를 입고 수영해봤나요?"]),
                Milestone(title: "사이클 훈련", description: "40km 사이클 완주", successCriteria: ["로드바이크를 보유하고 있나요?", "클릿 페달 사용에 익숙한가요?", "시속 30km 이상 유지 가능한가요?"]),
                Milestone(title: "달리기 훈련", description: "10km 달리기 완주", successCriteria: ["사이클 후 바로 달릴 수 있나요?", "브릭 트레이닝을 해봤나요?", "50분 내 10km 가능한가요?"]),
                Milestone(title: "복합 훈련", description: "3종목 연속 훈련", successCriteria: ["전환(트랜지션) 연습을 했나요?", "수영→사이클 전환 시간은?", "사이클→런 전환 시간은?"]),
                Milestone(title: "대회 등록", description: "스프린트 또는 올림픽 코스", successCriteria: ["첫 대회는 스프린트 코스를 추천해요", "대회 규정을 숙지했나요?", "장비 점검을 완료했나요?"]),
                Milestone(title: "영양 전략", description: "경기 중 보급 계획", successCriteria: ["수분 보충 계획을 세웠나요?", "젤/바 섭취 타이밍을 정했나요?", "경기 전 식사 메뉴를 정했나요?"])
            ]

        case "책 100권 읽기":
            return [
                Milestone(title: "독서 습관 만들기", description: "매일 30분 독서", successCriteria: ["매일 같은 시간에 읽고 있나요?", "독서 공간을 정했나요?", "스마트폰을 멀리 두고 읽나요?"]),
                Milestone(title: "첫 10권 완독", description: "2개월 내 목표", successCriteria: ["읽고 싶은 책 리스트가 있나요?", "독서 기록 앱/노트를 사용하나요?", "10권 완독했나요?"]),
                Milestone(title: "장르 다양화", description: "소설, 비소설, 자기계발 등", successCriteria: ["다양한 장르를 시도하고 있나요?", "불편한 장르도 도전했나요?", "30권 완독했나요?"]),
                Milestone(title: "독서 모임 참여", description: "생각 나누기", successCriteria: ["독서 모임을 찾아봤나요?", "온라인 독서 커뮤니티에 가입했나요?", "50권 완독했나요?"]),
                Milestone(title: "독서 속도 향상", description: "월 3-4권 읽기", successCriteria: ["한 달에 3권 이상 읽고 있나요?", "출퇴근 시간을 활용하나요?", "75권 완독했나요?"]),
                Milestone(title: "100권 달성", description: "독서 마라톤 완주", successCriteria: ["100권 리스트를 작성했나요?", "가장 인상 깊은 책 10권을 꼽을 수 있나요?", "다음 목표를 세웠나요?"])
            ]

        case "유튜브 구독자 10만 달성":
            return [
                Milestone(title: "채널 컨셉 정하기", description: "니치 시장 선택", successCriteria: ["어떤 주제로 채널을 운영할지 정했나요?", "타겟 시청자층을 정의했나요?", "경쟁 채널을 분석했나요?"]),
                Milestone(title: "첫 영상 10개 업로드", description: "콘텐츠 제작 시작", successCriteria: ["편집 프로그램을 배웠나요?", "썸네일 제작 방법을 익혔나요?", "업로드 주기를 정했나요?"]),
                Milestone(title: "구독자 1,000명 달성", description: "수익 창출 조건 1", successCriteria: ["커뮤니티와 소통하고 있나요?", "SEO 최적화를 적용했나요?", "콜투액션을 활용하고 있나요?"]),
                Milestone(title: "시청 시간 4,000시간", description: "수익 창출 조건 2", successCriteria: ["평균 시청 지속시간을 확인하나요?", "10분 이상 영상을 제작하나요?", "시리즈 콘텐츠를 만들었나요?"]),
                Milestone(title: "구독자 10,000명 달성", description: "실버 버튼을 향해", successCriteria: ["바이럴 영상이 있었나요?", "협업을 시도했나요?", "숏폼(Shorts)을 활용하고 있나요?"]),
                Milestone(title: "10만 구독자 달성", description: "실버 버튼 획득", successCriteria: ["일관된 업로드를 유지하고 있나요?", "커뮤니티 탭을 활용하나요?", "수익 다각화를 계획했나요?"])
            ]

        case "창업해서 첫 매출 내기":
            return [
                Milestone(title: "사업 아이디어 검증", description: "시장 조사 및 고객 인터뷰", successCriteria: ["해결하고 싶은 문제를 정의했나요?", "잠재 고객 10명과 인터뷰했나요?", "경쟁사를 분석했나요?"]),
                Milestone(title: "MVP 제작", description: "최소 기능 제품 개발", successCriteria: ["핵심 기능만 포함한 제품을 만들었나요?", "프로토타입을 테스트했나요?", "피드백을 반영했나요?"]),
                Milestone(title: "사업자 등록", description: "법적 준비", successCriteria: ["사업자 유형을 결정했나요?", "사업자등록증을 발급받았나요?", "통장을 개설했나요?"]),
                Milestone(title: "마케팅 시작", description: "첫 고객 확보", successCriteria: ["SNS 채널을 개설했나요?", "첫 광고를 집행했나요?", "랜딩 페이지를 만들었나요?"]),
                Milestone(title: "첫 매출 달성", description: "유료 고객 확보", successCriteria: ["첫 결제를 받았나요?", "고객 피드백을 받았나요?", "재구매를 유도했나요?"])
            ]

        case "연봉 1억 달성하기":
            return [
                Milestone(title: "현재 위치 분석", description: "연봉, 역량, 시장가치 파악", successCriteria: ["현재 연봉 수준을 알고 있나요?", "업계 평균 연봉을 조사했나요?", "필요한 역량을 파악했나요?"]),
                Milestone(title: "역량 개발 계획", description: "고연봉 스킬 습득", successCriteria: ["수요가 높은 기술을 배우고 있나요?", "자격증/학위를 계획했나요?", "포트폴리오를 만들고 있나요?"]),
                Milestone(title: "네트워크 확장", description: "업계 인맥 구축", successCriteria: ["링크드인 프로필을 최적화했나요?", "업계 행사에 참여하나요?", "멘토를 찾았나요?"]),
                Milestone(title: "이직/승진 준비", description: "기회 모색", successCriteria: ["이력서를 업데이트했나요?", "헤드헌터와 연락했나요?", "면접 준비를 했나요?"]),
                Milestone(title: "연봉 협상", description: "목표 연봉 달성", successCriteria: ["협상 전략을 세웠나요?", "시장가치를 근거로 제시했나요?", "대안(BATNA)을 준비했나요?"])
            ]

        // MARK: - 학습 카테고리
        case "영어 유창하게 구사하기":
            return [
                Milestone(title: "기초 문법 마스터", description: "시제, 조동사, 전치사", successCriteria: ["12시제를 이해하고 있나요?", "관계대명사를 사용할 수 있나요?", "기초 문법책을 완독했나요?"]),
                Milestone(title: "어휘력 확장", description: "일상 필수 단어 3,000개", successCriteria: ["매일 새로운 단어를 외우고 있나요?", "플래시카드 앱을 활용하나요?", "문장 속에서 단어를 학습하나요?"]),
                Milestone(title: "리스닝 훈련", description: "영어 듣기 실력 향상", successCriteria: ["영어 팟캐스트를 듣고 있나요?", "자막 없이 드라마를 보나요?", "딕테이션 연습을 하나요?"]),
                Milestone(title: "스피킹 연습", description: "원어민과 대화", successCriteria: ["화상영어를 하고 있나요?", "영어 말하기 앱을 사용하나요?", "매일 영어로 혼잣말 하나요?"]),
                Milestone(title: "공인 시험 점수", description: "TOEIC/IELTS 목표 달성", successCriteria: ["목표 점수를 설정했나요?", "모의고사를 풀어봤나요?", "시험에 등록했나요?"])
            ]

        case "중국어 HSK 6급 취득":
            return [
                Milestone(title: "병음과 성조 마스터", description: "발음 기초 완성", successCriteria: ["4성조를 정확히 구분하나요?", "병음을 보고 발음할 수 있나요?", "받아쓰기가 가능한가요?"]),
                Milestone(title: "HSK 4급 통과", description: "중급 수준 달성", successCriteria: ["1,200개 필수 어휘를 외웠나요?", "기본 문장 구조를 이해하나요?", "HSK 4급 모의고사를 풀어봤나요?"]),
                Milestone(title: "HSK 5급 통과", description: "고급 수준 진입", successCriteria: ["2,500개 어휘를 외웠나요?", "중국어 뉴스를 읽을 수 있나요?", "HSK 5급 시험에 응시했나요?"]),
                Milestone(title: "원어민 회화 연습", description: "스피킹 실력 향상", successCriteria: ["중국어 원어민 친구가 있나요?", "중국어 드라마를 자막 없이 보나요?", "중국어로 일상 대화가 가능한가요?"]),
                Milestone(title: "HSK 6급 시험 응시", description: "최고급 자격 취득", successCriteria: ["5,000개 어휘를 마스터했나요?", "작문 연습을 충분히 했나요?", "시험 접수를 완료했나요?"])
            ]

        case "일본어 JLPT N1 취득":
            return [
                Milestone(title: "히라가나/가타카나 암기", description: "기초 문자 마스터", successCriteria: ["히라가나 46자를 외웠나요?", "가타카나 46자를 외웠나요?", "탁음, 반탁음을 구분하나요?"]),
                Milestone(title: "JLPT N3 통과", description: "중급 수준", successCriteria: ["한자 650자를 외웠나요?", "문법 패턴을 이해하나요?", "N3 모의고사를 풀어봤나요?"]),
                Milestone(title: "JLPT N2 통과", description: "준상급 수준", successCriteria: ["한자 1,000자를 외웠나요?", "뉴스를 읽고 이해할 수 있나요?", "N2 시험에 응시했나요?"]),
                Milestone(title: "독해/청해 강화", description: "N1 수준 준비", successCriteria: ["일본 소설을 읽고 있나요?", "NHK 뉴스를 청취하나요?", "과거 기출문제를 풀어봤나요?"]),
                Milestone(title: "JLPT N1 합격", description: "최상급 자격 취득", successCriteria: ["한자 2,000자를 마스터했나요?", "문법/어휘 문제집을 완료했나요?", "시험 접수를 완료했나요?"])
            ]

        case "코딩 마스터하기":
            return [
                Milestone(title: "프로그래밍 언어 선택", description: "Python/JavaScript 등", successCriteria: ["배우고 싶은 언어를 정했나요?", "학습 목적이 명확한가요?", "개발 환경을 설정했나요?"]),
                Milestone(title: "기초 문법 학습", description: "변수, 조건문, 반복문", successCriteria: ["변수와 자료형을 이해하나요?", "if/else 문을 작성할 수 있나요?", "for/while 루프를 사용할 수 있나요?"]),
                Milestone(title: "프로젝트 제작", description: "첫 프로그램 완성", successCriteria: ["간단한 프로젝트를 완료했나요?", "GitHub에 코드를 올렸나요?", "오류를 디버깅할 수 있나요?"]),
                Milestone(title: "자료구조/알고리즘", description: "코딩테스트 준비", successCriteria: ["배열, 리스트, 딕셔너리를 이해하나요?", "정렬, 탐색 알고리즘을 알고 있나요?", "코딩테스트 문제를 풀어봤나요?"]),
                Milestone(title: "실전 프로젝트", description: "포트폴리오 구축", successCriteria: ["실제 사용자가 있는 앱을 만들었나요?", "협업 경험이 있나요?", "포트폴리오를 완성했나요?"])
            ]

        case "바리스타 자격증 취득":
            return [
                Milestone(title: "커피 기초 지식", description: "원두, 로스팅, 추출", successCriteria: ["아라비카와 로부스타 차이를 아나요?", "로스팅 단계를 이해하나요?", "추출 변수를 알고 있나요?"]),
                Milestone(title: "에스프레소 추출", description: "머신 사용법 숙달", successCriteria: ["에스프레소 머신을 다룰 수 있나요?", "탬핑 압력을 일정하게 유지하나요?", "추출 시간을 조절할 수 있나요?"]),
                Milestone(title: "우유 스티밍", description: "라떼아트 기초", successCriteria: ["우유 거품을 잘 만들 수 있나요?", "마이크로폼을 만들 수 있나요?", "하트 모양 라떼아트를 할 수 있나요?"]),
                Milestone(title: "바리스타 교육 수료", description: "공인 교육 기관", successCriteria: ["바리스타 교육 기관에 등록했나요?", "실습 시간을 채웠나요?", "이론 시험을 준비했나요?"]),
                Milestone(title: "자격 시험 응시", description: "2급/1급 취득", successCriteria: ["필기 시험을 통과했나요?", "실기 시험을 연습했나요?", "자격증을 취득했나요?"])
            ]

        // MARK: - 건강 카테고리
        case "체중 10kg 감량":
            return [
                Milestone(title: "현재 상태 측정", description: "체중, 체지방률 기록", successCriteria: ["시작 체중을 기록했나요?", "체지방률을 측정했나요?", "목표 체중을 설정했나요?"]),
                Milestone(title: "식단 관리 시작", description: "칼로리 적자 만들기", successCriteria: ["하루 섭취 칼로리를 계산했나요?", "식단 기록 앱을 사용하나요?", "단백질 섭취량을 확인하나요?"]),
                Milestone(title: "운동 루틴 수립", description: "유산소 + 근력 운동", successCriteria: ["주 3회 이상 운동하나요?", "유산소 운동을 30분 이상 하나요?", "근력 운동을 병행하나요?"]),
                Milestone(title: "5kg 감량 달성", description: "중간 목표", successCriteria: ["5kg을 감량했나요?", "정체기를 경험했나요?", "식단/운동을 조정했나요?"]),
                Milestone(title: "10kg 감량 달성", description: "최종 목표", successCriteria: ["목표 체중에 도달했나요?", "체지방률이 감소했나요?", "유지 계획을 세웠나요?"])
            ]

        case "복근 만들기":
            return [
                Milestone(title: "체지방률 확인", description: "복근 visible 조건", successCriteria: ["현재 체지방률을 알고 있나요?", "남성 12% 이하, 여성 18% 이하가 목표예요", "체지방 측정 방법을 알고 있나요?"]),
                Milestone(title: "식단 관리", description: "단백질 위주 클린 식단", successCriteria: ["하루 단백질 체중×1.6g 섭취하나요?", "가공식품을 줄였나요?", "물을 충분히 마시나요?"]),
                Milestone(title: "코어 운동 시작", description: "플랭크, 크런치, 레그레이즈", successCriteria: ["플랭크 1분을 버틸 수 있나요?", "매일 복근 운동을 하나요?", "다양한 복근 운동을 알고 있나요?"]),
                Milestone(title: "전신 운동 병행", description: "기초대사량 높이기", successCriteria: ["스쿼트, 데드리프트를 하나요?", "주 3회 이상 웨이트 트레이닝을 하나요?", "유산소 운동을 병행하나요?"]),
                Milestone(title: "복근 visible", description: "식스팩 완성", successCriteria: ["복근이 보이기 시작했나요?", "체지방률 목표에 도달했나요?", "유지 루틴을 만들었나요?"])
            ]

        case "금연 1년 달성":
            return [
                Milestone(title: "금연 결심", description: "동기 부여 및 계획", successCriteria: ["금연 이유를 명확히 했나요?", "금연 시작일을 정했나요?", "주변에 알렸나요?"]),
                Milestone(title: "금연 보조제 준비", description: "니코틴 패치, 껌 등", successCriteria: ["금연 보조제를 구입했나요?", "금연 클리닉을 알아봤나요?", "대체 행동을 정했나요?"]),
                Milestone(title: "금연 1주일", description: "니코틴 금단 극복", successCriteria: ["첫 3일을 버텼나요?", "금단 증상을 관리하고 있나요?", "흡연 욕구를 견디는 방법을 알고 있나요?"]),
                Milestone(title: "금연 1개월", description: "습관 변화", successCriteria: ["한 달 동안 단 한 대도 피우지 않았나요?", "흡연 유발 상황을 피하고 있나요?", "스트레스 해소법을 찾았나요?"]),
                Milestone(title: "금연 1년 달성", description: "완전한 비흡연자", successCriteria: ["1년 동안 금연을 유지했나요?", "흡연 욕구가 거의 없어졌나요?", "건강 개선을 느끼나요?"])
            ]

        case "명상 100일 연속":
            return [
                Milestone(title: "명상 방법 선택", description: "호흡, 마음챙김, 가이드", successCriteria: ["명상 앱(Calm, 헤드스페이스)을 설치했나요?", "명상 시간(아침/저녁)을 정했나요?", "명상 장소를 정했나요?"]),
                Milestone(title: "10일 연속 달성", description: "습관 형성 시작", successCriteria: ["매일 같은 시간에 명상하나요?", "5분 이상 명상하나요?", "명상 기록을 하고 있나요?"]),
                Milestone(title: "30일 연속 달성", description: "습관 정착", successCriteria: ["30일 연속 명상했나요?", "명상 시간을 10분으로 늘렸나요?", "집중력 향상을 느끼나요?"]),
                Milestone(title: "60일 연속 달성", description: "깊은 명상 경험", successCriteria: ["명상 중 잡념이 줄었나요?", "스트레스 감소를 느끼나요?", "명상 시간을 15-20분으로 늘렸나요?"]),
                Milestone(title: "100일 연속 달성", description: "명상 마스터", successCriteria: ["100일을 완주했나요?", "명상이 일상의 일부가 되었나요?", "다양한 명상 기법을 시도했나요?"])
            ]

        // MARK: - 관계 카테고리
        case "부모님과 세계여행":
            return [
                Milestone(title: "부모님 건강 체크", description: "장거리 여행 가능 여부", successCriteria: ["부모님 건강 상태를 확인했나요?", "필요한 상비약을 체크했나요?", "여행자 보험을 알아봤나요?"]),
                Milestone(title: "여행지 선정", description: "부모님 취향 반영", successCriteria: ["부모님이 가고 싶은 곳을 물어봤나요?", "이동 거리와 편의를 고려했나요?", "계절을 고려했나요?"]),
                Milestone(title: "여행 경비 마련", description: "예산 계획 및 저축", successCriteria: ["총 비용을 계산했나요?", "매달 저축 금액을 정했나요?", "항공권 특가를 모니터링하나요?"]),
                Milestone(title: "일정 및 예약", description: "항공, 숙소, 투어", successCriteria: ["부모님 체력에 맞는 일정인가요?", "휴식 시간을 충분히 포함했나요?", "접근성 좋은 숙소를 예약했나요?"]),
                Milestone(title: "함께 여행 떠나기", description: "추억 만들기", successCriteria: ["여행 준비를 완료했나요?", "사진을 많이 찍을 계획인가요?", "부모님의 버킷리스트를 확인했나요?"])
            ]

        case "결혼식 올리기":
            return [
                Milestone(title: "프러포즈", description: "결혼 약속", successCriteria: ["상대방과 결혼 의사를 확인했나요?", "프러포즈 계획을 세웠나요?", "반지를 준비했나요?"]),
                Milestone(title: "양가 상견례", description: "가족 소개", successCriteria: ["상견례 날짜를 잡았나요?", "장소를 예약했나요?", "대화 주제를 준비했나요?"]),
                Milestone(title: "예식장 예약", description: "날짜와 장소 확정", successCriteria: ["원하는 날짜에 예약 가능한가요?", "예산에 맞는 장소인가요?", "계약금을 납부했나요?"]),
                Milestone(title: "웨딩 준비", description: "드레스, 스냅, 청첩장", successCriteria: ["웨딩드레스/턱시도를 정했나요?", "스냅 촬영을 예약했나요?", "청첩장을 발송했나요?"]),
                Milestone(title: "결혼식 당일", description: "인생의 가장 아름다운 날", successCriteria: ["리허설을 완료했나요?", "하객 명단을 최종 확인했나요?", "신혼여행 계획을 세웠나요?"])
            ]

        case "반려동물 입양하기":
            return [
                Milestone(title: "반려동물 종류 결정", description: "강아지, 고양이, 기타", successCriteria: ["생활 환경에 맞는 동물을 선택했나요?", "알레르기 여부를 확인했나요?", "가족 모두 동의했나요?"]),
                Milestone(title: "입양처 선택", description: "보호소 또는 브리더", successCriteria: ["유기동물 입양을 고려했나요?", "신뢰할 수 있는 입양처인가요?", "건강 상태를 확인했나요?"]),
                Milestone(title: "용품 준비", description: "케이지, 사료, 장난감", successCriteria: ["필수 용품 리스트를 작성했나요?", "사료 종류를 정했나요?", "동물병원을 알아봤나요?"]),
                Milestone(title: "집 환경 조성", description: "안전한 공간 만들기", successCriteria: ["위험한 물건을 치웠나요?", "전용 공간을 마련했나요?", "화장실/배변패드를 준비했나요?"]),
                Milestone(title: "입양 및 적응", description: "새 가족 맞이하기", successCriteria: ["입양 절차를 완료했나요?", "동물등록을 했나요?", "적응 기간을 계획했나요?"])
            ]

        case "평생 친구 10명 만들기":
            return [
                Milestone(title: "친구의 정의 생각하기", description: "어떤 친구를 원하는가", successCriteria: ["진정한 친구의 기준을 세웠나요?", "현재 친한 친구가 몇 명인가요?", "어떤 관계를 원하는지 생각했나요?"]),
                Milestone(title: "새로운 사람 만나기", description: "동호회, 모임 참여", successCriteria: ["관심사 기반 모임에 참여하나요?", "적극적으로 대화를 시도하나요?", "연락처를 교환했나요?"]),
                Milestone(title: "관계 유지하기", description: "정기적인 연락", successCriteria: ["친구들에게 먼저 연락하나요?", "생일/기념일을 챙기나요?", "힘들 때 연락할 친구가 있나요?"]),
                Milestone(title: "깊은 대화 나누기", description: "진솔한 관계 형성", successCriteria: ["속마음을 나눌 수 있나요?", "서로의 고민을 들어주나요?", "약점을 보여줄 수 있나요?"]),
                Milestone(title: "평생 친구 확인", description: "10명의 든든한 친구", successCriteria: ["오래 연락이 끊겨도 어색하지 않은 친구가 있나요?", "어려울 때 도움을 요청할 수 있나요?", "서로의 성장을 응원하나요?"])
            ]

        default:
            return getDefaultMilestones(for: category)
        }
    }

    private func getDefaultMilestones(for category: BucketCategory) -> [Milestone] {
        switch category {
        case .travel:
            return [
                Milestone(title: "여행 정보 조사", description: "목적지, 시즌, 예산 리서치", successCriteria: ["최적의 방문 시기를 알고 있나요?", "대략적인 예산을 계산했나요?", "주요 관광지를 파악했나요?"]),
                Milestone(title: "예산 마련", description: "여행 경비 저축", successCriteria: ["목표 금액을 설정했나요?", "매달 저축 금액을 정했나요?", "예산의 80% 이상 모았나요?"]),
                Milestone(title: "항공권/숙소 예약", description: "주요 예약 완료", successCriteria: ["항공권을 예매했나요?", "숙소를 예약했나요?", "여행자 보험에 가입했나요?"]),
                Milestone(title: "여행 준비물", description: "짐 꾸리기", successCriteria: ["체크리스트를 작성했나요?", "필수 준비물을 챙겼나요?", "여권/비자를 확인했나요?"])
            ]
        case .experience:
            return [
                Milestone(title: "체험 정보 조사", description: "업체, 비용, 준비물 파악", successCriteria: ["신뢰할 수 있는 업체를 찾았나요?", "비용을 확인했나요?", "필요한 조건을 파악했나요?"]),
                Milestone(title: "예약하기", description: "날짜와 시간 확정", successCriteria: ["예약을 완료했나요?", "취소 정책을 확인했나요?", "동행자를 확정했나요?"]),
                Milestone(title: "사전 준비", description: "필요한 것들 챙기기", successCriteria: ["복장을 준비했나요?", "건강 상태를 확인했나요?", "주의사항을 숙지했나요?"]),
                Milestone(title: "체험 완료", description: "버킷리스트 달성", successCriteria: ["체험을 완료했나요?", "사진/영상을 남겼나요?", "소감을 기록했나요?"])
            ]
        case .achievement:
            return [
                Milestone(title: "목표 구체화", description: "달성 기준 명확히", successCriteria: ["측정 가능한 목표인가요?", "기한을 설정했나요?", "현실적인 목표인가요?"]),
                Milestone(title: "계획 수립", description: "단계별 실행 계획", successCriteria: ["세부 계획을 세웠나요?", "필요한 자원을 파악했나요?", "장애물을 예상했나요?"]),
                Milestone(title: "꾸준한 실행", description: "매일/매주 실천", successCriteria: ["계획대로 실행하고 있나요?", "진행 상황을 기록하나요?", "중간 점검을 하나요?"]),
                Milestone(title: "목표 달성", description: "최종 목표 완수", successCriteria: ["목표를 달성했나요?", "성취감을 느끼나요?", "다음 목표를 세웠나요?"])
            ]
        case .learning:
            return [
                Milestone(title: "학습 계획 수립", description: "커리큘럼 및 일정", successCriteria: ["학습 자료를 선정했나요?", "일일 학습 시간을 정했나요?", "목표 수준을 설정했나요?"]),
                Milestone(title: "기초 학습", description: "기본기 다지기", successCriteria: ["기초 개념을 이해했나요?", "꾸준히 학습하고 있나요?", "복습을 하고 있나요?"]),
                Milestone(title: "심화 학습", description: "실력 향상", successCriteria: ["응용 문제를 풀 수 있나요?", "실전 경험을 쌓고 있나요?", "약점을 보완하고 있나요?"]),
                Milestone(title: "목표 달성", description: "자격증/실력 인증", successCriteria: ["목표 수준에 도달했나요?", "실력을 검증받았나요?", "지속적인 발전을 계획했나요?"])
            ]
        case .health:
            return [
                Milestone(title: "현재 상태 파악", description: "건강 지표 측정", successCriteria: ["현재 상태를 기록했나요?", "목표를 설정했나요?", "실현 가능한 목표인가요?"]),
                Milestone(title: "계획 수립", description: "운동/식단 계획", successCriteria: ["구체적인 계획을 세웠나요?", "전문가 조언을 받았나요?", "필요한 도구를 준비했나요?"]),
                Milestone(title: "습관 형성", description: "21일 연속 실천", successCriteria: ["매일 실천하고 있나요?", "기록을 남기고 있나요?", "변화를 느끼나요?"]),
                Milestone(title: "목표 달성", description: "건강 목표 완수", successCriteria: ["목표에 도달했나요?", "유지 계획을 세웠나요?", "건강해진 것을 느끼나요?"])
            ]
        case .relationship:
            return [
                Milestone(title: "관계 목표 정의", description: "원하는 관계 모습", successCriteria: ["어떤 관계를 원하는지 명확한가요?", "현재 관계 상태를 파악했나요?", "개선점을 알고 있나요?"]),
                Milestone(title: "시간 투자", description: "함께하는 시간 확보", successCriteria: ["정기적으로 시간을 내나요?", "질 높은 시간을 보내나요?", "대화를 충분히 하나요?"]),
                Milestone(title: "관계 개선 노력", description: "소통과 이해", successCriteria: ["상대방의 입장을 이해하려 하나요?", "감사를 표현하나요?", "갈등을 건강하게 해결하나요?"]),
                Milestone(title: "목표 관계 달성", description: "원하던 관계 형성", successCriteria: ["관계가 개선되었나요?", "서로 만족하나요?", "지속적인 노력을 계획했나요?"])
            ]
        }
    }

    func deleteMilestone(item: BucketListItem, milestone: Milestone) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let campIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones.remove(at: campIndex)
            saveData()
        }
    }

    func updateMilestone(item: BucketListItem, milestone: Milestone, newTitle: String, newDescription: String, newSuccessCriteria: [String]? = nil) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let campIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones[campIndex].title = newTitle
            bucketItems[itemIndex].milestones[campIndex].description = newDescription
            if let criteria = newSuccessCriteria {
                bucketItems[itemIndex].milestones[campIndex].successCriteria = criteria
            }
            saveData()
        }
    }

    func setMilestoneDeadline(item: BucketListItem, milestone: Milestone, deadline: Date?) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones[milestoneIndex].deadline = deadline
            saveData()
        }
    }

    func addObstacle(item: BucketListItem, type: ObstacleType, description: String, targetValue: Double, unit: String, relatedMilestoneId: UUID? = nil, customNote: String? = nil) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            let newObstacle = Obstacle(type: type, description: description, currentValue: 0, targetValue: targetValue, unit: unit, relatedMilestoneId: relatedMilestoneId, customNote: customNote)
            bucketItems[index].obstacles.append(newObstacle)
            saveData()
        }
    }

    func deleteObstacle(item: BucketListItem, obstacle: Obstacle) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let obstacleIndex = bucketItems[itemIndex].obstacles.firstIndex(where: { $0.id == obstacle.id }) {
            bucketItems[itemIndex].obstacles.remove(at: obstacleIndex)
            saveData()
        }
    }

    func updateBucketTitle(item: BucketListItem, newTitle: String) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].title = newTitle
            saveData()
        }
    }
    
    private func generateObstacles(for item: BucketListItem) {
        var obstacles: [Obstacle] = []
        // milestones는 generatePresetMilestones에서 생성
        var height: Double = 3.0

        // 카테고리와 제목 기반 지능형 장애물 생성
        let title = item.title.lowercased()

        // 여행 관련
        if item.category == .travel || title.contains("여행") || title.contains("가기") {
            if title.contains("아이슬란드") || title.contains("오로라") {
                obstacles = [
                    Obstacle(type: .money, description: "여행 경비", currentValue: 0, targetValue: 2500000, unit: "원"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 7, unit: "일"),
                    Obstacle(type: .timing, description: "적절한 시즌 예약", currentValue: 0, targetValue: 1, unit: "완료"),
                    Obstacle(type: .knowledge, description: "여행 계획 수립", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 2.5
            } else if title.contains("유럽") || title.contains("세계여행") {
                obstacles = [
                    Obstacle(type: .money, description: "여행 경비", currentValue: 0, targetValue: 5000000, unit: "원"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 14, unit: "일"),
                    Obstacle(type: .knowledge, description: "여행 계획", currentValue: 0, targetValue: 1, unit: "완료"),
                    Obstacle(type: .timing, description: "비자/예약", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 5.0
            } else {
                obstacles = [
                    Obstacle(type: .money, description: "여행 경비", currentValue: 0, targetValue: 1500000, unit: "원"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 5, unit: "일"),
                    Obstacle(type: .knowledge, description: "여행 계획", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 1.5
            }
        }
        // 성취 관련 (산악, 마라톤, 시험 등)
        else if item.category == .achievement || title.contains("성취") || title.contains("도전") {
            if title.contains("에베레스트") || title.contains("베이스캠프") || title.contains("트레킹") {
                obstacles = [
                    Obstacle(type: .money, description: "트레킹 비용", currentValue: 0, targetValue: 8000000, unit: "원"),
                    Obstacle(type: .skill, description: "체력 훈련", currentValue: 0, targetValue: 100, unit: "일"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 21, unit: "일"),
                    Obstacle(type: .knowledge, description: "고산병 대비", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 5.3
            } else if title.contains("마라톤") || title.contains("풀코스") {
                obstacles = [
                    Obstacle(type: .skill, description: "달리기 훈련", currentValue: 0, targetValue: 90, unit: "일"),
                    Obstacle(type: .money, description: "준비 비용", currentValue: 0, targetValue: 500000, unit: "원"),
                    Obstacle(type: .knowledge, description: "훈련 계획", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 4.2
            } else {
                obstacles = [
                    Obstacle(type: .time, description: "투자 시간", currentValue: 0, targetValue: 100, unit: "시간"),
                    Obstacle(type: .skill, description: "역량 개발", currentValue: 0, targetValue: 10, unit: "단계"),
                    Obstacle(type: .knowledge, description: "학습", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 3.8
            }
        }
        // 학습 관련
        else if item.category == .learning || title.contains("배우") || title.contains("공부") || title.contains("어") && (title.contains("유창") || title.contains("구사")) {
            if title.contains("영어") || title.contains("프랑스어") || title.contains("일본어") || title.contains("중국어") {
                let language = title.contains("프랑스어") ? "프랑스어" : title.contains("일본어") ? "일본어" : title.contains("중국어") ? "중국어" : "영어"
                obstacles = [
                    Obstacle(type: .time, description: "학습 시간", currentValue: 0, targetValue: 500, unit: "시간"),
                    Obstacle(type: .money, description: "학습 비용", currentValue: 0, targetValue: 2000000, unit: "원"),
                    Obstacle(type: .knowledge, description: "교재/강의 완료", currentValue: 0, targetValue: 10, unit: "권")
                ]
                height = 4.0
            } else if title.contains("자격증") || title.contains("시험") {
                obstacles = [
                    Obstacle(type: .time, description: "학습 시간", currentValue: 0, targetValue: 300, unit: "시간"),
                    Obstacle(type: .money, description: "학습 비용", currentValue: 0, targetValue: 1000000, unit: "원"),
                    Obstacle(type: .knowledge, description: "과목 이수", currentValue: 0, targetValue: 5, unit: "과목")
                ]
                height = 2.8
            } else {
                obstacles = [
                    Obstacle(type: .time, description: "학습 시간", currentValue: 0, targetValue: 200, unit: "시간"),
                    Obstacle(type: .money, description: "학습 비용", currentValue: 0, targetValue: 500000, unit: "원")
                ]
                height = 2.0
            }
        }
        // 건강 관련
        else if item.category == .health {
            if title.contains("다이어트") || title.contains("감량") || title.contains("kg") {
                obstacles = [
                    Obstacle(type: .time, description: "운동 일수", currentValue: 0, targetValue: 90, unit: "일"),
                    Obstacle(type: .skill, description: "식단 관리", currentValue: 0, targetValue: 90, unit: "일"),
                    Obstacle(type: .money, description: "헬스장 비용", currentValue: 0, targetValue: 500000, unit: "원")
                ]
                height = 3.0
            } else {
                obstacles = [
                    Obstacle(type: .time, description: "건강 관리", currentValue: 0, targetValue: 60, unit: "일"),
                    Obstacle(type: .skill, description: "습관 형성", currentValue: 0, targetValue: 21, unit: "일")
                ]
                height = 2.5
            }
        }
        // 경험 관련
        else if item.category == .experience {
            obstacles = [
                Obstacle(type: .money, description: "필요 비용", currentValue: 0, targetValue: 800000, unit: "원"),
                Obstacle(type: .time, description: "소요 시간", currentValue: 0, targetValue: 10, unit: "시간"),
                Obstacle(type: .knowledge, description: "사전 준비", currentValue: 0, targetValue: 1, unit: "완료")
            ]
            height = 1.8
        }
        // 관계 관련
        else if item.category == .relationship {
            obstacles = [
                Obstacle(type: .time, description: "함께하는 시간", currentValue: 0, targetValue: 50, unit: "시간"),
                Obstacle(type: .skill, description: "노력과 실천", currentValue: 0, targetValue: 30, unit: "일")
            ]
            height = 2.2
        }
        // 기본 템플릿
        else {
            obstacles = [
                Obstacle(type: .money, description: "필요 비용", currentValue: 0, targetValue: 1000000, unit: "원"),
                Obstacle(type: .time, description: "필요 시간", currentValue: 0, targetValue: 100, unit: "시간"),
                Obstacle(type: .knowledge, description: "학습 및 준비", currentValue: 0, targetValue: 1, unit: "완료")
            ]
            height = 3.0
        }

        // 업데이트
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].obstacles = obstacles
            // milestones는 generatePresetMilestones에서 따로 생성
            bucketItems[index].mountainHeight = height
            saveData()
        }
    }
    
    private func saveData() {
        if let encoded = try? JSONEncoder().encode(bucketItems) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }
    
    private func loadData() {
        if let savedData = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([BucketListItem].self, from: savedData) {
            bucketItems = decoded
        }
    }
    
}
