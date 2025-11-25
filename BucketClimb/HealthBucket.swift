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
        ]
    ]
}

