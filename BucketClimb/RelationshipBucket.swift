//
// CategoryBuckets.swift
// BucketClimb
//
// 카테고리별로 관리되는 버킷리스트 항목 enum
// Auto-generated
//

import Foundation

// MARK: - Category-Specific Bucket Enums

enum RelationshipBucket: String, Codable, CaseIterable {
    case 부모님과_세계여행하기 = "부모님과 세계여행하기"
    case 가족들과_유럽_여행하기 = "가족들과 유럽 여행하기"
    case 친구들과_제주도_한달_살기 = "친구들과 제주도 한달 살기"
    case 연인과_오로라_보기 = "연인과 오로라 보기"
    case 결혼식_올리기 = "결혼식 올리기"
    case 아이_낳고_키우기 = "아이 낳고 키우기"
    case 반려동물_입양하기 = "반려동물 입양하기"
    case 멘토_만나_인생_조언_듣기 = "멘토 만나 인생 조언 듣기"
    case 평생_친구_10명_만들기 = "평생 친구 10명 만들기"
    case 사랑하는_사람에게_프러포즈하기 = "사랑하는 사람에게 프러포즈하기"
    case 부모님_효도_여행하기 = "부모님 효도 여행하기"
    case 부모님께_집_사드리기 = "부모님께 집 사드리기"
    case 부모님_건강검진하기 = "부모님 건강검진하기"
    case 부모님_용돈_드리기 = "부모님 용돈 드리기"
    case 부모님과_맛집_투어하기 = "부모님과 맛집 투어하기"
    case 조부모님_모시고_여행하기 = "조부모님 모시고 여행하기"
    case 형제자매와_여행하기 = "형제자매와 여행하기"
    case 가족_사진_촬영하기 = "가족 사진 촬영하기"
    case 가족_영상_제작하기 = "가족 영상 제작하기"
    case 가족_앨범_만들기 = "가족 앨범 만들기"
    case 가족_단체_티셔츠하기 = "가족 단체 티셔츠하기"
    case 가족_모임_정례화하기 = "가족 모임 정례화하기"
    case 가족_그룹채팅하기 = "가족 그룹채팅하기"
    case 매주_부모님_전화하기 = "매주 부모님 전화하기"
    case 매일_가족_식사하기 = "매일 가족 식사하기"
    case 가족_캠핑하기 = "가족 캠핑하기"
    case 가족_등산하기 = "가족 등산하기"
    case 가족_자전거_여행하기 = "가족 자전거 여행하기"
    case 연인과_세계여행하기 = "연인과 세계여행하기"
    case 연인과_동거하기 = "연인과 동거하기"
    case 연인에게_깜짝_선물하기 = "연인에게 깜짝 선물하기"
    case 기념일_챙기기 = "기념일 챙기기"
    case 커플_사진_촬영하기 = "커플 사진 촬영하기"
    case 커플_링_만들기 = "커플 링 만들기"
    case 커플_여행_100일하기 = "커플 여행 100일하기"
    case 연애_1000일하기 = "연애 1000일하기"
    case 연애_5년하기 = "연애 5년하기"
    case 데이트_100회하기 = "데이트 100회하기"
    case 손편지_쓰기 = "손편지 쓰기"
    case 사랑_고백하기 = "사랑 고백하기"
    case 첫_데이트_장소_재방문하기 = "첫 데이트 장소 재방문하기"
    case 웨딩_촬영하기 = "웨딩 촬영하기"
    case 신혼여행하기 = "신혼여행하기"
    case 결혼_10주년하기 = "결혼 10주년하기"
    case 결혼_20주년하기 = "결혼 20주년하기"
    case 금혼식하기 = "금혼식하기"
    case 자녀_출산_오르기 = "자녀 출산 오르기"
    case 자녀_첫_돌하기 = "자녀 첫 돌하기"
    case 자녀_입학식하기 = "자녀 입학식하기"
    case 자녀_졸업식하기 = "자녀 졸업식하기"
    case 자녀_성인식하기 = "자녀 성인식하기"
    case 자녀와_여행하기 = "자녀와 여행하기"
    case 자녀에게_편지하기 = "자녀에게 편지하기"
    case 자녀_교육하기 = "자녀 교육하기"
    case 자녀_재능_발견하기 = "자녀 재능 발견하기"
    case 반려견_입양하기 = "반려견 입양하기"
    case 반려묘_입양하기 = "반려묘 입양하기"
    case 반려동물_훈련하기 = "반려동물 훈련하기"
    case 반려동물과_여행하기 = "반려동물과 여행하기"
    case 반려동물_사진_촬영하기 = "반려동물 사진 촬영하기"
    case 친구_10명_만들기 = "친구 10명 만들기"
    case 친구와_매주_만남하기 = "친구와 매주 만남하기"
    case 친구와_동반_여행하기 = "친구와 동반 여행하기"
    case 친구에게_깜짝_파티_열기 = "친구에게 깜짝 파티 열기"
    case 친구_생일_챙기기 = "친구 생일 챙기기"
    case 친구에게_선물하기 = "친구에게 선물하기"
    case 우정_10년하기 = "우정 10년하기"
    case 우정_20년하기 = "우정 20년하기"
    case 동창회_참석하기 = "동창회 참석하기"
    case 동호회_가입하기 = "동호회 가입하기"
    case 봉사_활동하기 = "봉사 활동하기"
    case 기부_활동하기 = "기부 활동하기"
    case 후원_아동하기 = "후원 아동하기"
    case 멘토링하기 = "멘토링하기"
    case 코칭_받기 = "코칭 받기"
    case 인생_멘토_찾기 = "인생 멘토 찾기"
    case 롤모델_만나기 = "롤모델 만나기"
    case 네트워킹하기 = "네트워킹하기"
    case 명함_100장_교환하기 = "명함 100장 교환하기"
    case 커피챗_100회하기 = "커피챗 100회하기"
    case 강연_들으러_가기 = "강연 들으러 가기"
    case 북클럽_참여하기 = "북클럽 참여하기"
    case 스터디_그룹하기 = "스터디 그룹하기"
    case 운동_메이트하기 = "운동 메이트하기"
    case 러닝_크루하기 = "러닝 크루하기"
    case 등산_모임_만들기 = "등산 모임 만들기"
    case 사진_동호회하기 = "사진 동호회하기"
    case 음악_동호회하기 = "음악 동호회하기"
    case 독서_모임_만들기 = "독서 모임 만들기"
    case 요리_모임_만들기 = "요리 모임 만들기"
    case 취미_공유하기 = "취미 공유하기"
    case SNS_친구_만들기 = "SNS 친구 만들기"
    case 펜팔_친구하기 = "펜팔 친구하기"
    case 외국인_친구하기 = "외국인 친구하기"
    case 이웃과_인사하기 = "이웃과 인사하기"
    case 동네_친구하기 = "동네 친구하기"
    case 직장_동료와_친해지기 = "직장 동료와 친해지기"

    var thumbnail: String {
        Self.metadata[self]!.0
    }

    var backgroundImage: String {
        Self.metadata[self]!.1
    }

