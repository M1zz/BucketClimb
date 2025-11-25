//
// CategoryBuckets.swift
// BucketClimb
//
// 카테고리별로 관리되는 버킷리스트 항목 enum
// Auto-generated
//

import Foundation

// MARK: - Category-Specific Bucket Enums

enum HealthBucket: String, Codable, CaseIterable {
    case 체중_10kg_감량하기 = "체중 10kg 감량하기"
    case 복근_만들기 = "복근 만들기"
    case 벤치프레스_100kg하기 = "벤치프레스 100kg하기"
    case 풀업_20개_하기 = "풀업 20개 하기"
    case 요가_강사_자격증_취득하기 = "요가 강사 자격증 취득하기"
    case 필라테스_마스터하기 = "필라테스 마스터하기"
    case 금연_1년_달성하기 = "금연 1년 달성하기"
    case 채식주의자_되기 = "채식주의자 되기"
    case 명상_100일_연속하기 = "명상 100일 연속하기"
    case 건강검진_올_정상_판정하기 = "건강검진 올 정상 판정하기"
    case 체중_5kg_감량하기 = "체중 5kg 감량하기"
    case 체중_20kg_감량하기 = "체중 20kg 감량하기"
    case 체지방률_10퍼센트_달성하기 = "체지방률 10% 달성하기"
    case 체지방률_15퍼센트_달성하기 = "체지방률 15% 달성하기"
    case 근육량_5kg_증량하기 = "근육량 5kg 증량하기"
    case 근육량_10kg_증량하기 = "근육량 10kg 증량하기"
    case 스쿼트_200kg하기 = "스쿼트 200kg하기"
    case 데드리프트_200kg하기 = "데드리프트 200kg하기"
    case 벤치프레스_150kg하기 = "벤치프레스 150kg하기"
    case 풀업_50개하기 = "풀업 50개하기"
    case 푸시업_100개_연속하기 = "푸시업 100개 연속하기"
    case 플랭크_30분하기 = "플랭크 30분하기"
    case 버피_100개하기 = "버피 100개하기"
    case 에어_스쿼트_500개하기 = "에어 스쿼트 500개하기"
    case 유연성_향상하기 = "유연성 향상하기"
    case 일자_다리_만들기 = "일자 다리 만들기"
    case 거북목_교정하기 = "거북목 교정하기"
    case 골반_교정하기 = "골반 교정하기"
    case 자세_교정하기 = "자세 교정하기"
    case 척추_건강하기 = "척추 건강하기"
    case 관절_건강하기 = "관절 건강하기"
    case 혈압_정상화하기 = "혈압 정상화하기"
    case 콜레스테롤_정상화하기 = "콜레스테롤 정상화하기"
    case 혈당_정상화하기 = "혈당 정상화하기"
    case 간_수치_정상화하기 = "간 수치 정상화하기"
    case 신장_건강하기 = "신장 건강하기"
    case 당뇨_예방하기 = "당뇨 예방하기"
    case 고혈압_예방하기 = "고혈압 예방하기"
    case 심장병_예방하기 = "심장병 예방하기"
    case 뇌졸중_예방하기 = "뇌졸중 예방하기"
    case 암_검진하기 = "암 검진하기"
    case 금주_100일하기 = "금주 100일하기"
    case 금주_1년하기 = "금주 1년하기"
    case 금연_100일하기 = "금연 100일하기"
    case 금연_5년하기 = "금연 5년하기"
    case 카페인_디톡스하기 = "카페인 디톡스하기"
    case 설탕_디톡스하기 = "설탕 디톡스하기"
    case 가공식품_끊기 = "가공식품 끊기"
    case 유기농_식단_관리하기 = "유기농 식단 관리하기"
    case 지중해식_식단_관리하기 = "지중해식 식단 관리하기"
    case 케토_식단_관리하기 = "케토 식단 관리하기"
    case 간헐적_단식하기 = "간헐적 단식하기"
    case 하루_2L_물_마시기 = "하루 2L 물 마시기"
    case 채소_500g_먹기 = "채소 500g 먹기"
    case 과일_200g_먹기 = "과일 200g 먹기"
    case 견과류_섭취하기 = "견과류 섭취하기"
    case 프로바이오틱스_섭취하기 = "프로바이오틱스 섭취하기"
    case 비타민_D_보충하기 = "비타민 D 보충하기"
    case 오메가3_보충하기 = "오메가3 보충하기"
    case 단백질_체중x2g_섭취하기 = "단백질 체중x2g 섭취하기"
    case 아침_식사_챙기기 = "아침 식사 챙기기"
    case 규칙적인_식사하기 = "규칙적인 식사하기"
    case 과식_줄이기 = "과식 줄이기"
    case 야식_끊기 = "야식 끊기"
    case 배달_음식_줄이기 = "배달 음식 줄이기"
    case 집밥_먹기 = "집밥 먹기"
    case 요리_실력_향상하기 = "요리 실력 향상하기"
    case 도시락_싸기 = "도시락 싸기"
    case 일찍_자기 = "일찍 자기"
    case _7시간_수면하기 = "7시간 수면하기"
    case _8시간_수면하기 = "8시간 수면하기"
    case 불면증_치료하기 = "불면증 치료하기"
    case 수면의_질_개선하기 = "수면의 질 개선하기"
    case 아침형_인간_되기 = "아침형 인간 되기"
    case 새벽_5시_기상하기 = "새벽 5시 기상하기"
    case 규칙적인_수면하기 = "규칙적인 수면하기"
    case 낮잠_줄이기 = "낮잠 줄이기"
    case 스트레스_관리하기 = "스트레스 관리하기"
    case 분노_조절_가기 = "분노 조절 가기"
    case 우울증_극복하기 = "우울증 극복하기"
    case 불안_장애_치료하기 = "불안 장애 치료하기"
    case 공황_장애_극복하기 = "공황 장애 극복하기"
    case 심리_상담_받기 = "심리 상담 받기"
    case 정신_건강_검진하기 = "정신 건강 검진하기"
    case 긍정적_사고하기 = "긍정적 사고하기"
    case 감사_일기 = "감사 일기"
    case 하루_30분_산책하기 = "하루 30분 산책하기"
    case 하루_1만보_걷기 = "하루 1만보 걷기"
    case 계단_오르기 = "계단 오르기"
    case 자전거_출퇴근하기 = "자전거 출퇴근하기"
    case 걷기_출퇴근하기 = "걷기 출퇴근하기"
    case 엘리베이터_안_타기 = "엘리베이터 안 타기"
    case 앉아있는_시간_줄이기 = "앉아있는 시간 줄이기"
    case 스탠딩_데스크하기 = "스탠딩 데스크하기"
    case 스트레칭_습관_만들기 = "스트레칭 습관 만들기"
    case 마사지_정기적으로하기 = "마사지 정기적으로하기"
    case 발_마사지_받기 = "발 마사지 받기"
    case 족욕_습관_만들기 = "족욕 습관 만들기"
    case 반신욕_습관_만들기 = "반신욕 습관 만들기"

    var thumbnail: String {
        Self.metadata[self]!.0
    }

    var backgroundImage: String {
        Self.metadata[self]!.1
    }

