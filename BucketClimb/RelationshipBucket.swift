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
        ]
    ]
}
// MARK: - Unified Bucket Item Type