    private static let metadata: [Self: (String, String)] = [
        .부모님과_세계여행하기: ("figure.2.and.child.holdinghands", "parents_world_trip"),
        .가족들과_유럽_여행하기: ("person.3.fill", "family_europe"),
        .친구들과_제주도_한달_살기: ("person.2.fill", "jeju_friends"),
        .연인과_오로라_보기: ("heart.circle.fill", "couple_aurora"),
        .결혼식_올리기: ("ring.circle.fill", "wedding"),
        .아이_낳고_키우기: ("figure.and.child.holdinghands", "raising_child"),
        .반려동물_입양하기: ("pawprint.fill", "adopt_pet"),
        .멘토_만나_인생_조언_듣기: ("person.crop.circle.fill.badge.checkmark", "meet_mentor"),
        .평생_친구_10명_만들기: ("person.3.sequence.fill", "10_lifelong_friends"),
        .사랑하는_사람에게_프러포즈하기: ("heart.text.square.fill", "propose"),
        .부모님_효도_여행하기: ("figure.2.and.child.holdinghands", "parents_trip"),
        .부모님께_집_사드리기: ("house.fill", "house_for_parents"),
        .부모님_건강검진하기: ("stethoscope", "parents_checkup"),
        .부모님_용돈_드리기: ("won.circle.fill", "parents_allowance"),
        .부모님과_맛집_투어하기: ("fork.knife.circle.fill", "parents_food_tour"),
        .조부모님_모시고_여행하기: ("figure.2.and.child.holdinghands", "grandparents_trip"),
        .형제자매와_여행하기: ("person.3.fill", "siblings_trip"),
        .가족_사진_촬영하기: ("camera.fill", "family_photo"),
        .가족_영상_제작하기: ("video.fill", "family_video"),
        .가족_앨범_만들기: ("book.closed.fill", "family_album"),
        .가족_단체_티셔츠하기: ("tshirt.fill", "family_tshirt"),
        .가족_모임_정례화하기: ("calendar", "family_gathering"),
        .가족_그룹채팅하기: ("message.fill", "family_chat"),
        .매주_부모님_전화하기: ("phone.fill", "call_parents_weekly"),
        .매일_가족_식사하기: ("fork.knife", "family_dinner_daily"),
        .가족_캠핑하기: ("tent.fill", "family_camping"),
        .가족_등산하기: ("mountain.2.fill", "family_hiking"),
        .가족_자전거_여행하기: ("bicycle", "family_biking"),
        .연인과_세계여행하기: ("heart.fill", "couple_world_trip"),
        .연인과_동거하기: ("house.fill", "live_together"),
        .연인에게_깜짝_선물하기: ("gift.fill", "surprise_gift"),
        .기념일_챙기기: ("calendar.circle.fill", "celebrate_anniversary"),
        .커플_사진_촬영하기: ("camera.fill", "couple_photo"),
        .커플_링_만들기: ("ring.circle.fill", "couple_ring"),
        .커플_여행_100일하기: ("calendar", "couple_trip_100days"),
        .연애_1000일하기: ("heart.circle.fill", "relationship_1000days"),
        .연애_5년하기: ("heart.fill", "relationship_5years"),
        .데이트_100회하기: ("heart.circle.fill", "date_100times"),
        .손편지_쓰기: ("envelope.fill", "love_letter"),
        .사랑_고백하기: ("heart.text.square.fill", "confess_love"),
        .첫_데이트_장소_재방문하기: ("location.fill", "revisit_first_date"),
        .웨딩_촬영하기: ("camera.fill", "wedding_photo"),
        .신혼여행하기: ("airplane", "honeymoon"),
        .결혼_10주년하기: ("ring.circle.fill", "10th_anniversary"),
        .결혼_20주년하기: ("ring.circle.fill", "20th_anniversary"),
        .금혼식하기: ("ring.circle.fill", "50th_anniversary"),
        .자녀_출산_오르기: ("figure.and.child.holdinghands", "child_birth"),
        .자녀_첫_돌하기: ("birthday.cake.fill", "child_first_birthday"),
        .자녀_입학식하기: ("graduationcap.fill", "child_school"),
        .자녀_졸업식하기: ("graduationcap.fill", "child_graduation"),
        .자녀_성인식하기: ("person.fill", "child_adult_ceremony"),
        .자녀와_여행하기: ("airplane", "trip_with_child"),
        .자녀에게_편지하기: ("envelope.fill", "letter_to_child"),
        .자녀_교육하기: ("book.fill", "educate_child"),
        .자녀_재능_발견하기: ("sparkles", "find_child_talent"),
        .반려견_입양하기: ("pawprint.fill", "adopt_dog"),
        .반려묘_입양하기: ("pawprint.fill", "adopt_cat"),
        .반려동물_훈련하기: ("pawprint.circle.fill", "pet_training"),
        .반려동물과_여행하기: ("car.fill", "trip_with_pet"),
        .반려동물_사진_촬영하기: ("camera.fill", "pet_photo"),
        .친구_10명_만들기: ("person.3.fill", "make_10_friends"),
        .친구와_매주_만남하기: ("calendar", "meet_friends_weekly"),
        .친구와_동반_여행하기: ("airplane", "trip_with_friends"),
        .친구에게_깜짝_파티_열기: ("party.popper.fill", "surprise_party"),
        .친구_생일_챙기기: ("birthday.cake.fill", "friend_birthday"),
        .친구에게_선물하기: ("gift.fill", "gift_to_friend"),
        .우정_10년하기: ("heart.fill", "friendship_10years"),
        .우정_20년하기: ("heart.fill", "friendship_20years"),
        .동창회_참석하기: ("person.3.fill", "alumni_reunion"),
        .동호회_가입하기: ("person.3.fill", "join_club"),
        .봉사_활동하기: ("heart.circle.fill", "volunteer"),
        .기부_활동하기: ("dollarsign.circle.fill", "donation"),
        .후원_아동하기: ("figure.and.child.holdinghands", "sponsor_child"),
        .멘토링하기: ("person.2.fill", "mentoring"),
        .코칭_받기: ("person.crop.circle.fill", "get_coaching"),
        .인생_멘토_찾기: ("person.crop.circle.fill.badge.checkmark", "find_mentor"),
        .롤모델_만나기: ("person.fill", "meet_role_model"),
        .네트워킹하기: ("person.3.fill", "networking"),
        .명함_100장_교환하기: ("person.crop.square.fill", "exchange_100_cards"),
        .커피챗_100회하기: ("cup.and.saucer.fill", "coffee_chat_100"),
        .강연_들으러_가기: ("mic.fill", "attend_lecture"),
        .북클럽_참여하기: ("book.fill", "book_club"),
        .스터디_그룹하기: ("person.3.fill", "study_group"),
        .운동_메이트하기: ("figure.run", "workout_buddy"),
        .러닝_크루하기: ("figure.run", "running_crew"),
        .등산_모임_만들기: ("mountain.2.fill", "hiking_group"),
        .사진_동호회하기: ("camera.fill", "photo_club"),
        .음악_동호회하기: ("music.note", "music_club"),
        .독서_모임_만들기: ("book.fill", "reading_group"),
        .요리_모임_만들기: ("fork.knife", "cooking_group"),
        .취미_공유하기: ("heart.fill", "share_hobby"),
        .SNS_친구_만들기: ("person.crop.circle.fill", "sns_friend"),
        .펜팔_친구하기: ("envelope.fill", "pen_pal"),
        .외국인_친구하기: ("globe.americas.fill", "foreign_friend"),
        .이웃과_인사하기: ("hand.wave.fill", "greet_neighbor"),
        .동네_친구하기: ("house.fill", "local_friend"),
        .직장_동료와_친해지기: ("person.2.fill", "befriend_colleague"),
    ]

    var hasCustomMilestones: Bool {
        !milestones.isEmpty
    }

    var milestones: [Milestone] {
        Self.milestonesData[self] ?? []
    }