    private static let metadata: [Self: (String, String)] = [
        .체중_10kg_감량하기: ("scalemass.fill", "weight_loss"),
        .복근_만들기: ("figure.core.training", "abs_workout"),
        .벤치프레스_100kg하기: ("dumbbell.fill", "bench_press"),
        .풀업_20개_하기: ("figure.strengthtraining.traditional", "pullup_20"),
        .요가_강사_자격증_취득하기: ("figure.yoga", "yoga_instructor"),
        .필라테스_마스터하기: ("figure.pilates", "pilates_master"),
        .금연_1년_달성하기: ("wind", "quit_smoking"),
        .채식주의자_되기: ("carrot.fill", "vegetarian"),
        .명상_100일_연속하기: ("sparkles", "meditation_100days"),
        .건강검진_올_정상_판정하기: ("stethoscope", "health_checkup"),
        .체중_5kg_감량하기: ("scalemass.fill", "weight_loss_5kg"),
        .체중_20kg_감량하기: ("scalemass.fill", "weight_loss_20kg"),
        .체지방률_10퍼센트_달성하기: ("percent", "bodyfat_10"),
        .체지방률_15퍼센트_달성하기: ("percent", "bodyfat_15"),
        .근육량_5kg_증량하기: ("figure.strengthtraining.traditional", "muscle_gain_5kg"),
        .근육량_10kg_증량하기: ("figure.strengthtraining.traditional", "muscle_gain_10kg"),
        .스쿼트_200kg하기: ("figure.strengthtraining.traditional", "squat_200kg"),
        .데드리프트_200kg하기: ("figure.strengthtraining.traditional", "deadlift_200kg"),
        .벤치프레스_150kg하기: ("dumbbell.fill", "bench_press_150kg"),
        .풀업_50개하기: ("figure.strengthtraining.traditional", "pullup_50"),
        .푸시업_100개_연속하기: ("figure.strengthtraining.functional", "pushup_100"),
        .플랭크_30분하기: ("figure.core.training", "plank_30min"),
        .버피_100개하기: ("figure.run", "burpee_100"),
        .에어_스쿼트_500개하기: ("figure.strengthtraining.traditional", "airsquat_500"),
        .유연성_향상하기: ("figure.flexibility", "flexibility"),
        .일자_다리_만들기: ("figure.walk", "straight_legs"),
        .거북목_교정하기: ("figure.walk", "neck_correction"),
        .골반_교정하기: ("figure.walk", "pelvis_correction"),
        .자세_교정하기: ("figure.stand", "posture_correction"),
        .척추_건강하기: ("figure.walk", "spine_health"),
        .관절_건강하기: ("figure.walk", "joint_health"),
        .혈압_정상화하기: ("heart.fill", "blood_pressure"),
        .콜레스테롤_정상화하기: ("drop.fill", "cholesterol"),
        .혈당_정상화하기: ("drop.circle.fill", "blood_sugar"),
        .간_수치_정상화하기: ("cross.fill", "liver_function"),
        .신장_건강하기: ("drop.circle.fill", "kidney_health"),
        .당뇨_예방하기: ("cross.case.fill", "diabetes_prevention"),
        .고혈압_예방하기: ("heart.circle.fill", "hypertension_prevention"),
        .심장병_예방하기: ("heart.fill", "heart_disease_prevention"),
        .뇌졸중_예방하기: ("brain.fill", "stroke_prevention"),
        .암_검진하기: ("stethoscope", "cancer_screening"),
        .금주_100일하기: ("wind", "no_alcohol_100days"),
        .금주_1년하기: ("wind", "no_alcohol_1year"),
        .금연_100일하기: ("wind", "no_smoking_100days"),
        .금연_5년하기: ("wind", "no_smoking_5years"),
        .카페인_디톡스하기: ("cup.and.saucer.fill", "caffeine_detox"),
        .설탕_디톡스하기: ("sugar.cubes.fill", "sugar_detox"),
        .가공식품_끊기: ("fork.knife", "no_processed_food"),
        .유기농_식단_관리하기: ("leaf.fill", "organic_diet"),
        .지중해식_식단_관리하기: ("fork.knife.circle.fill", "mediterranean_diet"),
        .케토_식단_관리하기: ("fork.knife", "keto_diet"),
        .간헐적_단식하기: ("clock.fill", "intermittent_fasting"),
        .하루_2L_물_마시기: ("drop.fill", "drink_2l_water"),
        .채소_500g_먹기: ("carrot.fill", "eat_500g_veggies"),
        .과일_200g_먹기: ("apple.logo", "eat_200g_fruits"),
        .견과류_섭취하기: ("circle.fill", "eat_nuts"),
        .프로바이오틱스_섭취하기: ("pill.fill", "probiotics"),
        .비타민_D_보충하기: ("sun.max.fill", "vitamin_d"),
        .오메가3_보충하기: ("fish.fill", "omega3"),
        .단백질_체중x2g_섭취하기: ("fork.knife.circle.fill", "protein_intake"),
        .아침_식사_챙기기: ("sunrise.fill", "breakfast_daily"),
        .규칙적인_식사하기: ("clock.circle.fill", "regular_meals"),
        .과식_줄이기: ("fork.knife", "reduce_overeating"),
        .야식_끊기: ("moon.fill", "no_late_night_snack"),
        .배달_음식_줄이기: ("takeoutbag.and.cup.and.straw.fill", "reduce_delivery"),
        .집밥_먹기: ("house.fill", "home_cooked_meal"),
        .요리_실력_향상하기: ("flame.fill", "cooking_skill"),
        .도시락_싸기: ("backpack.fill", "pack_lunch"),
        .일찍_자기: ("bed.double.fill", "early_sleep"),
        ._7시간_수면하기: ("bed.double.fill", "7hour_sleep"),
        ._8시간_수면하기: ("bed.double.fill", "8hour_sleep"),
        .불면증_치료하기: ("moon.stars.fill", "insomnia_treatment"),
        .수면의_질_개선하기: ("bed.double.circle.fill", "sleep_quality"),
        .아침형_인간_되기: ("sunrise.fill", "morning_person"),
        .새벽_5시_기상하기: ("alarm.fill", "wake_5am"),
        .규칙적인_수면하기: ("clock.fill", "regular_sleep"),
        .낮잠_줄이기: ("zzz", "reduce_nap"),
        .스트레스_관리하기: ("sparkles", "stress_management"),
        .분노_조절_가기: ("brain.fill", "anger_management"),
        .우울증_극복하기: ("brain.fill", "overcome_depression"),
        .불안_장애_치료하기: ("brain.fill", "anxiety_treatment"),
        .공황_장애_극복하기: ("brain.fill", "overcome_panic"),
        .심리_상담_받기: ("person.2.fill", "counseling"),
        .정신_건강_검진하기: ("brain.fill", "mental_health_checkup"),
        .긍정적_사고하기: ("sparkles", "positive_thinking"),
        .감사_일기: ("book.fill", "gratitude_journal"),
        .하루_30분_산책하기: ("figure.walk", "walk_30min"),
        .하루_1만보_걷기: ("figure.walk", "walk_10000steps"),
        .계단_오르기: ("figure.stairs", "take_stairs"),
        .자전거_출퇴근하기: ("bicycle", "bike_commute"),
        .걷기_출퇴근하기: ("figure.walk", "walk_commute"),
        .엘리베이터_안_타기: ("figure.walk", "no_elevator"),
        .앉아있는_시간_줄이기: ("figure.stand", "reduce_sitting"),
        .스탠딩_데스크하기: ("figure.stand", "standing_desk"),
        .스트레칭_습관_만들기: ("figure.flexibility", "stretching_habit"),
        .마사지_정기적으로하기: ("hand.raised.fill", "regular_massage"),
        .발_마사지_받기: ("foot.fill", "foot_massage"),
        .족욕_습관_만들기: ("drop.fill", "foot_bath"),
        .반신욕_습관_만들기: ("drop.fill", "half_bath"),
    ]

    var hasCustomMilestones: Bool {
        !milestones.isEmpty
    }

    var milestones: [Milestone] {
        Self.milestonesData[self] ?? []
    }