    private static let milestonesData: [Self: [Milestone]] = [
        .결혼식_올리기: [
            Milestone(title: "연애/약혼", description: "결혼 결심 및 약혼", successCriteria: [
                "파트너와 결혼 의사를 확인했나요?",
                "양가 부모님께 인사를 드렸나요?",
                "약혼식을 했나요?"
            ]),
            Milestone(title: "결혼 준비", description: "예식 준비 시작", successCriteria: [
                "예식장을 예약했나요?",
                "스드메(스튜디오, 드레스, 메이크업)를 정했나요?",
                "청첩장을 준비했나요?"
            ]),
            Milestone(title: "신혼집 준비", description: "신혼생활 준비", successCriteria: [
                "신혼집을 구했나요?",
                "가전/가구를 준비했나요?",
                "혼수를 준비했나요?"
            ]),
            Milestone(title: "결혼식", description: "결혼식 완료", successCriteria: [
                "결혼식을 무사히 마쳤나요?",
                "신혼여행을 다녀왔나요?",
                "혼인신고를 했나요?"
            ])
        ],
        .사랑하는_사람에게_프러포즈하기: [
            Milestone(title: "마음 확인", description: "결혼 결심", successCriteria: [
                "결혼할 준비가 되었나요?",
                "상대방의 결혼 의사를 간접적으로 확인했나요?",
                "양가 부모님의 허락을 받았나요?"
            ]),
            Milestone(title: "프러포즈 준비", description: "반지와 장소 준비", successCriteria: [
                "반지를 준비했나요?",
                "프러포즈 장소를 정했나요?",
                "특별한 연출을 계획했나요?"
            ]),
            Milestone(title: "프러포즈 실행", description: "프러포즈 성공", successCriteria: [
                "프러포즈를 했나요?",
                "YES를 받았나요?",
                "기념사진을 찍었나요?"
            ])
        ],
        .부모님_효도_여행하기: [
            Milestone(title: "여행 계획", description: "부모님과 일정 조율", successCriteria: [
                "부모님이 가고 싶어하시는 곳을 물어봤나요?",
                "부모님 체력에 맞는 일정을 세웠나요?",
                "항공권/숙소를 예약했나요?"
            ]),
            Milestone(title: "경비 준비", description: "여행 경비 마련", successCriteria: [
                "여행 경비를 마련했나요?",
                "부모님 용돈을 따로 준비했나요?",
                "여행자 보험에 가입했나요?"
            ]),
            Milestone(title: "여행 실행", description: "효도 여행 완료", successCriteria: [
                "부모님과 함께 여행을 다녀왔나요?",
                "부모님이 만족하셨나요?",
                "여행 사진을 정리해 드렸나요?"
            ])
        ],
        .평생_친구_10명_만들기: [
            Milestone(title: "현재 관계 점검", description: "기존 친구 관계 파악", successCriteria: [
                "현재 가까운 친구가 몇 명인지 파악했나요?",
                "소원해진 친구에게 연락했나요?",
                "친구들과 정기적으로 연락하고 있나요?"
            ]),
            Milestone(title: "새로운 만남", description: "새 친구 사귀기", successCriteria: [
                "동호회나 모임에 가입했나요?",
                "새로운 사람들과 교류하고 있나요?",
                "관심사가 맞는 친구를 찾았나요?"
            ]),
            Milestone(title: "관계 깊이하기", description: "우정 발전시키기", successCriteria: [
                "친구들과 1:1로 만나고 있나요?",
                "어려운 일이 있을 때 서로 도움을 주고받나요?",
                "친구의 중요한 날을 챙기고 있나요?"
            ]),
            Milestone(title: "평생 친구", description: "10명의 평생 친구 확보", successCriteria: [
                "믿고 의지할 수 있는 친구가 10명 이상인가요?",
                "정기적으로 모이는 친구 모임이 있나요?",
                "서로의 인생을 함께할 친구들인가요?"
            ])
        ],
        .반려동물_입양하기: [
            Milestone(title: "입양 준비", description: "반려동물 공부", successCriteria: [
                "어떤 동물을 입양할지 정했나요?",
                "반려동물 양육 정보를 충분히 공부했나요?",
                "경제적 여유와 시간이 있나요?"
            ]),
            Milestone(title: "환경 준비", description: "반려동물 맞이 준비", successCriteria: [
                "사료, 용품 등을 준비했나요?",
                "수의사 병원을 알아봤나요?",
                "집 환경을 안전하게 만들었나요?"
            ]),
            Milestone(title: "입양 실행", description: "반려동물 가족 맞이", successCriteria: [
                "입양처(보호소/분양처)를 방문했나요?",
                "반려동물을 입양했나요?",
                "건강검진을 받았나요?"
            ]),
            Milestone(title: "적응 기간", description: "함께 적응하기", successCriteria: [
                "새 가족이 집에 적응했나요?",
                "기본 훈련을 시작했나요?",
                "행복하게 함께 생활하고 있나요?"
            ])
        ],
        .부모님과_세계여행하기: [
            Milestone(title: "여행 계획", description: "부모님과 상의", successCriteria: ["부모님이 가고 싶은 나라를 물어봤나요?", "건강 상태에 맞는 일정을 세웠나요?", "여행 예산을 계획했나요?"]),
            Milestone(title: "예약 완료", description: "항공/숙소 예약", successCriteria: ["항공권을 예약했나요?", "숙소를 예약했나요?", "여행자 보험에 가입했나요?"]),
            Milestone(title: "여행 실행", description: "함께 여행하기", successCriteria: ["부모님과 여행을 다녀왔나요?", "추억 사진을 찍었나요?", "부모님이 만족하셨나요?"])
        ],
        .가족들과_유럽_여행하기: [
            Milestone(title: "여행 계획", description: "가족과 일정 조율", successCriteria: ["가족 모두의 일정을 맞췄나요?", "방문할 나라를 정했나요?", "예산을 계획했나요?"]),
            Milestone(title: "준비 완료", description: "여행 준비", successCriteria: ["항공권을 예약했나요?", "숙소를 예약했나요?", "관광지 정보를 조사했나요?"]),
            Milestone(title: "여행 완료", description: "유럽 여행 실행", successCriteria: ["가족과 유럽 여행을 다녀왔나요?", "가족 사진을 찍었나요?", "행복한 추억을 만들었나요?"])
        ],
        .친구들과_제주도_한달_살기: [
            Milestone(title: "계획 수립", description: "친구들과 계획", successCriteria: ["함께할 친구들과 일정을 맞췄나요?", "한달 살 숙소를 알아봤나요?", "예산을 계획했나요?"]),
            Milestone(title: "숙소 확보", description: "숙소 예약", successCriteria: ["장기 숙소를 예약했나요?", "생활에 필요한 물품을 준비했나요?", "교통 수단을 계획했나요?"]),
            Milestone(title: "한달 살기 완료", description: "제주도 생활", successCriteria: ["한달 동안 제주도에서 생활했나요?", "친구들과 좋은 추억을 만들었나요?", "제주도 곳곳을 여행했나요?"])
        ],
        .연인과_오로라_보기: [
            Milestone(title: "여행 계획", description: "오로라 여행 준비", successCriteria: ["오로라 명소를 조사했나요?", "최적의 시기를 알아봤나요?", "연인과 일정을 맞췄나요?"]),
            Milestone(title: "예약 완료", description: "항공/숙소 예약", successCriteria: ["항공권을 예약했나요?", "오로라 투어를 예약했나요?", "방한 장비를 준비했나요?"]),
            Milestone(title: "오로라 관람", description: "오로라 감상", successCriteria: ["연인과 오로라를 봤나요?", "추억 사진을 찍었나요?", "평생 기억에 남을 경험을 했나요?"])
        ],
        .아이_낳고_키우기: [
            Milestone(title: "임신 준비", description: "부모 될 준비", successCriteria: ["건강검진을 받았나요?", "경제적 준비가 되었나요?", "육아에 대해 공부했나요?"]),
            Milestone(title: "임신/출산", description: "새 생명 맞이", successCriteria: ["임신에 성공했나요?", "산전 관리를 잘 받았나요?", "건강하게 출산했나요?"]),
            Milestone(title: "육아 시작", description: "아이 양육", successCriteria: ["아이가 건강하게 자라고 있나요?", "부모로서 성장하고 있나요?", "가족의 행복을 느끼고 있나요?"])
        ],
        .멘토_만나_인생_조언_듣기: [
            Milestone(title: "멘토 탐색", description: "롤모델 찾기", successCriteria: ["어떤 분야의 멘토가 필요한지 정했나요?", "존경하는 인물을 찾았나요?", "연락 방법을 알아봤나요?"]),
            Milestone(title: "멘토 접촉", description: "만남 요청", successCriteria: ["정중하게 만남을 요청했나요?", "만남 일정을 잡았나요?", "질문을 준비했나요?"]),
            Milestone(title: "조언 수용", description: "멘토링 실행", successCriteria: ["멘토를 만나 대화했나요?", "인생 조언을 들었나요?", "조언을 삶에 적용하고 있나요?"])
        ],
        .부모님께_집_사드리기: [
            Milestone(title: "자금 마련", description: "경제적 준비", successCriteria: ["목표 금액을 설정했나요?", "저축을 시작했나요?", "재테크 계획이 있나요?"]),
            Milestone(title: "주택 탐색", description: "부모님 의견 반영", successCriteria: ["부모님이 원하시는 지역을 알아봤나요?", "적합한 매물을 찾았나요?", "부모님과 함께 방문했나요?"]),
            Milestone(title: "집 구매", description: "주택 구매 완료", successCriteria: ["계약을 완료했나요?", "부모님께 집을 드렸나요?", "부모님이 행복해하시나요?"])
        ],
        .부모님_건강검진하기: [
            Milestone(title: "검진 예약", description: "건강검진 준비", successCriteria: ["병원을 알아봤나요?", "검진 항목을 선택했나요?", "예약을 완료했나요?"]),
            Milestone(title: "검진 동행", description: "부모님 모시고 방문", successCriteria: ["부모님을 모시고 병원에 갔나요?", "검진을 무사히 마쳤나요?", "결과 상담 일정을 잡았나요?"]),
            Milestone(title: "결과 확인", description: "건강관리 시작", successCriteria: ["검진 결과를 확인했나요?", "필요한 후속 조치를 했나요?", "정기 검진 계획을 세웠나요?"])
        ],
        .부모님_용돈_드리기: [
            Milestone(title: "재정 계획", description: "용돈 마련", successCriteria: ["매달 드릴 금액을 정했나요?", "안정적인 수입이 있나요?", "꾸준히 드릴 수 있나요?"]),
            Milestone(title: "정기 송금", description: "용돈 드리기 실행", successCriteria: ["매달 용돈을 드리고 있나요?", "부모님이 감사해하시나요?", "6개월 이상 지속했나요?"]),
            Milestone(title: "습관화", description: "효도 지속", successCriteria: ["1년 이상 꾸준히 드리고 있나요?", "부모님 생활에 도움이 되나요?", "자랑스러운 자녀가 되었나요?"])
        ],
        .부모님과_맛집_투어하기: [
            Milestone(title: "맛집 조사", description: "부모님 취향 파악", successCriteria: ["부모님이 좋아하시는 음식을 알고 있나요?", "맛집 리스트를 만들었나요?", "예약이 필요한 곳은 예약했나요?"]),
            Milestone(title: "투어 시작", description: "맛집 방문", successCriteria: ["첫 번째 맛집을 방문했나요?", "부모님이 만족하셨나요?", "사진을 찍었나요?"]),
            Milestone(title: "투어 완료", description: "맛집 투어 완성", successCriteria: ["목표한 맛집들을 모두 방문했나요?", "부모님과 특별한 추억을 만들었나요?", "정기적으로 계속하고 있나요?"])
        ],
        .조부모님_모시고_여행하기: [
            Milestone(title: "여행 계획", description: "조부모님 체력 고려", successCriteria: ["조부모님 건강 상태를 확인했나요?", "무리 없는 일정을 세웠나요?", "편안한 교통수단을 준비했나요?"]),
            Milestone(title: "여행 준비", description: "세심한 준비", successCriteria: ["조부모님 필요 물품을 챙겼나요?", "의약품을 준비했나요?", "휴식 시간을 충분히 배치했나요?"]),
            Milestone(title: "여행 완료", description: "효도 여행 실행", successCriteria: ["조부모님과 여행을 다녀왔나요?", "조부모님이 기뻐하셨나요?", "가족 사진을 찍었나요?"])
        ],
        .형제자매와_여행하기: [
            Milestone(title: "여행 계획", description: "일정 조율", successCriteria: ["형제자매와 일정을 맞췄나요?", "여행지를 정했나요?", "예산을 분담했나요?"]),
            Milestone(title: "여행 준비", description: "예약 완료", successCriteria: ["항공권/교통편을 예약했나요?", "숙소를 예약했나요?", "일정표를 만들었나요?"]),
            Milestone(title: "여행 완료", description: "형제자매 여행 실행", successCriteria: ["형제자매와 여행을 다녀왔나요?", "우애가 깊어졌나요?", "추억 사진을 찍었나요?"])
        ],
        .가족_사진_촬영하기: [
            Milestone(title: "촬영 계획", description: "스튜디오 선택", successCriteria: ["가족 사진 스튜디오를 알아봤나요?", "날짜를 정했나요?", "의상을 준비했나요?"]),
            Milestone(title: "촬영 실행", description: "사진 촬영", successCriteria: ["가족 모두 참여했나요?", "촬영을 무사히 마쳤나요?", "다양한 포즈로 찍었나요?"]),
            Milestone(title: "사진 완성", description: "결과물 수령", successCriteria: ["사진을 받았나요?", "액자에 넣거나 앨범을 만들었나요?", "가족 모두 만족하나요?"])
        ],
        .가족_영상_제작하기: [
            Milestone(title: "콘텐츠 기획", description: "영상 주제 정하기", successCriteria: ["어떤 영상을 만들지 정했나요?", "가족 영상/사진 자료를 모았나요?", "스토리라인을 구성했나요?"]),
            Milestone(title: "영상 제작", description: "편집 작업", successCriteria: ["영상 편집 프로그램을 사용하나요?", "음악과 자막을 넣었나요?", "편집을 완료했나요?"]),
            Milestone(title: "영상 완성", description: "가족과 공유", successCriteria: ["완성된 영상을 가족에게 보여줬나요?", "가족이 감동했나요?", "영상을 잘 보관했나요?"])
        ],
        .가족_앨범_만들기: [
            Milestone(title: "사진 수집", description: "가족 사진 모으기", successCriteria: ["오래된 사진을 찾았나요?", "최근 사진도 모았나요?", "디지털 스캔을 했나요?"]),
            Milestone(title: "앨범 구성", description: "앨범 레이아웃", successCriteria: ["시간순으로 정리했나요?", "앨범 디자인을 정했나요?", "설명이나 날짜를 추가했나요?"]),
            Milestone(title: "앨범 완성", description: "인쇄/제본", successCriteria: ["앨범을 인쇄했나요?", "가족에게 선물했나요?", "모두가 만족하나요?"])
        ],
        .가족_단체_티셔츠하기: [
            Milestone(title: "디자인 결정", description: "티셔츠 디자인", successCriteria: ["가족 슬로건이나 로고를 정했나요?", "색상을 정했나요?", "사이즈를 확인했나요?"]),
            Milestone(title: "제작 주문", description: "티셔츠 제작", successCriteria: ["제작 업체를 찾았나요?", "주문을 완료했나요?", "배송을 받았나요?"]),
            Milestone(title: "함께 착용", description: "단체복 활용", successCriteria: ["가족 모두 착용했나요?", "단체 사진을 찍었나요?", "특별한 날에 입고 있나요?"])
        ],
        .가족_모임_정례화하기: [
            Milestone(title: "일정 합의", description: "모임 주기 결정", successCriteria: ["가족과 모임 주기를 정했나요?", "모두 참여할 수 있는 시간을 찾았나요?", "캘린더에 등록했나요?"]),
            Milestone(title: "첫 모임", description: "정례 모임 시작", successCriteria: ["첫 번째 정례 모임을 가졌나요?", "다음 모임 일정을 정했나요?", "모두 즐거웠나요?"]),
            Milestone(title: "습관화", description: "모임 지속", successCriteria: ["6개월 이상 꾸준히 모이고 있나요?", "가족 유대가 강해졌나요?", "모임이 기다려지나요?"])
        ],
        .가족_그룹채팅하기: [
            Milestone(title: "그룹 생성", description: "채팅방 만들기", successCriteria: ["가족 단체 채팅방을 만들었나요?", "모든 가족이 참여했나요?", "채팅방 이름을 정했나요?"]),
            Milestone(title: "활성화", description: "소통 시작", successCriteria: ["매일 대화가 오가고 있나요?", "일상을 공유하고 있나요?", "사진이나 영상을 공유하나요?"]),
            Milestone(title: "유대 강화", description: "가족 소통 지속", successCriteria: ["1년 이상 활발히 운영 중인가요?", "중요한 일을 함께 나누나요?", "가족 간 소통이 좋아졌나요?"])
        ],
        .매주_부모님_전화하기: [
            Milestone(title: "습관 시작", description: "정기 통화 시작", successCriteria: ["전화할 요일/시간을 정했나요?", "첫 번째 정기 통화를 했나요?", "캘린더에 알림을 설정했나요?"]),
            Milestone(title: "4주 지속", description: "한 달 유지", successCriteria: ["4주 연속 전화했나요?", "부모님이 기뻐하시나요?", "통화가 자연스러워졌나요?"]),
            Milestone(title: "습관화", description: "장기 지속", successCriteria: ["3개월 이상 매주 전화하나요?", "부모님과 대화 주제가 다양해졌나요?", "효도하는 느낌이 드나요?"])
        ],
        .매일_가족_식사하기: [
            Milestone(title: "시간 확보", description: "식사 시간 조율", successCriteria: ["매일 함께할 수 있는 식사 시간을 정했나요?", "가족 모두 동의했나요?", "준비 담당을 정했나요?"]),
            Milestone(title: "1주일 실천", description: "일주일 식사", successCriteria: ["7일 연속 함께 식사했나요?", "대화가 늘었나요?", "식사 시간이 즐거운가요?"]),
            Milestone(title: "습관화", description: "일상으로 정착", successCriteria: ["한 달 이상 유지하고 있나요?", "가족 유대가 강해졌나요?", "가족 식사가 일상이 되었나요?"])
        ],
        .가족_캠핑하기: [
            Milestone(title: "캠핑 계획", description: "장소/일정 결정", successCriteria: ["캠핑장을 예약했나요?", "장비를 준비했나요?", "식재료를 준비했나요?"]),
            Milestone(title: "캠핑 실행", description: "가족 캠핑", successCriteria: ["캠핑장에 도착했나요?", "텐트를 설치했나요?", "함께 요리를 했나요?"]),
            Milestone(title: "추억 완성", description: "캠핑 마무리", successCriteria: ["모닥불 옆에서 대화를 나눴나요?", "가족 사진을 찍었나요?", "모두 즐거웠나요?"])
        ],
        .가족_등산하기: [
            Milestone(title: "산 선택", description: "등산 계획", successCriteria: ["가족 체력에 맞는 산을 정했나요?", "등산 일정을 정했나요?", "준비물을 챙겼나요?"]),
            Milestone(title: "등산 실행", description: "함께 오르기", successCriteria: ["가족과 함께 산을 올랐나요?", "서로 응원하며 올랐나요?", "정상에 도착했나요?"]),
            Milestone(title: "등산 완료", description: "추억 남기기", successCriteria: ["정상에서 인증샷을 찍었나요?", "무사히 하산했나요?", "맛있는 식사를 했나요?"])
        ],
        .가족_자전거_여행하기: [
            Milestone(title: "여행 계획", description: "코스 선정", successCriteria: ["자전거 여행 코스를 정했나요?", "자전거를 준비했나요?", "안전 장비를 준비했나요?"]),
            Milestone(title: "여행 실행", description: "자전거 라이딩", successCriteria: ["가족과 자전거 여행을 시작했나요?", "함께 달리며 대화했나요?", "중간에 휴식을 취했나요?"]),
            Milestone(title: "여행 완료", description: "코스 완주", successCriteria: ["목표 코스를 완주했나요?", "가족 사진을 찍었나요?", "모두 건강하게 마쳤나요?"])
        ],
        .연인과_세계여행하기: [
            Milestone(title: "여행 계획", description: "함께 계획하기", successCriteria: ["방문할 나라 리스트를 만들었나요?", "예산을 계획했나요?", "여행 기간을 정했나요?"]),
            Milestone(title: "첫 번째 여행", description: "해외여행 시작", successCriteria: ["첫 번째 나라를 방문했나요?", "커플 사진을 찍었나요?", "추억을 만들었나요?"]),
            Milestone(title: "여행 지속", description: "세계 여행 완성", successCriteria: ["여러 나라를 함께 방문했나요?", "여행 앨범을 만들었나요?", "평생 추억이 되었나요?"])
        ],
        .연인과_동거하기: [
            Milestone(title: "동거 결정", description: "합의와 준비", successCriteria: ["동거에 대해 진지하게 대화했나요?", "생활 규칙을 정했나요?", "양가 부모님께 말씀드렸나요?"]),
            Milestone(title: "집 구하기", description: "보금자리 마련", successCriteria: ["함께 살 집을 구했나요?", "생활용품을 준비했나요?", "짐을 옮겼나요?"]),
            Milestone(title: "동거 시작", description: "함께 생활하기", successCriteria: ["함께 생활을 시작했나요?", "서로 적응하고 있나요?", "행복하게 지내고 있나요?"])
        ],
        .연인에게_깜짝_선물하기: [
            Milestone(title: "선물 계획", description: "연인 취향 파악", successCriteria: ["연인이 원하는 것을 알고 있나요?", "예산을 정했나요?", "언제 줄지 계획했나요?"]),
            Milestone(title: "선물 준비", description: "선물 구매/제작", successCriteria: ["선물을 준비했나요?", "포장을 예쁘게 했나요?", "카드나 편지를 썼나요?"]),
            Milestone(title: "선물 전달", description: "깜짝 선물 성공", successCriteria: ["연인에게 깜짝 선물을 했나요?", "연인이 감동했나요?", "행복한 순간을 공유했나요?"])
        ],
        .기념일_챙기기: [
            Milestone(title: "기념일 정리", description: "중요한 날 파악", successCriteria: ["연인과의 기념일을 모두 알고 있나요?", "캘린더에 등록했나요?", "알림을 설정했나요?"]),
            Milestone(title: "기념일 준비", description: "특별한 계획", successCriteria: ["선물을 준비했나요?", "특별한 이벤트를 계획했나요?", "예약이 필요한 것은 예약했나요?"]),
            Milestone(title: "기념일 성공", description: "특별한 하루", successCriteria: ["기념일을 잘 챙겼나요?", "연인이 행복해했나요?", "좋은 추억을 만들었나요?"])
        ],
        .커플_사진_촬영하기: [
            Milestone(title: "촬영 계획", description: "스튜디오 선택", successCriteria: ["커플 사진 스튜디오를 알아봤나요?", "날짜를 정했나요?", "컨셉을 정했나요?"]),
            Milestone(title: "촬영 준비", description: "의상/소품 준비", successCriteria: ["커플 의상을 준비했나요?", "헤어/메이크업을 준비했나요?", "소품을 준비했나요?"]),
            Milestone(title: "촬영 완료", description: "사진 촬영", successCriteria: ["촬영을 완료했나요?", "마음에 드는 사진을 골랐나요?", "액자나 앨범을 만들었나요?"])
        ],
        .커플_링_만들기: [
            Milestone(title: "공방 선택", description: "반지 공방 찾기", successCriteria: ["커플링 공방을 알아봤나요?", "예약을 했나요?", "디자인을 정했나요?"]),
            Milestone(title: "반지 제작", description: "함께 만들기", successCriteria: ["공방에서 반지를 만들었나요?", "서로의 반지에 각인을 했나요?", "제작 과정을 즐겼나요?"]),
            Milestone(title: "반지 완성", description: "커플링 착용", successCriteria: ["완성된 반지를 받았나요?", "서로에게 끼워줬나요?", "매일 착용하고 있나요?"])
        ],
        .커플_여행_100일하기: [
            Milestone(title: "100일 계획", description: "기념 여행 준비", successCriteria: ["100일에 갈 여행지를 정했나요?", "예약을 완료했나요?", "특별한 이벤트를 계획했나요?"]),
            Milestone(title: "여행 실행", description: "100일 기념여행", successCriteria: ["연인과 여행을 다녀왔나요?", "100일 축하를 했나요?", "커플 사진을 찍었나요?"]),
            Milestone(title: "추억 저장", description: "기념 완료", successCriteria: ["여행 사진을 정리했나요?", "앨범을 만들었나요?", "소중한 추억이 되었나요?"])
        ],
        .연애_1000일하기: [
            Milestone(title: "500일 달성", description: "중간 기념", successCriteria: ["500일을 함께 보냈나요?", "기념일을 챙겼나요?", "사랑이 더 깊어졌나요?"]),
            Milestone(title: "1000일 준비", description: "특별한 준비", successCriteria: ["1000일 기념 계획을 세웠나요?", "특별한 선물을 준비했나요?", "이벤트를 계획했나요?"]),
            Milestone(title: "1000일 달성", description: "1000일 기념", successCriteria: ["1000일을 함께 축하했나요?", "앞으로도 함께할 다짐을 했나요?", "행복한 순간을 보냈나요?"])
        ],
        .연애_5년하기: [
            Milestone(title: "1년 기념", description: "첫 번째 해", successCriteria: ["1년을 함께 보냈나요?", "기념일을 축하했나요?", "관계가 안정되었나요?"]),
            Milestone(title: "3년 기념", description: "세 번째 해", successCriteria: ["3년을 함께 보냈나요?", "어려움을 함께 극복했나요?", "서로를 더 이해하게 되었나요?"]),
            Milestone(title: "5년 달성", description: "오래된 연인", successCriteria: ["5년을 함께 보냈나요?", "특별한 기념을 했나요?", "평생을 함께할 확신이 있나요?"])
        ],
        .데이트_100회하기: [
            Milestone(title: "데이트 기록", description: "횟수 세기 시작", successCriteria: ["데이트 기록을 시작했나요?", "다양한 데이트를 계획했나요?", "10회를 달성했나요?"]),
            Milestone(title: "50회 달성", description: "중간 목표", successCriteria: ["50번째 데이트를 했나요?", "특별한 장소에 갔나요?", "추억을 정리했나요?"]),
            Milestone(title: "100회 달성", description: "100회 데이트 완료", successCriteria: ["100번째 데이트를 했나요?", "기념 이벤트를 했나요?", "모든 데이트가 소중한 추억인가요?"])
        ],
        .손편지_쓰기: [
            Milestone(title: "편지 준비", description: "문구/편지지 선택", successCriteria: ["예쁜 편지지를 준비했나요?", "무엇을 쓸지 구상했나요?", "조용한 시간을 확보했나요?"]),
            Milestone(title: "편지 작성", description: "진심 담아 쓰기", successCriteria: ["감사한 마음을 담았나요?", "사랑한다는 말을 썼나요?", "정성껏 작성했나요?"]),
            Milestone(title: "편지 전달", description: "마음 전하기", successCriteria: ["편지를 직접 전달했나요?", "상대방이 감동했나요?", "행복한 순간을 함께 했나요?"])
        ],
        .사랑_고백하기: [
            Milestone(title: "마음 정리", description: "고백 결심", successCriteria: ["상대방을 진심으로 좋아하나요?", "고백할 용기가 있나요?", "거절 가능성도 준비했나요?"]),
            Milestone(title: "고백 준비", description: "장소/방법 계획", successCriteria: ["고백 장소를 정했나요?", "어떻게 말할지 준비했나요?", "선물이나 꽃을 준비했나요?"]),
            Milestone(title: "고백 실행", description: "사랑 고백", successCriteria: ["용기를 내어 고백했나요?", "진심을 전달했나요?", "결과에 관계없이 후회 없나요?"])
        ],
        .첫_데이트_장소_재방문하기: [
            Milestone(title: "장소 확인", description: "첫 데이트 장소 기억", successCriteria: ["첫 데이트 장소를 기억하나요?", "그곳이 아직 있는지 확인했나요?", "방문 날짜를 정했나요?"]),
            Milestone(title: "재방문 계획", description: "특별한 준비", successCriteria: ["연인에게 알렸나요 (또는 깜짝)?", "첫 데이트 때 사진을 찾았나요?", "특별한 이벤트를 계획했나요?"]),
            Milestone(title: "재방문 완료", description: "추억 되새기기", successCriteria: ["첫 데이트 장소를 다시 방문했나요?", "그때의 추억을 이야기했나요?", "새로운 사진을 찍었나요?"])
        ],
        .웨딩_촬영하기: [
            Milestone(title: "스튜디오 선택", description: "웨딩 촬영 준비", successCriteria: ["웨딩 스튜디오를 알아봤나요?", "촬영 패키지를 선택했나요?", "날짜를 예약했나요?"]),
            Milestone(title: "촬영 준비", description: "드레스/헤어/메이크업", successCriteria: ["웨딩드레스/턱시도를 선택했나요?", "헤어/메이크업을 결정했나요?", "촬영 컨셉을 정했나요?"]),
            Milestone(title: "촬영 완료", description: "웨딩 사진 완성", successCriteria: ["촬영을 완료했나요?", "마음에 드는 사진을 골랐나요?", "앨범과 액자를 받았나요?"])
        ],
        .신혼여행하기: [
            Milestone(title: "여행지 선택", description: "신혼여행 계획", successCriteria: ["신혼여행지를 정했나요?", "예산을 계획했나요?", "기간을 정했나요?"]),
            Milestone(title: "예약 완료", description: "항공/숙소 예약", successCriteria: ["항공권을 예약했나요?", "리조트/호텔을 예약했나요?", "여행 계획을 세웠나요?"]),
            Milestone(title: "신혼여행 완료", description: "달콤한 여행", successCriteria: ["신혼여행을 다녀왔나요?", "행복한 시간을 보냈나요?", "평생 추억을 만들었나요?"])
        ],
        .결혼_10주년하기: [
            Milestone(title: "10주년 계획", description: "특별한 기념 준비", successCriteria: ["10주년 기념 계획을 세웠나요?", "여행이나 이벤트를 계획했나요?", "선물을 준비했나요?"]),
            Milestone(title: "기념 실행", description: "10주년 축하", successCriteria: ["배우자와 특별한 시간을 보냈나요?", "10년간의 감사를 표현했나요?", "앞으로의 다짐을 나눴나요?"]),
            Milestone(title: "10주년 완료", description: "행복한 10년", successCriteria: ["10주년을 무사히 기념했나요?", "부부 사진을 찍었나요?", "더 행복한 미래를 약속했나요?"])
        ],
        .결혼_20주년하기: [
            Milestone(title: "20주년 계획", description: "특별한 기념 준비", successCriteria: ["20주년 기념 계획을 세웠나요?", "특별한 여행을 계획했나요?", "선물을 준비했나요?"]),
            Milestone(title: "기념 실행", description: "20주년 축하", successCriteria: ["배우자와 특별한 시간을 보냈나요?", "20년간의 여정을 돌아봤나요?", "자녀와 함께 축하했나요?"]),
            Milestone(title: "20주년 완료", description: "인생의 동반자", successCriteria: ["20주년을 무사히 기념했나요?", "부부 사진을 찍었나요?", "영원한 사랑을 확인했나요?"])
        ],
        .금혼식하기: [
            Milestone(title: "금혼식 계획", description: "50주년 준비", successCriteria: ["50주년 기념 계획을 세웠나요?", "가족/친지를 초대할 계획인가요?", "축하 파티를 계획했나요?"]),
            Milestone(title: "금혼식 실행", description: "50주년 축하", successCriteria: ["금혼식을 진행했나요?", "가족과 함께 축하했나요?", "50년간의 사랑을 축복받았나요?"]),
            Milestone(title: "금혼식 완료", description: "영원한 사랑", successCriteria: ["금혼식을 무사히 마쳤나요?", "기념사진을 찍었나요?", "평생의 동반자임을 확인했나요?"])
        ],
        .자녀_출산_오르기: [
            Milestone(title: "임신 확인", description: "새 생명의 시작", successCriteria: ["임신을 확인했나요?", "산부인과에 등록했나요?", "건강 관리를 시작했나요?"]),
            Milestone(title: "출산 준비", description: "아이 맞이 준비", successCriteria: ["출산 용품을 준비했나요?", "아이 이름을 정했나요?", "출산 계획을 세웠나요?"]),
            Milestone(title: "출산 완료", description: "건강한 출산", successCriteria: ["건강하게 출산했나요?", "아이가 건강한가요?", "새로운 가족을 환영했나요?"])
        ],
        .자녀_첫_돌하기: [
            Milestone(title: "돌잔치 계획", description: "첫 번째 생일 준비", successCriteria: ["돌잔치 장소를 예약했나요?", "초대할 사람을 정했나요?", "돌잡이 물품을 준비했나요?"]),
            Milestone(title: "돌잔치 준비", description: "세부 사항 확인", successCriteria: ["케이크를 주문했나요?", "한복을 준비했나요?", "사진/영상 촬영을 예약했나요?"]),
            Milestone(title: "돌잔치 완료", description: "첫 돌 축하", successCriteria: ["돌잔치를 무사히 마쳤나요?", "돌잡이를 했나요?", "행복한 첫 돌을 보냈나요?"])
        ],
        .자녀_입학식하기: [
            Milestone(title: "입학 준비", description: "학교 준비", successCriteria: ["입학할 학교를 정했나요?", "학용품을 준비했나요?", "교복/가방을 준비했나요?"]),
            Milestone(title: "입학식 참석", description: "새로운 시작", successCriteria: ["입학식에 참석했나요?", "자녀와 기념사진을 찍었나요?", "담임 선생님을 만났나요?"]),
            Milestone(title: "적응 지원", description: "학교생활 응원", successCriteria: ["자녀가 학교에 적응했나요?", "친구를 사귀었나요?", "즐겁게 다니고 있나요?"])
        ],
        .자녀_졸업식하기: [
            Milestone(title: "졸업 준비", description: "졸업 행사 준비", successCriteria: ["졸업식 날짜를 확인했나요?", "정장/드레스를 준비했나요?", "꽃다발이나 선물을 준비했나요?"]),
            Milestone(title: "졸업식 참석", description: "졸업 축하", successCriteria: ["졸업식에 참석했나요?", "자녀의 성장을 축하했나요?", "가족 사진을 찍었나요?"]),
            Milestone(title: "새 출발 응원", description: "다음 단계 지원", successCriteria: ["자녀의 다음 계획을 이야기했나요?", "응원의 말을 전했나요?", "자랑스러운 부모가 되었나요?"])
        ],
        .자녀_성인식하기: [
            Milestone(title: "성인식 계획", description: "성인 축하 준비", successCriteria: ["성인식 계획을 세웠나요?", "특별한 선물을 준비했나요?", "가족 모임을 계획했나요?"]),
            Milestone(title: "성인식 실행", description: "성인이 된 자녀 축하", successCriteria: ["성인식을 진행했나요?", "어른으로서의 조언을 전했나요?", "기념사진을 찍었나요?"]),
            Milestone(title: "성인 응원", description: "독립 지원", successCriteria: ["자녀의 성인 됨을 축하했나요?", "앞으로의 인생을 응원했나요?", "자랑스러운 마음을 전했나요?"])
        ],
        .자녀와_여행하기: [
            Milestone(title: "여행 계획", description: "자녀와 일정 조율", successCriteria: ["자녀가 가고 싶은 곳을 물었나요?", "여행 일정을 세웠나요?", "예약을 완료했나요?"]),
            Milestone(title: "여행 실행", description: "함께 떠나기", successCriteria: ["자녀와 여행을 떠났나요?", "함께 많은 대화를 나눴나요?", "즐거운 시간을 보냈나요?"]),
            Milestone(title: "여행 완료", description: "추억 만들기", successCriteria: ["여행을 무사히 마쳤나요?", "가족 사진을 찍었나요?", "소중한 추억이 되었나요?"])
        ],
        .자녀에게_편지하기: [
            Milestone(title: "편지 구상", description: "전할 말 정리", successCriteria: ["자녀에게 전할 말을 정리했나요?", "편지지를 준비했나요?", "조용한 시간을 확보했나요?"]),
            Milestone(title: "편지 작성", description: "진심 담아 쓰기", successCriteria: ["사랑과 응원의 메시지를 담았나요?", "부모로서의 마음을 표현했나요?", "정성껏 작성했나요?"]),
            Milestone(title: "편지 전달", description: "마음 전하기", successCriteria: ["자녀에게 편지를 전달했나요?", "자녀가 감동했나요?", "더 가까워졌나요?"])
        ],
        .자녀_교육하기: [
            Milestone(title: "교육 방향 설정", description: "교육 철학 수립", successCriteria: ["교육 목표를 정했나요?", "자녀와 대화를 나눴나요?", "필요한 지원을 파악했나요?"]),
            Milestone(title: "교육 실천", description: "꾸준한 관심과 지도", successCriteria: ["자녀의 학습을 지원하나요?", "정서적 교육도 하고 있나요?", "모범을 보이고 있나요?"]),
            Milestone(title: "성장 확인", description: "교육 성과", successCriteria: ["자녀가 잘 성장하고 있나요?", "올바른 가치관을 갖고 있나요?", "자녀와의 관계가 좋은가요?"])
        ],
        .자녀_재능_발견하기: [
            Milestone(title: "관찰", description: "자녀 관심사 파악", successCriteria: ["자녀가 좋아하는 것을 알고 있나요?", "다양한 경험을 제공했나요?", "잘하는 분야를 발견했나요?"]),
            Milestone(title: "지원", description: "재능 개발 지원", successCriteria: ["해당 분야 교육을 지원했나요?", "자녀가 즐겁게 하고 있나요?", "꾸준히 발전하고 있나요?"]),
            Milestone(title: "성장", description: "재능 꽃피우기", successCriteria: ["자녀의 재능이 빛나고 있나요?", "자녀가 자신감을 얻었나요?", "미래 가능성이 보이나요?"])
        ],
        .반려견_입양하기: [
            Milestone(title: "입양 결정", description: "반려견 준비", successCriteria: ["어떤 견종을 입양할지 정했나요?", "입양처를 알아봤나요?", "필요한 용품을 준비했나요?"]),
            Milestone(title: "입양 실행", description: "반려견 맞이", successCriteria: ["반려견을 입양했나요?", "건강검진을 받았나요?", "집에 데려왔나요?"]),
            Milestone(title: "적응 완료", description: "함께 생활", successCriteria: ["반려견이 집에 적응했나요?", "기본 훈련을 시작했나요?", "행복하게 함께 지내나요?"])
        ],
        .반려묘_입양하기: [
            Milestone(title: "입양 결정", description: "반려묘 준비", successCriteria: ["어떤 고양이를 입양할지 정했나요?", "입양처를 알아봤나요?", "필요한 용품을 준비했나요?"]),
            Milestone(title: "입양 실행", description: "반려묘 맞이", successCriteria: ["반려묘를 입양했나요?", "건강검진을 받았나요?", "집에 데려왔나요?"]),
            Milestone(title: "적응 완료", description: "함께 생활", successCriteria: ["반려묘가 집에 적응했나요?", "화장실 훈련이 되었나요?", "행복하게 함께 지내나요?"])
        ],
        .반려동물_훈련하기: [
            Milestone(title: "훈련 계획", description: "훈련 방법 학습", successCriteria: ["훈련 방법을 공부했나요?", "훈련 목표를 정했나요?", "필요한 간식/장난감을 준비했나요?"]),
            Milestone(title: "기초 훈련", description: "기본 명령어", successCriteria: ["앉아/기다려를 가르쳤나요?", "이리와/엎드려를 가르쳤나요?", "꾸준히 훈련하고 있나요?"]),
            Milestone(title: "훈련 완료", description: "훈련된 반려동물", successCriteria: ["기본 명령어에 반응하나요?", "문제 행동이 개선되었나요?", "훈련이 습관이 되었나요?"])
        ],
        .반려동물과_여행하기: [
            Milestone(title: "여행 계획", description: "반려동물 동반 준비", successCriteria: ["반려동물 동반 가능한 곳을 찾았나요?", "이동 수단을 준비했나요?", "필요한 물품을 챙겼나요?"]),
            Milestone(title: "여행 실행", description: "함께 여행하기", successCriteria: ["반려동물과 여행을 떠났나요?", "여행 중 안전하게 관리했나요?", "함께 즐거운 시간을 보냈나요?"]),
            Milestone(title: "여행 완료", description: "추억 만들기", successCriteria: ["여행을 무사히 마쳤나요?", "반려동물과 사진을 찍었나요?", "좋은 추억이 되었나요?"])
        ],
        .반려동물_사진_촬영하기: [
            Milestone(title: "촬영 계획", description: "사진 촬영 준비", successCriteria: ["펫 스튜디오를 알아봤나요?", "예약을 완료했나요?", "의상이나 소품을 준비했나요?"]),
            Milestone(title: "촬영 실행", description: "사진 촬영", successCriteria: ["반려동물과 촬영을 했나요?", "다양한 포즈로 찍었나요?", "촬영 중 반려동물이 편안했나요?"]),
            Milestone(title: "사진 완성", description: "결과물 수령", successCriteria: ["사진을 받았나요?", "마음에 드는 사진을 골랐나요?", "액자나 앨범을 만들었나요?"])
        ],
        .친구_10명_만들기: [
            Milestone(title: "새 친구 만나기", description: "사교 활동 시작", successCriteria: ["새로운 모임에 참여했나요?", "새로운 사람들과 대화했나요?", "연락처를 교환했나요?"]),
            Milestone(title: "관계 발전", description: "친해지기", successCriteria: ["1:1로 만나봤나요?", "공통 관심사를 찾았나요?", "정기적으로 연락하나요?"]),
            Milestone(title: "10명 달성", description: "친구 10명 완성", successCriteria: ["믿을 수 있는 친구 10명이 있나요?", "서로 힘들 때 의지하나요?", "우정이 깊어졌나요?"])
        ],
        .친구와_매주_만남하기: [
            Milestone(title: "만남 계획", description: "정기 모임 설정", successCriteria: ["매주 만날 요일을 정했나요?", "친구와 합의했나요?", "캘린더에 등록했나요?"]),
            Milestone(title: "만남 시작", description: "정기 모임 시작", successCriteria: ["첫 번째 정기 만남을 가졌나요?", "2주 이상 연속으로 만났나요?", "대화가 더 깊어졌나요?"]),
            Milestone(title: "습관화", description: "우정 지속", successCriteria: ["3개월 이상 매주 만나고 있나요?", "만남이 기다려지나요?", "우정이 더 깊어졌나요?"])
        ],
        .친구와_동반_여행하기: [
            Milestone(title: "여행 계획", description: "친구와 계획", successCriteria: ["함께 갈 친구를 정했나요?", "여행지를 정했나요?", "일정을 조율했나요?"]),
            Milestone(title: "여행 준비", description: "예약 완료", successCriteria: ["항공/숙소를 예약했나요?", "예산을 분담했나요?", "일정표를 만들었나요?"]),
            Milestone(title: "여행 완료", description: "친구와 여행 실행", successCriteria: ["친구와 여행을 다녀왔나요?", "좋은 추억을 만들었나요?", "우정이 더 깊어졌나요?"])
        ],
        .친구에게_깜짝_파티_열기: [
            Milestone(title: "파티 계획", description: "깜짝 파티 준비", successCriteria: ["파티 날짜를 정했나요?", "참석자들과 비밀리에 연락했나요?", "장소를 섭외했나요?"]),
            Milestone(title: "파티 준비", description: "세부 준비", successCriteria: ["케이크와 음식을 준비했나요?", "선물을 준비했나요?", "장식을 했나요?"]),
            Milestone(title: "파티 실행", description: "깜짝 파티 성공", successCriteria: ["친구가 깜짝 놀랐나요?", "친구가 기뻐했나요?", "즐거운 파티가 되었나요?"])
        ],
        .친구_생일_챙기기: [
            Milestone(title: "생일 기억", description: "친구 생일 파악", successCriteria: ["친구들의 생일을 알고 있나요?", "캘린더에 등록했나요?", "알림을 설정했나요?"]),
            Milestone(title: "생일 준비", description: "축하 준비", successCriteria: ["선물을 준비했나요?", "축하 메시지를 준비했나요?", "만날 계획을 세웠나요?"]),
            Milestone(title: "생일 축하", description: "친구 생일 챙기기 완료", successCriteria: ["친구 생일을 축하했나요?", "친구가 기뻐했나요?", "꾸준히 생일을 챙기고 있나요?"])
        ],
        .친구에게_선물하기: [
            Milestone(title: "선물 선택", description: "친구 취향 파악", successCriteria: ["친구가 좋아하는 것을 알고 있나요?", "예산을 정했나요?", "선물을 고르거나 만들었나요?"]),
            Milestone(title: "선물 포장", description: "정성 담기", successCriteria: ["예쁘게 포장했나요?", "카드나 메시지를 썼나요?", "전달 방법을 정했나요?"]),
            Milestone(title: "선물 전달", description: "친구에게 전달", successCriteria: ["선물을 전달했나요?", "친구가 기뻐했나요?", "우정이 더 깊어졌나요?"])
        ],
        .우정_10년하기: [
            Milestone(title: "5년 우정", description: "중간 지점", successCriteria: ["5년 이상 알고 지내는 친구가 있나요?", "정기적으로 연락하나요?", "서로의 인생을 알고 있나요?"]),
            Milestone(title: "10년 우정", description: "오랜 우정", successCriteria: ["10년 이상 친구와 연락하고 있나요?", "어려울 때 서로 의지하나요?", "평생 친구라고 느끼나요?"]),
            Milestone(title: "우정 유지", description: "지속적 관계", successCriteria: ["앞으로도 우정을 이어갈 자신이 있나요?", "중요한 날에 함께하나요?", "친구에게 감사를 표현했나요?"])
        ],
        .우정_20년하기: [
            Milestone(title: "10년 우정", description: "첫 번째 10년", successCriteria: ["10년 이상 알고 지내는 친구가 있나요?", "함께한 추억이 많나요?", "서로를 깊이 이해하나요?"]),
            Milestone(title: "20년 우정", description: "인생의 동반자", successCriteria: ["20년 이상 친구와 우정을 유지하나요?", "인생의 중요한 순간을 함께했나요?", "영원한 친구라고 느끼나요?"]),
            Milestone(title: "우정 축하", description: "20년 기념", successCriteria: ["20년 우정을 기념했나요?", "함께 추억을 돌아봤나요?", "앞으로도 함께할 것을 다짐했나요?"])
        ],
        .동창회_참석하기: [
            Milestone(title: "동창회 확인", description: "일정 파악", successCriteria: ["동창회 일정을 확인했나요?", "참석 의사를 밝혔나요?", "캘린더에 등록했나요?"]),
            Milestone(title: "참석 준비", description: "만날 준비", successCriteria: ["옛 친구들 연락처를 확인했나요?", "근황을 정리했나요?", "명함이나 사진을 준비했나요?"]),
            Milestone(title: "동창회 참석", description: "옛 친구 만남", successCriteria: ["동창회에 참석했나요?", "옛 친구들과 대화를 나눴나요?", "즐거운 시간을 보냈나요?"])
        ],
        .동호회_가입하기: [
            Milestone(title: "동호회 탐색", description: "관심사 찾기", successCriteria: ["관심 있는 분야를 정했나요?", "관련 동호회를 검색했나요?", "가입 방법을 알아봤나요?"]),
            Milestone(title: "동호회 가입", description: "활동 시작", successCriteria: ["동호회에 가입했나요?", "첫 모임에 참석했나요?", "회원들과 인사를 나눴나요?"]),
            Milestone(title: "활동 정착", description: "정기 활동", successCriteria: ["정기적으로 참여하고 있나요?", "친한 회원이 생겼나요?", "활동이 즐거운가요?"])
        ],
        .봉사_활동하기: [
            Milestone(title: "봉사 분야 선택", description: "관심 분야 탐색", successCriteria: ["어떤 봉사를 하고 싶은지 정했나요?", "봉사 단체를 알아봤나요?", "신청을 완료했나요?"]),
            Milestone(title: "봉사 시작", description: "첫 봉사 활동", successCriteria: ["첫 번째 봉사에 참여했나요?", "보람을 느꼈나요?", "다음 봉사를 계획했나요?"]),
            Milestone(title: "정기 봉사", description: "지속적 봉사", successCriteria: ["정기적으로 봉사하고 있나요?", "봉사가 삶의 일부가 되었나요?", "사회에 기여하고 있다고 느끼나요?"])
        ],
        .기부_활동하기: [
            Milestone(title: "기부처 선택", description: "기부 대상 탐색", successCriteria: ["어디에 기부할지 정했나요?", "신뢰할 수 있는 단체인가요?", "기부 방법을 알아봤나요?"]),
            Milestone(title: "첫 기부", description: "기부 실행", successCriteria: ["첫 번째 기부를 했나요?", "기부금이 잘 사용될 거라 믿나요?", "기부한 후 뿌듯했나요?"]),
            Milestone(title: "정기 기부", description: "지속적 기부", successCriteria: ["정기 기부를 설정했나요?", "꾸준히 기부하고 있나요?", "기부가 습관이 되었나요?"])
        ],
        .후원_아동하기: [
            Milestone(title: "후원 결정", description: "후원 단체 선택", successCriteria: ["아동 후원 단체를 알아봤나요?", "후원할 아동을 선택했나요?", "후원 신청을 했나요?"]),
            Milestone(title: "후원 시작", description: "정기 후원", successCriteria: ["정기 후원을 시작했나요?", "아동의 소식을 받았나요?", "편지나 선물을 보냈나요?"]),
            Milestone(title: "후원 지속", description: "장기 후원", successCriteria: ["1년 이상 후원을 지속하고 있나요?", "아동이 성장하는 것을 보고 있나요?", "보람을 느끼고 있나요?"])
        ],
        .멘토링하기: [
            Milestone(title: "멘토 역할 준비", description: "멘토링 시작", successCriteria: ["멘토로서 나눌 경험이 있나요?", "멘토링 프로그램에 등록했나요?", "멘티를 배정받았나요?"]),
            Milestone(title: "멘토링 실행", description: "멘티 지도", successCriteria: ["멘티와 정기적으로 만나나요?", "유익한 조언을 나누고 있나요?", "멘티가 성장하고 있나요?"]),
            Milestone(title: "멘토링 성과", description: "성공적 멘토링", successCriteria: ["멘티에게 긍정적 영향을 주었나요?", "멘토링이 보람 있나요?", "계속 멘토링을 할 계획인가요?"])
        ],
        .코칭_받기: [
            Milestone(title: "코칭 탐색", description: "코치 찾기", successCriteria: ["어떤 분야의 코칭이 필요한지 정했나요?", "코치를 찾았나요?", "코칭 프로그램에 등록했나요?"]),
            Milestone(title: "코칭 시작", description: "코칭 세션", successCriteria: ["첫 코칭 세션을 받았나요?", "목표를 설정했나요?", "과제를 수행하고 있나요?"]),
            Milestone(title: "코칭 성과", description: "성장 확인", successCriteria: ["코칭을 통해 성장했나요?", "목표에 가까워졌나요?", "코칭이 도움이 되었나요?"])
        ],
        .인생_멘토_찾기: [
            Milestone(title: "멘토 탐색", description: "롤모델 물색", successCriteria: ["존경하는 인물이 있나요?", "그 분의 연락처나 정보를 알아봤나요?", "만남을 요청할 준비가 되었나요?"]),
            Milestone(title: "멘토 접촉", description: "만남 시도", successCriteria: ["정중하게 연락했나요?", "만남 약속을 잡았나요?", "질문을 준비했나요?"]),
            Milestone(title: "멘토 관계", description: "지속적 교류", successCriteria: ["멘토와 관계를 맺었나요?", "정기적으로 조언을 구하나요?", "인생에 큰 도움이 되나요?"])
        ],
        .롤모델_만나기: [
            Milestone(title: "롤모델 탐색", description: "존경하는 인물 찾기", successCriteria: ["누구를 롤모델로 삼고 싶은지 정했나요?", "그 분에 대해 조사했나요?", "만날 기회를 찾고 있나요?"]),
            Milestone(title: "만남 시도", description: "접촉 시도", successCriteria: ["강연이나 행사에 참석했나요?", "만남을 요청했나요?", "기회를 만들기 위해 노력했나요?"]),
            Milestone(title: "만남 성공", description: "롤모델과 대화", successCriteria: ["롤모델을 직접 만났나요?", "인사이트를 얻었나요?", "삶에 영감을 받았나요?"])
        ],
        .네트워킹하기: [
            Milestone(title: "네트워킹 계획", description: "인맥 확장 준비", successCriteria: ["네트워킹 목표를 정했나요?", "참석할 행사를 찾았나요?", "명함을 준비했나요?"]),
            Milestone(title: "네트워킹 실행", description: "인맥 만들기", successCriteria: ["행사에 참석했나요?", "새로운 사람들과 대화했나요?", "연락처를 교환했나요?"]),
            Milestone(title: "관계 유지", description: "인맥 관리", successCriteria: ["만난 사람들과 연락을 유지하나요?", "정기적으로 네트워킹을 하나요?", "인맥이 넓어졌나요?"])
        ],
        .명함_100장_교환하기: [
            Milestone(title: "명함 준비", description: "명함 제작", successCriteria: ["나만의 명함이 있나요?", "충분한 수량을 준비했나요?", "명함에 연락처가 있나요?"]),
            Milestone(title: "명함 교환", description: "적극적 네트워킹", successCriteria: ["30장 이상 교환했나요?", "60장 이상 교환했나요?", "받은 명함을 정리하고 있나요?"]),
            Milestone(title: "100장 달성", description: "목표 달성", successCriteria: ["100장을 교환했나요?", "의미 있는 인맥이 생겼나요?", "후속 연락을 하고 있나요?"])
        ],
        .커피챗_100회하기: [
            Milestone(title: "커피챗 시작", description: "대화의 시간", successCriteria: ["커피챗 할 사람을 정했나요?", "첫 번째 커피챗을 했나요?", "유익한 대화였나요?"]),
            Milestone(title: "50회 달성", description: "중간 목표", successCriteria: ["50번의 커피챗을 했나요?", "다양한 사람을 만났나요?", "인사이트를 얻었나요?"]),
            Milestone(title: "100회 달성", description: "목표 완료", successCriteria: ["100번의 커피챗을 완료했나요?", "넓은 인맥이 생겼나요?", "커피챗이 습관이 되었나요?"])
        ],
        .강연_들으러_가기: [
            Milestone(title: "강연 탐색", description: "관심 분야 강연 찾기", successCriteria: ["듣고 싶은 강연을 찾았나요?", "일정을 확인했나요?", "신청을 완료했나요?"]),
            Milestone(title: "강연 참석", description: "강연 듣기", successCriteria: ["강연에 참석했나요?", "메모를 하며 들었나요?", "유익했나요?"]),
            Milestone(title: "강연 활용", description: "배움 적용", successCriteria: ["배운 내용을 정리했나요?", "삶에 적용해봤나요?", "정기적으로 강연을 듣나요?"])
        ],
        .북클럽_참여하기: [
            Milestone(title: "북클럽 탐색", description: "모임 찾기", successCriteria: ["관심 있는 북클럽을 찾았나요?", "가입 방법을 알아봤나요?", "가입 신청을 했나요?"]),
            Milestone(title: "북클럽 참여", description: "모임 시작", successCriteria: ["첫 모임에 참석했나요?", "책을 읽고 갔나요?", "토론에 참여했나요?"]),
            Milestone(title: "정기 활동", description: "지속적 참여", successCriteria: ["정기적으로 참여하고 있나요?", "독서 습관이 생겼나요?", "회원들과 친해졌나요?"])
        ],
        .스터디_그룹하기: [
            Milestone(title: "스터디 계획", description: "그룹 구성", successCriteria: ["스터디 주제를 정했나요?", "함께할 사람을 찾았나요?", "일정을 정했나요?"]),
            Milestone(title: "스터디 시작", description: "모임 시작", successCriteria: ["첫 스터디 모임을 가졌나요?", "규칙을 정했나요?", "목표를 설정했나요?"]),
            Milestone(title: "스터디 지속", description: "꾸준한 학습", successCriteria: ["정기적으로 모이고 있나요?", "학습 목표를 달성했나요?", "서로에게 도움이 되나요?"])
        ],
        .운동_메이트하기: [
            Milestone(title: "운동 메이트 찾기", description: "함께할 사람 찾기", successCriteria: ["같은 운동을 좋아하는 사람을 찾았나요?", "연락처를 교환했나요?", "운동 일정을 맞췄나요?"]),
            Milestone(title: "함께 운동", description: "운동 시작", successCriteria: ["함께 운동을 시작했나요?", "정기적으로 만나나요?", "서로 동기부여가 되나요?"]),
            Milestone(title: "습관화", description: "지속적 운동", successCriteria: ["3개월 이상 함께 운동하나요?", "운동 성과가 있나요?", "운동 친구가 되었나요?"])
        ],
        .러닝_크루하기: [
            Milestone(title: "크루 탐색", description: "러닝 크루 찾기", successCriteria: ["지역 러닝 크루를 찾았나요?", "가입 방법을 알아봤나요?", "가입 신청을 했나요?"]),
            Milestone(title: "크루 참여", description: "러닝 시작", successCriteria: ["첫 러닝에 참여했나요?", "정기적으로 참여하나요?", "크루원들과 친해졌나요?"]),
            Milestone(title: "정기 활동", description: "꾸준한 러닝", successCriteria: ["주 1회 이상 함께 뛰나요?", "러닝 실력이 향상되었나요?", "러닝 크루가 일상이 되었나요?"])
        ],
        .등산_모임_만들기: [
            Milestone(title: "모임 계획", description: "등산 모임 구상", successCriteria: ["모임 콘셉트를 정했나요?", "함께할 사람을 모집했나요?", "첫 산행 일정을 정했나요?"]),
            Milestone(title: "모임 시작", description: "첫 산행", successCriteria: ["첫 등산 모임을 가졌나요?", "다음 일정을 정했나요?", "즐거웠나요?"]),
            Milestone(title: "모임 정착", description: "정기 모임", successCriteria: ["정기적으로 산행하나요?", "회원이 늘어났나요?", "모임이 안정적으로 운영되나요?"])
        ],
        .사진_동호회하기: [
            Milestone(title: "동호회 탐색", description: "사진 동호회 찾기", successCriteria: ["사진 동호회를 찾았나요?", "가입 방법을 알아봤나요?", "가입 신청을 했나요?"]),
            Milestone(title: "동호회 활동", description: "출사 참여", successCriteria: ["첫 출사에 참여했나요?", "회원들과 사진을 공유했나요?", "피드백을 받았나요?"]),
            Milestone(title: "정기 활동", description: "꾸준한 참여", successCriteria: ["정기적으로 출사에 참여하나요?", "사진 실력이 향상되었나요?", "회원들과 친해졌나요?"])
        ],
        .음악_동호회하기: [
            Milestone(title: "동호회 탐색", description: "음악 동호회 찾기", successCriteria: ["관심 있는 음악 동호회를 찾았나요?", "가입 방법을 알아봤나요?", "가입 신청을 했나요?"]),
            Milestone(title: "동호회 활동", description: "합주/공연 참여", successCriteria: ["첫 모임에 참여했나요?", "함께 연습했나요?", "공연 기회가 있었나요?"]),
            Milestone(title: "정기 활동", description: "꾸준한 참여", successCriteria: ["정기적으로 참여하나요?", "음악 실력이 향상되었나요?", "회원들과 친해졌나요?"])
        ],
        .독서_모임_만들기: [
            Milestone(title: "모임 계획", description: "독서 모임 구상", successCriteria: ["모임 콘셉트를 정했나요?", "함께할 사람을 모집했나요?", "첫 책을 선정했나요?"]),
            Milestone(title: "모임 시작", description: "첫 모임", successCriteria: ["첫 독서 모임을 가졌나요?", "책에 대해 토론했나요?", "다음 책을 정했나요?"]),
            Milestone(title: "모임 정착", description: "정기 모임", successCriteria: ["정기적으로 모이나요?", "회원이 늘어났나요?", "모임이 안정적으로 운영되나요?"])
        ],
        .요리_모임_만들기: [
            Milestone(title: "모임 계획", description: "요리 모임 구상", successCriteria: ["모임 콘셉트를 정했나요?", "함께할 사람을 모집했나요?", "장소를 정했나요?"]),
            Milestone(title: "모임 시작", description: "첫 요리", successCriteria: ["첫 요리 모임을 가졌나요?", "함께 요리하고 먹었나요?", "다음 메뉴를 정했나요?"]),
            Milestone(title: "모임 정착", description: "정기 모임", successCriteria: ["정기적으로 모이나요?", "요리 실력이 향상되었나요?", "모임이 즐거운가요?"])
        ],
        .취미_공유하기: [
            Milestone(title: "취미 파악", description: "공유할 취미 선택", successCriteria: ["나눌 취미가 있나요?", "함께할 사람을 찾았나요?", "모임이나 클래스를 계획했나요?"]),
            Milestone(title: "취미 공유", description: "함께 즐기기", successCriteria: ["취미를 함께 즐겼나요?", "상대방이 재미있어했나요?", "정기적으로 할 계획인가요?"]),
            Milestone(title: "취미 커뮤니티", description: "지속적 공유", successCriteria: ["취미를 함께하는 사람이 늘었나요?", "커뮤니티가 형성되었나요?", "취미가 더 즐거워졌나요?"])
        ],
        .SNS_친구_만들기: [
            Milestone(title: "SNS 활동", description: "온라인 소통 시작", successCriteria: ["활발히 사용하는 SNS가 있나요?", "관심사 기반 계정을 팔로우했나요?", "댓글이나 DM으로 소통했나요?"]),
            Milestone(title: "온라인 친구", description: "친구 맺기", successCriteria: ["SNS에서 친해진 사람이 있나요?", "정기적으로 소통하나요?", "서로의 일상을 공유하나요?"]),
            Milestone(title: "관계 발전", description: "의미 있는 관계", successCriteria: ["SNS 친구와 오프라인에서 만났나요?", "진정한 친구가 되었나요?", "지속적인 관계를 유지하나요?"])
        ],
        .펜팔_친구하기: [
            Milestone(title: "펜팔 찾기", description: "펜팔 파트너 탐색", successCriteria: ["펜팔 사이트나 앱을 찾았나요?", "펜팔 친구를 구했나요?", "첫 편지를 보냈나요?"]),
            Milestone(title: "편지 교환", description: "정기적 소통", successCriteria: ["답장을 받았나요?", "정기적으로 편지를 주고받나요?", "서로에 대해 알아가고 있나요?"]),
            Milestone(title: "우정 발전", description: "펜팔 친구 완성", successCriteria: ["6개월 이상 편지를 주고받았나요?", "깊은 우정을 나누나요?", "실제로 만날 계획이 있나요?"])
        ],
        .외국인_친구하기: [
            Milestone(title: "외국인 만나기", description: "기회 탐색", successCriteria: ["외국인을 만날 수 있는 곳을 찾았나요?", "언어 교환 앱을 사용해봤나요?", "국제 행사에 참여했나요?"]),
            Milestone(title: "친구 사귀기", description: "관계 시작", successCriteria: ["외국인과 대화를 나눴나요?", "연락처를 교환했나요?", "정기적으로 연락하나요?"]),
            Milestone(title: "문화 교류", description: "깊은 우정", successCriteria: ["서로의 문화를 공유했나요?", "의미 있는 친구가 되었나요?", "서로의 나라를 방문할 계획인가요?"])
        ],
        .이웃과_인사하기: [
            Milestone(title: "인사 시작", description: "이웃에게 먼저 인사", successCriteria: ["이웃을 만나면 인사를 하나요?", "이름이나 얼굴을 알고 있나요?", "가벼운 대화를 나눴나요?"]),
            Milestone(title: "관계 발전", description: "이웃과 소통", successCriteria: ["이웃과 자주 인사를 나누나요?", "도움을 주고받은 적이 있나요?", "연락처를 교환했나요?"]),
            Milestone(title: "좋은 이웃", description: "이웃 관계 정착", successCriteria: ["이웃과 편안한 관계인가요?", "동네가 더 따뜻하게 느껴지나요?", "서로 챙기는 관계인가요?"])
        ],
        .동네_친구하기: [
            Milestone(title: "동네 탐색", description: "이웃 만나기", successCriteria: ["동네 모임이나 행사를 찾았나요?", "이웃과 대화를 나눴나요?", "관심사가 맞는 사람을 찾았나요?"]),
            Milestone(title: "친구 사귀기", description: "관계 발전", successCriteria: ["동네에서 자주 만나는 사람이 있나요?", "함께 활동을 했나요?", "연락처를 교환했나요?"]),
            Milestone(title: "동네 친구", description: "우정 완성", successCriteria: ["동네 친구가 생겼나요?", "정기적으로 만나나요?", "동네 생활이 더 즐거워졌나요?"])
        ],
        .직장_동료와_친해지기: [
            Milestone(title: "대화 시작", description: "동료에게 다가가기", successCriteria: ["동료와 업무 외 대화를 나눠봤나요?", "점심이나 커피를 함께했나요?", "공통 관심사를 찾았나요?"]),
            Milestone(title: "관계 발전", description: "친밀감 형성", successCriteria: ["동료와 퇴근 후 만남이 있었나요?", "개인적인 이야기를 나눠봤나요?", "서로 응원하는 사이인가요?"]),
            Milestone(title: "직장 친구", description: "우정 완성", successCriteria: ["직장에서 친한 친구가 생겼나요?", "회사 생활이 더 즐거워졌나요?", "오래 연락할 친구가 되었나요?"])
        ]
    ]
}
// MARK: - Unified Bucket Item Type