    private static let milestonesData: [Self: [Milestone]] = [
        .체중_10kg_감량하기: [
            Milestone(title: "현재 상태 파악", description: "체성분 분석 및 목표 설정", successCriteria: [
                "체성분 분석(인바디)을 했나요?",
                "BMI와 체지방률을 알고 있나요?",
                "월별 감량 목표를 세웠나요?"
            ]),
            Milestone(title: "식단 관리 시작", description: "칼로리 적자 식단 유지", successCriteria: [
                "하루 권장 칼로리를 알고 있나요?",
                "식단 기록 앱을 사용하고 있나요?",
                "고단백 저탄수화물 식단을 시작했나요?"
            ]),
            Milestone(title: "운동 루틴 확립", description: "주 3회 이상 운동", successCriteria: [
                "주 3회 이상 유산소 운동을 하고 있나요?",
                "근력 운동을 병행하고 있나요?",
                "운동 습관이 2주 이상 유지되고 있나요?"
            ]),
            Milestone(title: "목표 달성", description: "10kg 감량 완료", successCriteria: [
                "총 10kg 감량에 성공했나요?",
                "요요 없이 1개월 이상 유지했나요?",
                "새로운 유지 체중 목표를 세웠나요?"
            ])
        ],
        .금연_1년_달성하기: [
            Milestone(title: "금연 준비", description: "금연 시작일 및 계획 수립", successCriteria: [
                "금연 시작일을 정했나요?",
                "금연 보조제를 준비했나요?",
                "주변에 금연 선언을 했나요?"
            ]),
            Milestone(title: "1주 달성", description: "금단 증상 극복", successCriteria: [
                "금단 증상을 이겨내고 있나요?",
                "대체 행동(물 마시기 등)을 실천하고 있나요?",
                "스트레스 관리 방법을 찾았나요?"
            ]),
            Milestone(title: "1개월 달성", description: "초기 고비 극복", successCriteria: [
                "한 달간 완전 금연을 유지했나요?",
                "흡연 욕구가 줄어들었나요?",
                "금연 앱으로 기록을 유지하고 있나요?"
            ]),
            Milestone(title: "6개월 달성", description: "중간 목표 달성", successCriteria: [
                "6개월간 금연을 유지했나요?",
                "폐 건강이 개선되었나요?",
                "금연으로 절약한 돈을 계산해봤나요?"
            ]),
            Milestone(title: "1년 달성", description: "금연 성공", successCriteria: [
                "1년간 완전 금연에 성공했나요?",
                "건강검진 결과가 개선되었나요?",
                "비흡연자로서의 정체성을 가지게 되었나요?"
            ])
        ],
        .명상_100일_연속하기: [
            Milestone(title: "명상 입문", description: "기초 명상법 습득", successCriteria: [
                "명상 앱을 설치했나요?",
                "하루 5분 명상을 시작했나요?",
                "호흡 명상의 기본을 익혔나요?"
            ]),
            Milestone(title: "30일 달성", description: "명상 습관 형성", successCriteria: [
                "30일 연속 명상에 성공했나요?",
                "명상 시간을 10분 이상으로 늘렸나요?",
                "집중력 향상을 느끼고 있나요?"
            ]),
            Milestone(title: "60일 달성", description: "명상 심화", successCriteria: [
                "60일 연속 명상을 유지했나요?",
                "다양한 명상 기법을 시도해봤나요?",
                "스트레스 감소를 경험했나요?"
            ]),
            Milestone(title: "100일 달성", description: "명상 마스터", successCriteria: [
                "100일 연속 명상에 성공했나요?",
                "20분 이상 명상이 가능한가요?",
                "일상에서 마음챙김을 실천하고 있나요?"
            ])
        ],
        .복근_만들기: [
            Milestone(title: "기초 체력 준비", description: "코어 운동 시작", successCriteria: [
                "플랭크 30초 이상 가능한가요?",
                "기본 코어 운동 루틴을 알고 있나요?",
                "주 3회 이상 코어 운동을 하고 있나요?"
            ]),
            Milestone(title: "체지방 감량", description: "체지방률 15% 이하 달성", successCriteria: [
                "체지방률을 측정하고 있나요?",
                "식단 관리를 병행하고 있나요?",
                "유산소 운동을 추가했나요?"
            ]),
            Milestone(title: "복근 선명화", description: "복근이 보이기 시작", successCriteria: [
                "체지방률 12-15%에 도달했나요?",
                "복근 라인이 보이기 시작했나요?",
                "고급 코어 운동을 하고 있나요?"
            ]),
            Milestone(title: "식스팩 완성", description: "뚜렷한 복근 완성", successCriteria: [
                "체지방률 10-12%에 도달했나요?",
                "선명한 식스팩이 보이나요?",
                "유지 식단과 운동 루틴을 확립했나요?"
            ])
        ],
        .하루_1만보_걷기: [
            Milestone(title: "현재 걸음수 파악", description: "평균 걸음수 측정", successCriteria: [
                "건강 앱이나 만보기를 설치했나요?",
                "현재 평균 일일 걸음수를 알고 있나요?",
                "5천보 달성이 가능한가요?"
            ]),
            Milestone(title: "7천보 달성", description: "중간 목표 달성", successCriteria: [
                "일주일간 평균 7천보를 걸었나요?",
                "출퇴근 시 걷기를 추가했나요?",
                "점심시간에 산책을 하고 있나요?"
            ]),
            Milestone(title: "1만보 달성", description: "목표 달성", successCriteria: [
                "1만보 걷기에 성공했나요?",
                "1주일 연속 1만보를 유지했나요?",
                "걷기가 일상 습관이 되었나요?"
            ]),
            Milestone(title: "습관 유지", description: "1개월 연속 달성", successCriteria: [
                "한 달간 평균 1만보를 유지했나요?",
                "체력 향상을 느끼고 있나요?",
                "걷기를 즐기게 되었나요?"
            ])
        ],
        .벤치프레스_100kg하기: [
            Milestone(title: "기초 자세", description: "올바른 폼 습득", successCriteria: ["벤치프레스 자세를 배웠나요?", "안전 바를 사용하나요?", "스팟터와 함께 운동하나요?"]),
            Milestone(title: "60kg 달성", description: "중간 목표", successCriteria: ["60kg 3세트 가능한가요?", "부상 없이 운동하고 있나요?", "보조 운동을 하고 있나요?"]),
            Milestone(title: "80kg 달성", description: "중급 단계", successCriteria: ["80kg 3세트 가능한가요?", "어깨 부상 예방을 하고 있나요?", "점진적 과부하를 적용하고 있나요?"]),
            Milestone(title: "100kg 달성", description: "목표 완료", successCriteria: ["100kg 1RM에 성공했나요?", "안정적으로 100kg를 들 수 있나요?", "다음 목표를 설정했나요?"])
        ],
        .풀업_20개_하기: [
            Milestone(title: "풀업 시작", description: "기본 연습", successCriteria: ["풀업 1개가 가능한가요?", "네거티브 풀업을 연습하나요?", "보조 밴드를 사용하나요?"]),
            Milestone(title: "10개 달성", description: "중간 목표", successCriteria: ["연속 10개가 가능한가요?", "풀업 바리에이션을 연습하나요?", "광배근이 발달했나요?"]),
            Milestone(title: "20개 달성", description: "목표 완료", successCriteria: ["연속 20개에 성공했나요?", "가동 범위가 정확한가요?", "턱걸이가 습관이 됐나요?"])
        ],
        .요가_강사_자격증_취득하기: [
            Milestone(title: "요가 기초", description: "정기적 수련", successCriteria: ["요가 수업에 다니고 있나요?", "기본 아사나를 알고 있나요?", "1년 이상 수련했나요?"]),
            Milestone(title: "양성 과정 등록", description: "RYT 200 과정", successCriteria: ["양성 과정에 등록했나요?", "교육 일정을 확인했나요?", "비용을 준비했나요?"]),
            Milestone(title: "자격증 취득", description: "시험 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "자격증을 발급받았나요?"])
        ],
        .필라테스_마스터하기: [
            Milestone(title: "필라테스 시작", description: "기초 동작 습득", successCriteria: ["필라테스 센터에 등록했나요?", "기본 호흡법을 배웠나요?", "코어 활성화를 이해했나요?"]),
            Milestone(title: "중급 단계", description: "기구 필라테스", successCriteria: ["리포머를 사용해봤나요?", "중급 동작이 가능한가요?", "체형 변화를 느끼나요?"]),
            Milestone(title: "마스터 단계", description: "고급 동작", successCriteria: ["고급 동작이 가능한가요?", "정확한 폼을 유지하나요?", "다른 사람을 가르칠 수 있나요?"])
        ],
        .채식주의자_되기: [
            Milestone(title: "채식 시작", description: "점진적 전환", successCriteria: ["일주일에 3일 채식을 하나요?", "채식 레시피를 알아봤나요?", "영양 균형을 고려하나요?"]),
            Milestone(title: "페스코 채식", description: "육류 제외", successCriteria: ["육류를 끊었나요?", "생선/해산물만 먹나요?", "단백질 대체 식품을 알고 있나요?"]),
            Milestone(title: "완전 채식", description: "비건 식단", successCriteria: ["모든 동물성 제품을 끊었나요?", "비건 식당을 알고 있나요?", "채식이 습관이 됐나요?"])
        ],
        .건강검진_올_정상_판정하기: [
            Milestone(title: "검진 예약", description: "종합검진", successCriteria: ["건강검진을 예약했나요?", "공복 상태를 유지했나요?", "검진 항목을 확인했나요?"]),
            Milestone(title: "결과 확인", description: "결과지 분석", successCriteria: ["검진 결과를 받았나요?", "이상 항목을 파악했나요?", "의사 상담을 받았나요?"]),
            Milestone(title: "개선 노력", description: "건강 관리", successCriteria: ["이상 항목 개선을 시작했나요?", "생활 습관을 바꿨나요?", "올 정상 판정을 받았나요?"])
        ],
        .체중_5kg_감량하기: [
            Milestone(title: "목표 설정", description: "현재 체중 파악", successCriteria: ["현재 체중을 알고 있나요?", "목표 기간을 정했나요?", "일일 칼로리를 계산했나요?"]),
            Milestone(title: "2kg 감량", description: "중간 목표", successCriteria: ["2kg 감량에 성공했나요?", "식단을 유지하고 있나요?", "운동을 병행하고 있나요?"]),
            Milestone(title: "5kg 감량", description: "목표 달성", successCriteria: ["5kg 감량에 성공했나요?", "요요 현상 없이 유지하나요?", "건강한 습관이 됐나요?"])
        ],
        .체중_20kg_감량하기: [
            Milestone(title: "시작 준비", description: "장기 계획 수립", successCriteria: ["의사 상담을 받았나요?", "6개월~1년 계획을 세웠나요?", "지지 그룹을 만들었나요?"]),
            Milestone(title: "10kg 감량", description: "중간 목표", successCriteria: ["10kg 감량에 성공했나요?", "정체기를 극복했나요?", "식단과 운동을 유지하나요?"]),
            Milestone(title: "20kg 감량", description: "최종 목표", successCriteria: ["20kg 감량에 성공했나요?", "새로운 체중을 유지하나요?", "라이프스타일이 바뀌었나요?"])
        ],
        .체지방률_10퍼센트_달성하기: [
            Milestone(title: "현재 체지방률", description: "측정 및 계획", successCriteria: ["현재 체지방률을 알고 있나요?", "인바디를 정기적으로 측정하나요?", "목표 기간을 설정했나요?"]),
            Milestone(title: "15% 달성", description: "중간 단계", successCriteria: ["체지방률 15%에 도달했나요?", "근육량을 유지하고 있나요?", "식단을 철저히 관리하나요?"]),
            Milestone(title: "10% 달성", description: "목표 완료", successCriteria: ["체지방률 10%에 도달했나요?", "선명한 근육이 보이나요?", "유지 식단을 계획했나요?"])
        ],
        .체지방률_15퍼센트_달성하기: [
            Milestone(title: "시작", description: "현재 상태 파악", successCriteria: ["체지방률을 측정했나요?", "목표 기간을 정했나요?", "식단 계획을 세웠나요?"]),
            Milestone(title: "20% 달성", description: "초기 감량", successCriteria: ["체지방률 20%에 도달했나요?", "운동을 꾸준히 하나요?", "식단을 유지하고 있나요?"]),
            Milestone(title: "15% 달성", description: "목표 완료", successCriteria: ["체지방률 15%에 도달했나요?", "복근이 보이기 시작했나요?", "유지 방법을 알고 있나요?"])
        ],
        .근육량_5kg_증량하기: [
            Milestone(title: "벌크업 시작", description: "칼로리 잉여", successCriteria: ["일일 칼로리를 계산했나요?", "단백질 섭취를 늘렸나요?", "웨이트 트레이닝을 시작했나요?"]),
            Milestone(title: "2kg 증가", description: "중간 목표", successCriteria: ["근육량 2kg 증가했나요?", "점진적 과부하를 적용하나요?", "충분히 휴식하나요?"]),
            Milestone(title: "5kg 증가", description: "목표 완료", successCriteria: ["근육량 5kg 증가했나요?", "체지방 증가를 최소화했나요?", "유지 계획을 세웠나요?"])
        ],
        .근육량_10kg_증량하기: [
            Milestone(title: "장기 계획", description: "1-2년 목표", successCriteria: ["장기 계획을 세웠나요?", "전문가 상담을 받았나요?", "영양 계획을 수립했나요?"]),
            Milestone(title: "5kg 증가", description: "중간 목표", successCriteria: ["근육량 5kg 증가했나요?", "훈련 프로그램을 따르고 있나요?", "진행 상황을 기록하나요?"]),
            Milestone(title: "10kg 증가", description: "목표 완료", successCriteria: ["근육량 10kg 증가했나요?", "체형이 확연히 변했나요?", "새로운 목표를 세웠나요?"])
        ],
        .스쿼트_200kg하기: [
            Milestone(title: "기초 다지기", description: "올바른 자세", successCriteria: ["스쿼트 자세가 정확한가요?", "100kg 이상 가능한가요?", "안전 장비를 사용하나요?"]),
            Milestone(title: "150kg 달성", description: "중급 단계", successCriteria: ["150kg 3세트 가능한가요?", "무릎/허리 부상이 없나요?", "보조 운동을 하나요?"]),
            Milestone(title: "200kg 달성", description: "목표 완료", successCriteria: ["200kg 1RM에 성공했나요?", "안전하게 들 수 있나요?", "기록을 인증했나요?"])
        ],
        .데드리프트_200kg하기: [
            Milestone(title: "기초", description: "폼 완성", successCriteria: ["데드리프트 자세가 정확한가요?", "100kg 이상 가능한가요?", "허리 보호를 신경쓰나요?"]),
            Milestone(title: "150kg 달성", description: "중급 단계", successCriteria: ["150kg 3세트 가능한가요?", "그립 강화 훈련을 하나요?", "허리 부상이 없나요?"]),
            Milestone(title: "200kg 달성", description: "목표 완료", successCriteria: ["200kg 1RM에 성공했나요?", "스트랩 없이 가능한가요?", "다음 목표를 세웠나요?"])
        ],
        .벤치프레스_150kg하기: [
            Milestone(title: "100kg 달성", description: "기초 완성", successCriteria: ["100kg 3세트 가능한가요?", "어깨 건강을 유지하나요?", "점진적 증량을 하나요?"]),
            Milestone(title: "125kg 달성", description: "중급 단계", successCriteria: ["125kg 3세트 가능한가요?", "보조 운동을 병행하나요?", "충분한 휴식을 취하나요?"]),
            Milestone(title: "150kg 달성", description: "목표 완료", successCriteria: ["150kg 1RM에 성공했나요?", "부상 없이 달성했나요?", "유지 훈련을 계획했나요?"])
        ],
        .풀업_50개하기: [
            Milestone(title: "20개 달성", description: "기초 단계", successCriteria: ["연속 20개가 가능한가요?", "올바른 자세로 하나요?", "가동 범위가 충분한가요?"]),
            Milestone(title: "35개 달성", description: "중급 단계", successCriteria: ["연속 35개가 가능한가요?", "다양한 그립을 연습하나요?", "지구력이 향상됐나요?"]),
            Milestone(title: "50개 달성", description: "목표 완료", successCriteria: ["연속 50개에 성공했나요?", "시간을 측정했나요?", "지속적으로 유지 가능한가요?"])
        ],
        .푸시업_100개_연속하기: [
            Milestone(title: "30개 달성", description: "기초 단계", successCriteria: ["연속 30개가 가능한가요?", "자세가 정확한가요?", "매일 연습하나요?"]),
            Milestone(title: "60개 달성", description: "중급 단계", successCriteria: ["연속 60개가 가능한가요?", "지구력이 향상됐나요?", "속도를 유지하나요?"]),
            Milestone(title: "100개 달성", description: "목표 완료", successCriteria: ["연속 100개에 성공했나요?", "시간을 측정했나요?", "기록을 인증했나요?"])
        ],
        .플랭크_30분하기: [
            Milestone(title: "5분 달성", description: "기초 단계", successCriteria: ["5분 플랭크가 가능한가요?", "자세가 흐트러지지 않나요?", "매일 연습하나요?"]),
            Milestone(title: "15분 달성", description: "중급 단계", successCriteria: ["15분 플랭크가 가능한가요?", "정신력 훈련을 하나요?", "호흡을 유지하나요?"]),
            Milestone(title: "30분 달성", description: "목표 완료", successCriteria: ["30분 플랭크에 성공했나요?", "자세를 유지했나요?", "기록을 인증했나요?"])
        ],
        .버피_100개하기: [
            Milestone(title: "30개 달성", description: "기초 단계", successCriteria: ["버피 자세가 정확한가요?", "30개를 완료할 수 있나요?", "지구력 훈련을 하나요?"]),
            Milestone(title: "60개 달성", description: "중급 단계", successCriteria: ["60개를 완료할 수 있나요?", "페이스 조절이 되나요?", "휴식 시간을 관리하나요?"]),
            Milestone(title: "100개 달성", description: "목표 완료", successCriteria: ["100개를 완료했나요?", "시간을 측정했나요?", "다음 목표를 세웠나요?"])
        ],
        .에어_스쿼트_500개하기: [
            Milestone(title: "100개 달성", description: "기초 단계", successCriteria: ["연속 100개가 가능한가요?", "자세가 정확한가요?", "무릎에 무리가 없나요?"]),
            Milestone(title: "300개 달성", description: "중급 단계", successCriteria: ["300개를 완료할 수 있나요?", "페이스 조절을 하나요?", "세트로 나눠서 하나요?"]),
            Milestone(title: "500개 달성", description: "목표 완료", successCriteria: ["500개를 완료했나요?", "시간을 측정했나요?", "기록을 인증했나요?"])
        ],
        .유연성_향상하기: [
            Milestone(title: "스트레칭 시작", description: "매일 10분", successCriteria: ["매일 스트레칭을 하나요?", "기본 스트레칭을 알고 있나요?", "유연성 측정을 했나요?"]),
            Milestone(title: "중간 단계", description: "발목 터치", successCriteria: ["서서 발끝을 터치할 수 있나요?", "요가/필라테스를 병행하나요?", "관절 가동 범위가 늘었나요?"]),
            Milestone(title: "목표 달성", description: "분할 자세", successCriteria: ["앉아서 발끝을 잡을 수 있나요?", "유연성이 확연히 향상됐나요?", "유지 루틴을 만들었나요?"])
        ],
        .일자_다리_만들기: [
            Milestone(title: "스트레칭 시작", description: "다리 스트레칭", successCriteria: ["다리 스트레칭을 시작했나요?", "햄스트링을 늘리고 있나요?", "매일 연습하나요?"]),
            Milestone(title: "중간 단계", description: "120도 이상", successCriteria: ["다리를 120도 이상 벌릴 수 있나요?", "고관절 스트레칭을 하나요?", "통증 없이 할 수 있나요?"]),
            Milestone(title: "일자 다리", description: "180도 달성", successCriteria: ["일자 다리가 가능한가요?", "좌우 균형이 맞나요?", "유지할 수 있나요?"])
        ],
        .거북목_교정하기: [
            Milestone(title: "진단", description: "현재 상태 파악", successCriteria: ["거북목 정도를 확인했나요?", "전문가 상담을 받았나요?", "교정 운동을 배웠나요?"]),
            Milestone(title: "교정 운동", description: "매일 실천", successCriteria: ["교정 운동을 매일 하나요?", "자세를 신경쓰나요?", "모니터 높이를 조절했나요?"]),
            Milestone(title: "교정 완료", description: "정상 자세", successCriteria: ["거북목이 개선됐나요?", "통증이 줄었나요?", "좋은 자세가 습관이 됐나요?"])
        ],
        .골반_교정하기: [
            Milestone(title: "진단", description: "골반 상태 확인", successCriteria: ["골반 틀어짐을 확인했나요?", "전문가 진단을 받았나요?", "원인을 파악했나요?"]),
            Milestone(title: "교정 치료", description: "운동/치료", successCriteria: ["교정 운동을 하고 있나요?", "정기적으로 치료받나요?", "일상 자세를 개선했나요?"]),
            Milestone(title: "교정 완료", description: "균형 회복", successCriteria: ["골반이 교정됐나요?", "통증이 없어졌나요?", "유지 운동을 하나요?"])
        ],
        .자세_교정하기: [
            Milestone(title: "현재 자세 파악", description: "문제점 확인", successCriteria: ["자세 분석을 받았나요?", "문제 부위를 알고 있나요?", "교정 방법을 배웠나요?"]),
            Milestone(title: "교정 실천", description: "일상 속 교정", successCriteria: ["의식적으로 자세를 바르게 하나요?", "교정 기구를 사용하나요?", "운동을 병행하나요?"]),
            Milestone(title: "바른 자세 습관", description: "자연스러운 유지", successCriteria: ["바른 자세가 습관이 됐나요?", "주변에서 변화를 알아챘나요?", "통증이 줄었나요?"])
        ],
        .척추_건강하기: [
            Milestone(title: "검진", description: "척추 상태 확인", successCriteria: ["척추 검진을 받았나요?", "문제점을 파악했나요?", "관리 방법을 배웠나요?"]),
            Milestone(title: "강화 운동", description: "코어 강화", successCriteria: ["코어 운동을 하고 있나요?", "자세를 개선했나요?", "무거운 물건을 바르게 드나요?"]),
            Milestone(title: "건강 유지", description: "통증 없는 삶", successCriteria: ["척추 통증이 없나요?", "건강한 습관을 유지하나요?", "정기 검진을 받나요?"])
        ],
        .관절_건강하기: [
            Milestone(title: "현황 파악", description: "관절 상태 확인", successCriteria: ["관절 검진을 받았나요?", "통증 부위를 파악했나요?", "관리 방법을 알고 있나요?"]),
            Milestone(title: "관리 시작", description: "영양제/운동", successCriteria: ["관절 영양제를 먹고 있나요?", "관절에 좋은 운동을 하나요?", "무리한 운동을 피하나요?"]),
            Milestone(title: "건강 유지", description: "통증 없는 관절", successCriteria: ["관절 통증이 없나요?", "유연성이 유지되나요?", "정기적으로 관리하나요?"])
        ],
        .혈압_정상화하기: [
            Milestone(title: "현재 상태", description: "혈압 측정", successCriteria: ["정기적으로 혈압을 측정하나요?", "현재 혈압 수치를 알고 있나요?", "의사 상담을 받았나요?"]),
            Milestone(title: "생활 개선", description: "식단/운동", successCriteria: ["저염식을 하고 있나요?", "유산소 운동을 하나요?", "체중 관리를 하나요?"]),
            Milestone(title: "정상화", description: "정상 혈압", successCriteria: ["혈압이 정상 범위인가요?", "약 없이 유지되나요?", "생활 습관을 유지하나요?"])
        ],
        .콜레스테롤_정상화하기: [
            Milestone(title: "검사", description: "수치 확인", successCriteria: ["콜레스테롤 검사를 했나요?", "LDL/HDL 수치를 알고 있나요?", "의사 상담을 받았나요?"]),
            Milestone(title: "식단 개선", description: "저지방 식단", successCriteria: ["포화지방을 줄였나요?", "섬유질을 늘렸나요?", "오메가3를 섭취하나요?"]),
            Milestone(title: "정상화", description: "정상 수치", successCriteria: ["콜레스테롤이 정상인가요?", "식단을 유지하나요?", "정기 검사를 받나요?"])
        ],
        .혈당_정상화하기: [
            Milestone(title: "검사", description: "혈당 측정", successCriteria: ["공복 혈당을 측정했나요?", "당화혈색소를 알고 있나요?", "당뇨 위험을 확인했나요?"]),
            Milestone(title: "관리 시작", description: "식단/운동", successCriteria: ["탄수화물을 조절하나요?", "운동을 시작했나요?", "체중을 관리하나요?"]),
            Milestone(title: "정상화", description: "정상 혈당", successCriteria: ["혈당이 정상 범위인가요?", "식후 혈당도 정상인가요?", "건강한 습관을 유지하나요?"])
        ],
        .간_수치_정상화하기: [
            Milestone(title: "검사", description: "간 기능 검사", successCriteria: ["간 수치를 측정했나요?", "AST/ALT를 알고 있나요?", "원인을 파악했나요?"]),
            Milestone(title: "생활 개선", description: "금주/식단", successCriteria: ["음주를 줄였나요?", "건강한 식단을 유지하나요?", "적정 체중을 유지하나요?"]),
            Milestone(title: "정상화", description: "정상 간 수치", successCriteria: ["간 수치가 정상인가요?", "피로감이 줄었나요?", "정기 검사를 받나요?"])
        ],
        .신장_건강하기: [
            Milestone(title: "검사", description: "신장 기능 검사", successCriteria: ["신장 검사를 받았나요?", "크레아티닌 수치를 알고 있나요?", "위험 요인을 파악했나요?"]),
            Milestone(title: "관리", description: "수분/염분", successCriteria: ["충분한 수분을 섭취하나요?", "저염식을 하나요?", "단백질 섭취를 조절하나요?"]),
            Milestone(title: "건강 유지", description: "정상 기능", successCriteria: ["신장 기능이 정상인가요?", "부종이 없나요?", "정기 검사를 받나요?"])
        ],
        .당뇨_예방하기: [
            Milestone(title: "위험도 확인", description: "검사 및 가족력", successCriteria: ["당뇨 위험도를 확인했나요?", "가족력이 있나요?", "공복 혈당을 측정했나요?"]),
            Milestone(title: "예방 생활", description: "식단/운동", successCriteria: ["정제 탄수화물을 줄였나요?", "규칙적으로 운동하나요?", "적정 체중을 유지하나요?"]),
            Milestone(title: "건강 유지", description: "정상 혈당", successCriteria: ["혈당이 정상인가요?", "건강한 생활을 유지하나요?", "정기 검진을 받나요?"])
        ],
        .고혈압_예방하기: [
            Milestone(title: "위험도 확인", description: "혈압 측정", successCriteria: ["현재 혈압을 알고 있나요?", "고혈압 위험 요인이 있나요?", "가족력을 확인했나요?"]),
            Milestone(title: "예방 생활", description: "저염/운동", successCriteria: ["소금 섭취를 줄였나요?", "규칙적으로 운동하나요?", "스트레스를 관리하나요?"]),
            Milestone(title: "건강 유지", description: "정상 혈압", successCriteria: ["혈압이 정상인가요?", "건강한 습관을 유지하나요?", "정기적으로 측정하나요?"])
        ],
        .심장병_예방하기: [
            Milestone(title: "위험도 평가", description: "심장 검진", successCriteria: ["심장 검진을 받았나요?", "위험 요인을 파악했나요?", "콜레스테롤을 확인했나요?"]),
            Milestone(title: "예방 실천", description: "생활 개선", successCriteria: ["금연을 했나요?", "건강한 식단을 유지하나요?", "유산소 운동을 하나요?"]),
            Milestone(title: "심장 건강", description: "위험 감소", successCriteria: ["심장 건강이 좋아졌나요?", "위험 요인이 줄었나요?", "정기 검진을 받나요?"])
        ],
        .뇌졸중_예방하기: [
            Milestone(title: "위험도 확인", description: "혈관 검진", successCriteria: ["혈관 검진을 받았나요?", "혈압/혈당을 관리하나요?", "위험 요인을 알고 있나요?"]),
            Milestone(title: "예방 생활", description: "건강 관리", successCriteria: ["고혈압을 관리하나요?", "금연/절주를 하나요?", "건강한 식단을 유지하나요?"]),
            Milestone(title: "건강 유지", description: "위험 감소", successCriteria: ["혈관 건강이 좋아졌나요?", "위험 요인이 줄었나요?", "정기 검진을 받나요?"])
        ],
        .암_검진하기: [
            Milestone(title: "검진 계획", description: "필요한 검진 확인", successCriteria: ["필요한 암 검진 항목을 알고 있나요?", "국가 암 검진 대상인지 확인했나요?", "검진 주기를 알고 있나요?"]),
            Milestone(title: "검진 실시", description: "암 검진 받기", successCriteria: ["암 검진을 예약했나요?", "검진을 완료했나요?", "결과를 확인했나요?"]),
            Milestone(title: "정기 검진", description: "꾸준한 관리", successCriteria: ["정기적으로 검진을 받나요?", "이상 소견이 없나요?", "건강한 생활을 유지하나요?"])
        ],
        .금주_100일하기: [
            Milestone(title: "시작", description: "금주 결심", successCriteria: ["금주 시작일을 정했나요?", "주변에 알렸나요?", "대체 음료를 준비했나요?"]),
            Milestone(title: "30일 달성", description: "첫 한 달", successCriteria: ["30일 금주에 성공했나요?", "술자리를 피하고 있나요?", "스트레스 해소법을 찾았나요?"]),
            Milestone(title: "100일 달성", description: "목표 완료", successCriteria: ["100일 금주에 성공했나요?", "건강이 좋아졌나요?", "금주를 유지할 계획인가요?"])
        ],
        .금주_1년하기: [
            Milestone(title: "시작", description: "금주 결심", successCriteria: ["금주를 결심했나요?", "장기 계획을 세웠나요?", "지지 그룹을 만들었나요?"]),
            Milestone(title: "6개월 달성", description: "중간 목표", successCriteria: ["6개월 금주에 성공했나요?", "술 없이도 즐거운가요?", "건강 개선을 느끼나요?"]),
            Milestone(title: "1년 달성", description: "목표 완료", successCriteria: ["1년 금주에 성공했나요?", "삶의 질이 향상됐나요?", "금주를 계속할 계획인가요?"])
        ],
        .금연_100일하기: [
            Milestone(title: "준비", description: "금연 계획", successCriteria: ["금연 시작일을 정했나요?", "보조제를 준비했나요?", "금연 앱을 설치했나요?"]),
            Milestone(title: "30일 달성", description: "첫 한 달", successCriteria: ["30일 금연에 성공했나요?", "금단 증상을 극복했나요?", "대체 습관을 만들었나요?"]),
            Milestone(title: "100일 달성", description: "목표 완료", successCriteria: ["100일 금연에 성공했나요?", "흡연 욕구가 줄었나요?", "비흡연자로 살 자신이 있나요?"])
        ],
        .금연_5년하기: [
            Milestone(title: "1년 달성", description: "첫 해", successCriteria: ["1년 금연에 성공했나요?", "폐 기능이 개선됐나요?", "흡연 욕구가 거의 없나요?"]),
            Milestone(title: "3년 달성", description: "중간 목표", successCriteria: ["3년 금연을 유지했나요?", "건강 검진 결과가 좋아졌나요?", "완전한 비흡연자가 됐나요?"]),
            Milestone(title: "5년 달성", description: "목표 완료", successCriteria: ["5년 금연에 성공했나요?", "심혈관 질환 위험이 감소했나요?", "금연의 가치를 알게 됐나요?"])
        ],
        .카페인_디톡스하기: [
            Milestone(title: "감량 시작", description: "점진적 감량", successCriteria: ["현재 카페인 섭취량을 알고 있나요?", "하루 1잔씩 줄이고 있나요?", "디카페인으로 대체하나요?"]),
            Milestone(title: "금단 극복", description: "두통/피로 극복", successCriteria: ["금단 증상을 견디고 있나요?", "물을 충분히 마시나요?", "충분히 수면하나요?"]),
            Milestone(title: "디톡스 완료", description: "카페인 제로", successCriteria: ["카페인 없이 생활하나요?", "피로감이 줄었나요?", "수면의 질이 좋아졌나요?"])
        ],
        .설탕_디톡스하기: [
            Milestone(title: "설탕 인식", description: "숨은 설탕 찾기", successCriteria: ["가공식품 설탕을 확인하나요?", "첨가당 섭취량을 알고 있나요?", "설탕 대체제를 알아봤나요?"]),
            Milestone(title: "감량", description: "점진적 감량", successCriteria: ["단 음식을 줄이고 있나요?", "과일로 대체하나요?", "음료수를 끊었나요?"]),
            Milestone(title: "디톡스 완료", description: "설탕 최소화", successCriteria: ["첨가당을 거의 먹지 않나요?", "단맛 의존도가 줄었나요?", "건강이 좋아졌나요?"])
        ],
        .가공식품_끊기: [
            Milestone(title: "인식", description: "가공식품 파악", successCriteria: ["먹는 가공식품을 알고 있나요?", "성분표를 읽을 줄 아나요?", "건강한 대안을 알고 있나요?"]),
            Milestone(title: "감량", description: "점진적 제거", successCriteria: ["가공식품을 줄이고 있나요?", "홀푸드를 늘렸나요?", "직접 요리를 하나요?"]),
            Milestone(title: "완료", description: "가공식품 제로", successCriteria: ["가공식품을 거의 먹지 않나요?", "요리 실력이 늘었나요?", "건강이 좋아졌나요?"])
        ],
        .유기농_식단_관리하기: [
            Milestone(title: "시작", description: "유기농 식품 구매", successCriteria: ["유기농 마트를 알고 있나요?", "유기농 인증을 확인하나요?", "주요 식품을 유기농으로 바꿨나요?"]),
            Milestone(title: "확대", description: "더 많은 유기농", successCriteria: ["식단 대부분이 유기농인가요?", "유기농 농장을 알아봤나요?", "예산을 조정했나요?"]),
            Milestone(title: "완료", description: "유기농 생활", successCriteria: ["거의 모든 식품이 유기농인가요?", "건강 변화를 느끼나요?", "지속 가능한가요?"])
        ],
        .지중해식_식단_관리하기: [
            Milestone(title: "이해", description: "지중해 식단 학습", successCriteria: ["지중해 식단 원칙을 알고 있나요?", "올리브 오일을 사용하나요?", "생선 섭취를 늘렸나요?"]),
            Milestone(title: "실천", description: "식단 전환", successCriteria: ["붉은 고기를 줄였나요?", "통곡물을 먹나요?", "채소/과일을 충분히 먹나요?"]),
            Milestone(title: "정착", description: "습관화", successCriteria: ["지중해 식단이 습관이 됐나요?", "건강이 좋아졌나요?", "레시피를 많이 알게 됐나요?"])
        ],
        .케토_식단_관리하기: [
            Milestone(title: "준비", description: "케토 학습", successCriteria: ["케토 식단 원리를 알고 있나요?", "탄수화물 제한을 이해했나요?", "케토 식품을 준비했나요?"]),
            Milestone(title: "적응", description: "케토 플루 극복", successCriteria: ["케토시스 상태에 들어갔나요?", "케토 플루를 극복했나요?", "에너지가 돌아왔나요?"]),
            Milestone(title: "유지", description: "케토 생활", successCriteria: ["케토 식단을 유지하나요?", "체중 변화가 있나요?", "장기적으로 지속 가능한가요?"])
        ],
        .간헐적_단식하기: [
            Milestone(title: "시작", description: "16:8 단식", successCriteria: ["단식 방법을 선택했나요?", "식사 시간을 정했나요?", "16시간 공복이 가능한가요?"]),
            Milestone(title: "적응", description: "습관화", successCriteria: ["배고픔에 적응했나요?", "에너지 레벨이 안정됐나요?", "집중력이 향상됐나요?"]),
            Milestone(title: "유지", description: "라이프스타일", successCriteria: ["간헐적 단식이 습관이 됐나요?", "건강 효과를 느끼나요?", "지속할 계획인가요?"])
        ],
        .하루_2L_물_마시기: [
            Milestone(title: "측정 시작", description: "현재 섭취량 파악", successCriteria: ["하루 물 섭취량을 측정하나요?", "물병을 준비했나요?", "알람을 설정했나요?"]),
            Milestone(title: "1.5L 달성", description: "중간 목표", successCriteria: ["1.5L를 마시고 있나요?", "물 마시기가 습관이 되고 있나요?", "화장실이 자주 가나요?"]),
            Milestone(title: "2L 달성", description: "목표 완료", successCriteria: ["매일 2L를 마시나요?", "피부가 좋아졌나요?", "습관으로 정착됐나요?"])
        ],
        .채소_500g_먹기: [
            Milestone(title: "현황 파악", description: "현재 섭취량", successCriteria: ["현재 채소 섭취량을 알고 있나요?", "채소 종류를 다양하게 먹나요?", "200g 이상 먹고 있나요?"]),
            Milestone(title: "증량", description: "400g 달성", successCriteria: ["400g을 먹고 있나요?", "매 끼니에 채소를 먹나요?", "샐러드를 즐기나요?"]),
            Milestone(title: "500g 달성", description: "목표 완료", successCriteria: ["매일 500g을 먹나요?", "채소 요리 레시피가 늘었나요?", "습관이 됐나요?"])
        ],
        .과일_200g_먹기: [
            Milestone(title: "시작", description: "매일 과일 먹기", successCriteria: ["매일 과일을 먹나요?", "다양한 과일을 먹나요?", "제철 과일을 알고 있나요?"]),
            Milestone(title: "증량", description: "150g 달성", successCriteria: ["150g을 먹고 있나요?", "간식으로 과일을 먹나요?", "과일 주스는 제외하나요?"]),
            Milestone(title: "200g 달성", description: "목표 완료", successCriteria: ["매일 200g을 먹나요?", "당분이 많은 과일은 조절하나요?", "습관이 됐나요?"])
        ],
        .견과류_섭취하기: [
            Milestone(title: "시작", description: "견과류 구비", successCriteria: ["견과류를 구입했나요?", "하루 권장량을 알고 있나요?", "무염 견과류를 선택했나요?"]),
            Milestone(title: "습관화", description: "매일 섭취", successCriteria: ["매일 견과류를 먹나요?", "적정량(30g)을 지키나요?", "간식으로 대체했나요?"]),
            Milestone(title: "정착", description: "건강한 간식", successCriteria: ["견과류가 습관이 됐나요?", "다양한 종류를 먹나요?", "건강 효과를 느끼나요?"])
        ],
        .프로바이오틱스_섭취하기: [
            Milestone(title: "제품 선택", description: "프로바이오틱스 구매", successCriteria: ["좋은 제품을 선택했나요?", "균주와 함량을 확인했나요?", "복용 방법을 알고 있나요?"]),
            Milestone(title: "복용 시작", description: "매일 복용", successCriteria: ["매일 복용하고 있나요?", "장 건강 변화를 느끼나요?", "부작용은 없나요?"]),
            Milestone(title: "장 건강", description: "개선 확인", successCriteria: ["장 건강이 좋아졌나요?", "면역력이 향상됐나요?", "지속적으로 복용하나요?"])
        ],
        .비타민_D_보충하기: [
            Milestone(title: "검사", description: "비타민 D 수치 확인", successCriteria: ["혈액 검사를 했나요?", "현재 수치를 알고 있나요?", "결핍인지 확인했나요?"]),
            Milestone(title: "보충 시작", description: "영양제 복용", successCriteria: ["영양제를 구입했나요?", "매일 복용하나요?", "햇빛을 쬐나요?"]),
            Milestone(title: "정상화", description: "적정 수치", successCriteria: ["수치가 정상화됐나요?", "피로감이 줄었나요?", "지속적으로 관리하나요?"])
        ],
        .오메가3_보충하기: [
            Milestone(title: "제품 선택", description: "오메가3 구매", successCriteria: ["품질 좋은 제품을 선택했나요?", "EPA/DHA 함량을 확인했나요?", "생선 섭취도 늘리나요?"]),
            Milestone(title: "복용 시작", description: "매일 복용", successCriteria: ["매일 복용하고 있나요?", "식후에 복용하나요?", "비린내가 나지 않나요?"]),
            Milestone(title: "건강 효과", description: "개선 확인", successCriteria: ["건강이 좋아졌나요?", "염증이 줄었나요?", "지속적으로 복용하나요?"])
        ],
        .단백질_체중x2g_섭취하기: [
            Milestone(title: "계산", description: "필요량 파악", successCriteria: ["체중 기준 필요량을 알고 있나요?", "현재 섭취량을 측정했나요?", "단백질 식품을 알고 있나요?"]),
            Milestone(title: "증량", description: "섭취량 늘리기", successCriteria: ["단백질 섭취를 늘렸나요?", "단백질 보충제를 사용하나요?", "매 끼니 단백질을 먹나요?"]),
            Milestone(title: "목표 달성", description: "체중x2g", successCriteria: ["목표량을 섭취하나요?", "근육량이 증가했나요?", "습관으로 정착됐나요?"])
        ],
        .아침_식사_챙기기: [
            Milestone(title: "시작", description: "아침 먹기", successCriteria: ["아침에 일찍 일어나나요?", "간단한 아침을 준비하나요?", "시간을 확보했나요?"]),
            Milestone(title: "습관화", description: "매일 아침", successCriteria: ["매일 아침을 먹나요?", "균형 잡힌 아침인가요?", "에너지가 좋아졌나요?"]),
            Milestone(title: "정착", description: "건강한 아침", successCriteria: ["아침 식사가 습관이 됐나요?", "집중력이 향상됐나요?", "건강이 좋아졌나요?"])
        ],
        .규칙적인_식사하기: [
            Milestone(title: "시간 설정", description: "식사 시간 정하기", successCriteria: ["식사 시간을 정했나요?", "하루 3끼를 먹나요?", "규칙적인 간격인가요?"]),
            Milestone(title: "실천", description: "시간 지키기", successCriteria: ["정해진 시간에 먹나요?", "굶는 끼니가 없나요?", "야식을 피하나요?"]),
            Milestone(title: "정착", description: "습관화", successCriteria: ["규칙적인 식사가 습관이 됐나요?", "소화가 좋아졌나요?", "에너지가 안정됐나요?"])
        ],
        .과식_줄이기: [
            Milestone(title: "인식", description: "과식 패턴 파악", successCriteria: ["과식 원인을 알고 있나요?", "포만감을 느끼나요?", "천천히 먹나요?"]),
            Milestone(title: "실천", description: "적정량 먹기", successCriteria: ["적정량만 먹나요?", "작은 그릇을 사용하나요?", "배고플 때만 먹나요?"]),
            Milestone(title: "습관화", description: "적정 식사량", successCriteria: ["과식을 하지 않나요?", "식후 더부룩함이 없나요?", "체중 관리가 되나요?"])
        ],
        .야식_끊기: [
            Milestone(title: "인식", description: "야식 습관 파악", successCriteria: ["야식을 얼마나 자주 먹나요?", "원인을 파악했나요?", "대안을 찾았나요?"]),
            Milestone(title: "감량", description: "야식 줄이기", successCriteria: ["야식 빈도를 줄였나요?", "저녁 식사를 충분히 하나요?", "배고프면 물을 마시나요?"]),
            Milestone(title: "완료", description: "야식 제로", successCriteria: ["야식을 먹지 않나요?", "수면의 질이 좋아졌나요?", "체중이 줄었나요?"])
        ],
        .배달_음식_줄이기: [
            Milestone(title: "현황 파악", description: "배달 빈도 확인", successCriteria: ["한 달 배달 횟수를 알고 있나요?", "주로 시키는 음식을 알고 있나요?", "비용을 계산해봤나요?"]),
            Milestone(title: "감량", description: "횟수 줄이기", successCriteria: ["배달 횟수를 반으로 줄였나요?", "직접 요리를 하나요?", "건강한 배달 옵션을 선택하나요?"]),
            Milestone(title: "최소화", description: "월 2회 이하", successCriteria: ["배달을 거의 시키지 않나요?", "요리 실력이 늘었나요?", "건강과 비용 모두 절약했나요?"])
        ],
        .집밥_먹기: [
            Milestone(title: "시작", description: "요리 시작", successCriteria: ["기본 요리를 할 줄 아나요?", "장을 직접 보나요?", "주 3회 이상 집밥을 먹나요?"]),
            Milestone(title: "늘리기", description: "주 5회 이상", successCriteria: ["주 5회 이상 집밥을 먹나요?", "레시피가 다양해졌나요?", "도시락을 싸나요?"]),
            Milestone(title: "정착", description: "집밥 생활", successCriteria: ["거의 매일 집밥을 먹나요?", "외식이 오히려 불편한가요?", "건강이 좋아졌나요?"])
        ],
        .요리_실력_향상하기: [
            Milestone(title: "기초", description: "기본 요리 배우기", successCriteria: ["기본 요리 10가지를 할 줄 아나요?", "칼질이 능숙한가요?", "요리책/영상을 보나요?"]),
            Milestone(title: "중급", description: "다양한 요리", successCriteria: ["다양한 요리를 할 수 있나요?", "레시피 없이 요리 가능한가요?", "손님 요리를 할 수 있나요?"]),
            Milestone(title: "고급", description: "요리 마스터", successCriteria: ["어떤 요리든 도전할 수 있나요?", "자신만의 레시피가 있나요?", "요리가 즐거운가요?"])
        ],
        .도시락_싸기: [
            Milestone(title: "시작", description: "도시락 준비", successCriteria: ["도시락통을 구입했나요?", "간단한 도시락을 싸나요?", "주 1-2회 싸나요?"]),
            Milestone(title: "늘리기", description: "주 3회 이상", successCriteria: ["주 3회 이상 도시락을 싸나요?", "메뉴가 다양한가요?", "전날 밤에 준비하나요?"]),
            Milestone(title: "정착", description: "매일 도시락", successCriteria: ["거의 매일 도시락을 싸나요?", "비용 절약이 됐나요?", "건강해졌나요?"])
        ],
        .일찍_자기: [
            Milestone(title: "목표 설정", description: "취침 시간 정하기", successCriteria: ["목표 취침 시간을 정했나요?", "현재 취침 시간을 알고 있나요?", "30분씩 앞당기나요?"]),
            Milestone(title: "루틴 만들기", description: "수면 루틴", successCriteria: ["취침 전 루틴이 있나요?", "스마트폰을 멀리 두나요?", "침실을 어둡게 하나요?"]),
            Milestone(title: "습관화", description: "일찍 자기", successCriteria: ["목표 시간에 잠드나요?", "아침에 상쾌하게 일어나나요?", "습관이 됐나요?"])
        ],
        ._7시간_수면하기: [
            Milestone(title: "측정", description: "현재 수면 시간", successCriteria: ["현재 수면 시간을 알고 있나요?", "수면 트래킹을 하나요?", "7시간 이하인가요?"]),
            Milestone(title: "조정", description: "수면 시간 늘리기", successCriteria: ["취침 시간을 앞당겼나요?", "기상 시간을 조정했나요?", "6시간 이상 자나요?"]),
            Milestone(title: "달성", description: "7시간 수면", successCriteria: ["매일 7시간을 자나요?", "피로감이 줄었나요?", "습관이 됐나요?"])
        ],
        ._8시간_수면하기: [
            Milestone(title: "측정", description: "현재 수면 시간", successCriteria: ["현재 수면 시간을 알고 있나요?", "수면 트래킹을 하나요?", "8시간 이하인가요?"]),
            Milestone(title: "조정", description: "수면 시간 확보", successCriteria: ["일정을 조정했나요?", "취침 시간을 앞당겼나요?", "7시간 이상 자나요?"]),
            Milestone(title: "달성", description: "8시간 수면", successCriteria: ["매일 8시간을 자나요?", "건강이 좋아졌나요?", "습관이 됐나요?"])
        ],
        .불면증_치료하기: [
            Milestone(title: "진단", description: "원인 파악", successCriteria: ["불면증 원인을 알고 있나요?", "의사 상담을 받았나요?", "수면 일지를 쓰나요?"]),
            Milestone(title: "치료", description: "치료 시작", successCriteria: ["수면 위생을 개선했나요?", "필요시 약물 치료를 하나요?", "인지행동치료를 받나요?"]),
            Milestone(title: "회복", description: "정상 수면", successCriteria: ["잠들기가 쉬워졌나요?", "중간에 깨지 않나요?", "약 없이 잠드나요?"])
        ],
        .수면의_질_개선하기: [
            Milestone(title: "현황 파악", description: "수면 질 측정", successCriteria: ["수면 트래커를 사용하나요?", "깊은 잠 비율을 알고 있나요?", "아침 컨디션을 체크하나요?"]),
            Milestone(title: "환경 개선", description: "수면 환경", successCriteria: ["침실을 어둡게 했나요?", "적정 온도를 유지하나요?", "소음을 차단했나요?"]),
            Milestone(title: "질 향상", description: "깊은 수면", successCriteria: ["깊은 잠 비율이 늘었나요?", "아침에 상쾌한가요?", "수면 만족도가 높아졌나요?"])
        ],
        .아침형_인간_되기: [
            Milestone(title: "기상 시간 조정", description: "15분씩 앞당기기", successCriteria: ["현재 기상 시간을 알고 있나요?", "15분씩 앞당기고 있나요?", "일찍 잠드나요?"]),
            Milestone(title: "아침 루틴", description: "생산적인 아침", successCriteria: ["아침 루틴이 있나요?", "운동/독서 등을 하나요?", "아침이 즐거운가요?"]),
            Milestone(title: "습관화", description: "아침형 생활", successCriteria: ["원하는 시간에 일어나나요?", "주말에도 유지하나요?", "에너지가 좋아졌나요?"])
        ],
        .새벽_5시_기상하기: [
            Milestone(title: "준비", description: "수면 시간 조정", successCriteria: ["일찍 잠자리에 드나요?", "알람을 설정했나요?", "6시 기상부터 시작했나요?"]),
            Milestone(title: "적응", description: "5시 30분 기상", successCriteria: ["5시 30분에 일어나나요?", "아침 루틴이 있나요?", "피로감을 느끼지 않나요?"]),
            Milestone(title: "5시 달성", description: "새벽 5시", successCriteria: ["매일 5시에 일어나나요?", "생산적인 아침인가요?", "습관이 됐나요?"])
        ],
        .규칙적인_수면하기: [
            Milestone(title: "시간 설정", description: "취침/기상 시간", successCriteria: ["고정된 취침 시간이 있나요?", "고정된 기상 시간이 있나요?", "주말에도 유지하나요?"]),
            Milestone(title: "실천", description: "매일 지키기", successCriteria: ["정해진 시간에 자나요?", "알람 없이 일어나나요?", "1주일 이상 유지했나요?"]),
            Milestone(title: "습관화", description: "생체 리듬", successCriteria: ["생체 리듬이 정착됐나요?", "자연스럽게 잠들고 깨나요?", "컨디션이 좋아졌나요?"])
        ],
        .낮잠_줄이기: [
            Milestone(title: "현황 파악", description: "낮잠 패턴", successCriteria: ["낮잠 빈도를 알고 있나요?", "낮잠 원인을 파악했나요?", "밤 수면에 영향이 있나요?"]),
            Milestone(title: "감량", description: "낮잠 시간 줄이기", successCriteria: ["낮잠을 20분 이하로 줄였나요?", "커피 대신 산책을 하나요?", "낮 졸음을 이겨내나요?"]),
            Milestone(title: "제거", description: "낮잠 안 자기", successCriteria: ["낮잠을 자지 않나요?", "밤 수면이 좋아졌나요?", "낮에 활력이 있나요?"])
        ],
        .스트레스_관리하기: [
            Milestone(title: "인식", description: "스트레스 원인 파악", successCriteria: ["스트레스 원인을 알고 있나요?", "스트레스 수준을 측정했나요?", "대처 방법을 알고 있나요?"]),
            Milestone(title: "실천", description: "관리 방법 적용", successCriteria: ["명상/운동을 하나요?", "취미 활동이 있나요?", "휴식을 취하나요?"]),
            Milestone(title: "습관화", description: "건강한 스트레스 관리", successCriteria: ["스트레스가 줄었나요?", "스트레스 대처가 능숙한가요?", "삶의 질이 향상됐나요?"])
        ],
        .분노_조절_가기: [
            Milestone(title: "인식", description: "분노 패턴 파악", successCriteria: ["분노 트리거를 알고 있나요?", "분노 반응을 인식하나요?", "문제점을 인정하나요?"]),
            Milestone(title: "기법 학습", description: "조절 방법", successCriteria: ["심호흡을 연습하나요?", "타임아웃을 실천하나요?", "전문가 도움을 받나요?"]),
            Milestone(title: "조절", description: "분노 관리", successCriteria: ["분노를 조절할 수 있나요?", "관계가 개선됐나요?", "평화로운 삶인가요?"])
        ],
        .우울증_극복하기: [
            Milestone(title: "인식", description: "증상 파악", successCriteria: ["우울증 증상을 알고 있나요?", "전문가 진단을 받았나요?", "도움을 요청했나요?"]),
            Milestone(title: "치료", description: "전문 치료", successCriteria: ["상담/치료를 받고 있나요?", "필요시 약물 치료를 하나요?", "생활 습관을 개선했나요?"]),
            Milestone(title: "회복", description: "우울증 극복", successCriteria: ["증상이 호전됐나요?", "일상이 회복됐나요?", "재발 예방을 하나요?"])
        ],
        .불안_장애_치료하기: [
            Milestone(title: "진단", description: "전문가 상담", successCriteria: ["불안 장애를 인식했나요?", "전문가 진단을 받았나요?", "치료 계획을 세웠나요?"]),
            Milestone(title: "치료", description: "치료 진행", successCriteria: ["인지행동치료를 받나요?", "이완 기법을 연습하나요?", "필요시 약물 치료를 하나요?"]),
            Milestone(title: "회복", description: "증상 개선", successCriteria: ["불안이 줄었나요?", "일상 기능이 회복됐나요?", "관리 방법을 알게 됐나요?"])
        ],
        .공황_장애_극복하기: [
            Milestone(title: "이해", description: "공황 발작 이해", successCriteria: ["공황 발작을 이해하나요?", "전문가 도움을 받나요?", "발작 대처법을 알고 있나요?"]),
            Milestone(title: "치료", description: "전문 치료", successCriteria: ["노출 치료를 받나요?", "호흡 조절을 연습하나요?", "인지 재구성을 하나요?"]),
            Milestone(title: "극복", description: "공황 관리", successCriteria: ["발작 빈도가 줄었나요?", "일상이 회복됐나요?", "두려움이 줄었나요?"])
        ],
        .심리_상담_받기: [
            Milestone(title: "상담사 찾기", description: "적합한 상담사", successCriteria: ["상담 필요성을 인식했나요?", "상담사를 찾았나요?", "첫 상담을 예약했나요?"]),
            Milestone(title: "상담 시작", description: "정기 상담", successCriteria: ["정기적으로 상담받나요?", "솔직하게 이야기하나요?", "숙제를 실천하나요?"]),
            Milestone(title: "성장", description: "심리적 성장", successCriteria: ["문제가 해결되고 있나요?", "자기 이해가 깊어졌나요?", "삶이 나아졌나요?"])
        ],
        .정신_건강_검진하기: [
            Milestone(title: "검진 예약", description: "전문 기관 방문", successCriteria: ["정신건강 검진 기관을 찾았나요?", "예약을 완료했나요?", "필요한 준비를 했나요?"]),
            Milestone(title: "검진 완료", description: "검사 수행", successCriteria: ["검진을 완료했나요?", "결과를 확인했나요?", "상담을 받았나요?"]),
            Milestone(title: "관리 시작", description: "필요시 치료", successCriteria: ["필요한 조치를 시작했나요?", "정기 검진 계획을 세웠나요?", "정신 건강에 관심을 갖게 됐나요?"])
        ],
        .긍정적_사고하기: [
            Milestone(title: "인식", description: "부정적 사고 인식", successCriteria: ["부정적 사고 패턴을 알고 있나요?", "인지 왜곡을 이해하나요?", "변화 의지가 있나요?"]),
            Milestone(title: "실천", description: "긍정 전환", successCriteria: ["부정적 생각을 전환하나요?", "감사 일기를 쓰나요?", "긍정적 자기 대화를 하나요?"]),
            Milestone(title: "습관화", description: "긍정적 마인드셋", successCriteria: ["긍정적 사고가 습관이 됐나요?", "행복감이 증가했나요?", "삶이 나아졌나요?"])
        ],
        .감사_일기: [
            Milestone(title: "시작", description: "일기 쓰기 시작", successCriteria: ["감사 노트를 준비했나요?", "매일 3가지 감사를 쓰나요?", "시간을 정해두었나요?"]),
            Milestone(title: "습관화", description: "30일 연속", successCriteria: ["30일 연속 썼나요?", "감사함을 더 느끼나요?", "작은 것에도 감사하나요?"]),
            Milestone(title: "정착", description: "삶의 변화", successCriteria: ["감사 일기가 습관이 됐나요?", "행복감이 증가했나요?", "긍정적으로 변했나요?"])
        ],
        .하루_30분_산책하기: [
            Milestone(title: "시작", description: "산책 시작", successCriteria: ["매일 산책을 시작했나요?", "15분 이상 걷나요?", "산책 코스를 정했나요?"]),
            Milestone(title: "늘리기", description: "20분 이상", successCriteria: ["20분 이상 걷나요?", "산책이 즐거운가요?", "날씨와 상관없이 하나요?"]),
            Milestone(title: "30분 달성", description: "습관화", successCriteria: ["매일 30분 걷나요?", "건강이 좋아졌나요?", "습관이 됐나요?"])
        ],
        .계단_오르기: [
            Milestone(title: "시작", description: "엘리베이터 대신", successCriteria: ["3층 이하는 계단을 이용하나요?", "계단 오르기를 시작했나요?", "점점 늘리고 있나요?"]),
            Milestone(title: "늘리기", description: "5층 이상", successCriteria: ["5층 이상 계단을 이용하나요?", "숨이 덜 차나요?", "습관이 되고 있나요?"]),
            Milestone(title: "습관화", description: "항상 계단", successCriteria: ["항상 계단을 이용하나요?", "체력이 좋아졌나요?", "엘리베이터가 불편한가요?"])
        ],
        .자전거_출퇴근하기: [
            Milestone(title: "준비", description: "자전거 준비", successCriteria: ["자전거가 있나요?", "출퇴근 경로를 파악했나요?", "안전 장비를 준비했나요?"]),
            Milestone(title: "시작", description: "주 1-2회", successCriteria: ["주 1-2회 자전거 출퇴근을 하나요?", "안전하게 라이딩하나요?", "체력이 되나요?"]),
            Milestone(title: "정착", description: "주 3회 이상", successCriteria: ["주 3회 이상 하나요?", "건강이 좋아졌나요?", "자전거 출퇴근이 습관이 됐나요?"])
        ],
        .걷기_출퇴근하기: [
            Milestone(title: "가능성 확인", description: "거리/시간 확인", successCriteria: ["걷기 가능한 거리인가요?", "소요 시간을 알고 있나요?", "편한 신발을 준비했나요?"]),
            Milestone(title: "시작", description: "주 1-2회", successCriteria: ["주 1-2회 걸어서 출퇴근하나요?", "시간 여유를 두나요?", "피로하지 않나요?"]),
            Milestone(title: "정착", description: "주 3회 이상", successCriteria: ["주 3회 이상 하나요?", "건강이 좋아졌나요?", "습관이 됐나요?"])
        ],
        .엘리베이터_안_타기: [
            Milestone(title: "시작", description: "저층 계단 이용", successCriteria: ["3층 이하는 계단을 이용하나요?", "의식적으로 선택하나요?", "시작했나요?"]),
            Milestone(title: "확대", description: "더 높은 층", successCriteria: ["5층 이상도 계단을 이용하나요?", "체력이 향상됐나요?", "습관이 되고 있나요?"]),
            Milestone(title: "완료", description: "항상 계단", successCriteria: ["엘리베이터를 거의 타지 않나요?", "건강이 좋아졌나요?", "자연스러운 습관인가요?"])
        ],
        .앉아있는_시간_줄이기: [
            Milestone(title: "측정", description: "현재 시간 파악", successCriteria: ["하루 앉아있는 시간을 알고 있나요?", "8시간 이상인가요?", "건강 위험을 인식하나요?"]),
            Milestone(title: "감량", description: "30분마다 일어나기", successCriteria: ["30분마다 일어나나요?", "스트레칭을 하나요?", "앉아있는 시간이 줄었나요?"]),
            Milestone(title: "습관화", description: "움직이는 생활", successCriteria: ["자주 움직이나요?", "건강이 좋아졌나요?", "습관이 됐나요?"])
        ],
        .스탠딩_데스크하기: [
            Milestone(title: "준비", description: "스탠딩 데스크 구비", successCriteria: ["스탠딩 데스크를 구입했나요?", "높이를 조절했나요?", "발 피로 매트를 준비했나요?"]),
            Milestone(title: "적응", description: "하루 2-3시간", successCriteria: ["하루 2-3시간 서서 일하나요?", "발 피로를 관리하나요?", "앉기/서기를 번갈아 하나요?"]),
            Milestone(title: "습관화", description: "반반 사용", successCriteria: ["앉기/서기를 반반 하나요?", "건강이 좋아졌나요?", "자연스러운 습관인가요?"])
        ],
        .스트레칭_습관_만들기: [
            Milestone(title: "시작", description: "기본 스트레칭", successCriteria: ["기본 스트레칭을 알고 있나요?", "아침/저녁 스트레칭을 하나요?", "5분 이상 하나요?"]),
            Milestone(title: "늘리기", description: "10분 이상", successCriteria: ["10분 이상 스트레칭하나요?", "전신 스트레칭을 하나요?", "매일 하나요?"]),
            Milestone(title: "습관화", description: "생활 속 스트레칭", successCriteria: ["스트레칭이 습관이 됐나요?", "유연성이 좋아졌나요?", "몸이 편해졌나요?"])
        ],
        .마사지_정기적으로하기: [
            Milestone(title: "시작", description: "마사지 시도", successCriteria: ["마사지샵을 찾았나요?", "좋아하는 마사지 종류를 알고 있나요?", "월 1회 이상 받나요?"]),
            Milestone(title: "정기화", description: "월 2회 이상", successCriteria: ["월 2회 이상 받나요?", "단골 샵이 있나요?", "몸 상태가 좋아졌나요?"]),
            Milestone(title: "습관화", description: "건강 관리", successCriteria: ["정기 마사지가 습관이 됐나요?", "근육 뭉침이 줄었나요?", "스트레스가 줄었나요?"])
        ],
        .발_마사지_받기: [
            Milestone(title: "시작", description: "발 마사지 경험", successCriteria: ["발 마사지를 받아봤나요?", "효과를 느꼈나요?", "좋아하는 샵을 찾았나요?"]),
            Milestone(title: "정기화", description: "월 2회 이상", successCriteria: ["정기적으로 받나요?", "발 건강이 좋아졌나요?", "피로가 풀리나요?"]),
            Milestone(title: "습관화", description: "셀프 마사지 병행", successCriteria: ["발 마사지가 습관이 됐나요?", "셀프 마사지도 하나요?", "전신 건강이 좋아졌나요?"])
        ],
        .족욕_습관_만들기: [
            Milestone(title: "준비", description: "족욕 도구 구비", successCriteria: ["족욕기를 구입했나요?", "족욕 소금/허브를 준비했나요?", "족욕 시간을 정했나요?"]),
            Milestone(title: "시작", description: "주 2-3회", successCriteria: ["주 2-3회 족욕을 하나요?", "15-20분 정도 하나요?", "릴랙스 효과를 느끼나요?"]),
            Milestone(title: "습관화", description: "매일 족욕", successCriteria: ["매일 족욕을 하나요?", "수면의 질이 좋아졌나요?", "습관이 됐나요?"])
        ],
        .반신욕_습관_만들기: [
            Milestone(title: "준비", description: "환경 준비", successCriteria: ["욕조가 있나요?", "적정 온도를 알고 있나요?", "입욕제를 준비했나요?"]),
            Milestone(title: "시작", description: "주 2-3회", successCriteria: ["주 2-3회 반신욕을 하나요?", "20-30분 정도 하나요?", "땀이 나나요?"]),
            Milestone(title: "습관화", description: "정기 반신욕", successCriteria: ["정기적으로 반신욕을 하나요?", "피로가 풀리나요?", "건강이 좋아졌나요?"])
        ]
    ]
}

