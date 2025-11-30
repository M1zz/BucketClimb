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
        Self.metadata[self]?.0 ?? "heart.circle.fill"
    }

    var backgroundImage: String {
        Self.metadata[self]?.1 ?? ""
    }

    var position: LocationInfo? {
        Self.positionData[self]
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
                "체성분 분석 결과에서 가장 주목한 수치와 개선하고 싶은 부분을 설명해보세요",
                "현재 BMI와 체지방률을 바탕으로 세운 월별 감량 목표와 계획은?",
                "10kg 감량을 결심하게 된 계기와 이 목표가 나에게 주는 의미는?"
            ]),
            Milestone(title: "식단 관리 시작", description: "칼로리 적자 식단 유지", successCriteria: [
                "하루 권장 칼로리와 현재 식단 구성을 분석한 결과를 설명해보세요",
                "식단 기록을 통해 발견한 식습관의 문제점과 개선 방향은?",
                "고단백 저탄수화물 식단에서 가장 어려운 점과 나만의 해결 방법은?"
            ]),
            Milestone(title: "운동 루틴 확립", description: "주 3회 이상 운동", successCriteria: [
                "현재 실천 중인 운동 루틴과 선택한 운동의 이유를 설명해보세요",
                "유산소와 근력 운동을 병행하면서 느낀 신체 변화와 배운 점은?",
                "운동 습관을 유지하기 위한 나만의 동기부여 방법과 다짐은?"
            ]),
            Milestone(title: "목표 달성", description: "10kg 감량 완료", successCriteria: [
                "10kg 감량 여정에서 가장 힘들었던 순간과 극복 방법을 기록해보세요",
                "요요 없이 체중을 유지하기 위해 배운 교훈과 앞으로의 계획은?",
                "감량 성공 후 느낀 변화(건강, 자신감, 생활)와 이 경험이 주는 의미는?"
            ])
        ],
        .금연_1년_달성하기: [
            Milestone(title: "금연 준비", description: "금연 시작일 및 계획 수립", successCriteria: [
                "금연을 결심하게 된 계기와 금연 시작일을 선택한 이유를 기록해보세요",
                "준비한 금연 보조제와 선택 이유, 그리고 금연 계획을 설명해보세요",
                "주변에 금연 선언을 하면서 느낀 감정과 받은 응원을 기록해보세요"
            ]),
            Milestone(title: "1주 달성", description: "금단 증상 극복", successCriteria: [
                "첫 주 동안 경험한 금단 증상과 극복하기 위해 시도한 방법들을 기록해보세요",
                "흡연 욕구가 올 때 실천하는 대체 행동과 그 효과를 설명해보세요",
                "스트레스 상황에서 담배 없이 대처하는 나만의 방법을 정리해보세요"
            ]),
            Milestone(title: "1개월 달성", description: "초기 고비 극복", successCriteria: [
                "한 달 금연 동안 가장 힘들었던 순간과 극복 방법을 기록해보세요",
                "흡연 욕구의 변화와 현재 상태를 스스로 분석해보세요",
                "금연 기록을 통해 발견한 패턴과 배운 점을 정리해보세요"
            ]),
            Milestone(title: "6개월 달성", description: "중간 목표 달성", successCriteria: [
                "6개월 금연을 통해 느낀 신체적, 정신적 변화를 상세히 기록해보세요",
                "금연으로 절약한 돈과 그 돈을 어떻게 사용할 계획인지 설명해보세요",
                "반년간의 금연 여정에서 가장 자랑스러운 순간과 배운 교훈은?"
            ]),
            Milestone(title: "1년 달성", description: "금연 성공", successCriteria: [
                "1년 금연 성공의 의미와 이 여정을 통해 변화된 나의 모습을 기록해보세요",
                "건강검진 결과 개선 내용과 건강에 대한 새로운 인식을 설명해보세요",
                "비흡연자로서의 정체성과 앞으로의 건강한 삶에 대한 다짐을 기록해보세요"
            ])
        ],
        .명상_100일_연속하기: [
            Milestone(title: "명상 입문", description: "기초 명상법 습득", successCriteria: [
                "명상을 시작하게 된 계기와 선택한 명상 앱/방법을 설명해보세요",
                "처음 명상할 때 느낀 감정과 어려움, 그리고 극복 방법을 기록해보세요",
                "호흡 명상의 기본을 익히면서 배운 점과 첫 변화를 기록해보세요"
            ]),
            Milestone(title: "30일 달성", description: "명상 습관 형성", successCriteria: [
                "30일 연속 명상을 하면서 가장 힘들었던 날과 극복 방법을 기록해보세요",
                "명상 시간 증가에 따른 변화와 현재 명상 루틴을 설명해보세요",
                "일상에서 느끼는 집중력, 감정 변화 등을 구체적으로 기록해보세요"
            ]),
            Milestone(title: "60일 달성", description: "명상 심화", successCriteria: [
                "60일 명상을 통해 시도해본 다양한 명상 기법과 가장 맞는 방법을 설명해보세요",
                "스트레스 상황에서 명상이 도움이 된 구체적인 경험을 기록해보세요",
                "명상이 수면, 감정, 대인관계에 미친 영향을 분석해보세요"
            ]),
            Milestone(title: "100일 달성", description: "명상 마스터", successCriteria: [
                "100일 명상 여정에서 가장 의미 있었던 순간과 깨달음을 기록해보세요",
                "현재 명상 실력과 가능한 명상 시간, 깊이를 자가 평가해보세요",
                "일상에서 마음챙김을 실천하는 방법과 앞으로의 명상 계획을 정리해보세요"
            ])
        ],
        .복근_만들기: [
            Milestone(title: "기초 체력 준비", description: "코어 운동 시작", successCriteria: [
                "현재 플랭크 기록과 코어 근력 수준을 측정한 결과를 기록해보세요",
                "실천 중인 코어 운동 루틴과 선택 이유를 설명해보세요",
                "복근을 만들고 싶은 이유와 이 목표가 나에게 주는 의미는?"
            ]),
            Milestone(title: "체지방 감량", description: "체지방률 15% 이하 달성", successCriteria: [
                "현재 체지방률 변화 추이와 목표까지 남은 과정을 분석해보세요",
                "체지방 감량을 위한 식단과 운동 전략을 설명해보세요",
                "유산소 운동을 추가하면서 느낀 효과와 배운 점을 기록해보세요"
            ]),
            Milestone(title: "복근 선명화", description: "복근이 보이기 시작", successCriteria: [
                "복근 라인이 보이기 시작하면서 느낀 감정과 동기부여를 기록해보세요",
                "체지방률 감소 과정에서 가장 효과적이었던 방법을 정리해보세요",
                "현재 실천 중인 고급 코어 운동과 발전 과정을 설명해보세요"
            ]),
            Milestone(title: "식스팩 완성", description: "뚜렷한 복근 완성", successCriteria: [
                "식스팩 완성까지의 여정에서 가장 힘들었던 점과 극복 방법을 기록해보세요",
                "복근을 유지하기 위한 식단과 운동 루틴을 정리해보세요",
                "목표 달성 후 느낀 성취감과 앞으로의 피트니스 목표를 기록해보세요"
            ])
        ],
        .하루_1만보_걷기: [
            Milestone(title: "현재 걸음수 파악", description: "평균 걸음수 측정", successCriteria: [
                "현재 평균 일일 걸음수와 사용 중인 트래킹 방법을 설명해보세요",
                "걸음수를 늘리기 어려운 이유와 개선 방안을 분석해보세요",
                "1만보 걷기에 도전하는 이유와 기대하는 효과는?"
            ]),
            Milestone(title: "7천보 달성", description: "중간 목표 달성", successCriteria: [
                "7천보 달성을 위해 일상에 추가한 걷기 활동들을 설명해보세요",
                "출퇴근, 점심시간 등 걷기를 늘린 방법과 느낀 변화를 기록해보세요",
                "걸음수를 늘리면서 발견한 좋아하는 산책 코스나 시간대는?"
            ]),
            Milestone(title: "1만보 달성", description: "목표 달성", successCriteria: [
                "처음 1만보를 달성한 날의 기분과 그 과정을 기록해보세요",
                "1만보를 유지하기 위한 나만의 전략과 팁을 정리해보세요",
                "걷기가 일상에 미친 영향과 신체적 변화를 설명해보세요"
            ]),
            Milestone(title: "습관 유지", description: "1개월 연속 달성", successCriteria: [
                "한 달간 1만보를 유지하면서 어려웠던 날과 극복 방법을 기록해보세요",
                "걷기를 통해 느낀 체력, 기분, 건강의 변화를 상세히 기록해보세요",
                "걷기가 내 삶에 주는 의미와 앞으로의 계획을 정리해보세요"
            ])
        ],
        .벤치프레스_100kg하기: [
            Milestone(title: "기초 자세", description: "올바른 폼 습득", successCriteria: ["벤치프레스의 올바른 자세와 주의사항을 설명해보세요", "안전하게 운동하기 위해 준비한 장비와 환경을 기록해보세요", "100kg를 목표로 삼은 이유와 이 도전이 주는 의미는?"]),
            Milestone(title: "60kg 달성", description: "중간 목표", successCriteria: ["60kg 달성까지의 과정과 느낀 성장을 기록해보세요", "부상 예방을 위해 실천하는 방법과 보조 운동을 설명해보세요", "현재 훈련 프로그램과 다음 단계 계획을 정리해보세요"]),
            Milestone(title: "80kg 달성", description: "중급 단계", successCriteria: ["80kg 달성 과정에서 극복한 정체기와 해결 방법을 기록해보세요", "어깨 건강 관리를 위해 실천하는 것들을 설명해보세요", "점진적 과부하 원칙을 적용한 훈련 방법을 정리해보세요"]),
            Milestone(title: "100kg 달성", description: "목표 완료", successCriteria: ["100kg 성공 순간의 감정과 그 과정을 상세히 기록해보세요", "100kg 달성을 위해 가장 중요했던 훈련 원칙과 배운 점은?", "다음 웨이트 트레이닝 목표와 앞으로의 계획을 정리해보세요"])
        ],
        .풀업_20개_하기: [
            Milestone(title: "풀업 시작", description: "기본 연습", successCriteria: ["현재 풀업 실력과 시작할 때 사용하는 보조 방법을 설명해보세요", "네거티브 풀업 등 기초 훈련 방법과 느낀 효과를 기록해보세요", "풀업 20개에 도전하는 이유와 기대하는 신체 변화는?"]),
            Milestone(title: "10개 달성", description: "중간 목표", successCriteria: ["10개 달성까지의 훈련 과정과 느낀 성장을 기록해보세요", "시도해본 풀업 바리에이션과 효과적이었던 방법을 설명해보세요", "광배근 발달 등 신체 변화와 느낀 점을 기록해보세요"]),
            Milestone(title: "20개 달성", description: "목표 완료", successCriteria: ["20개 달성 순간의 감정과 이 여정에서 배운 점을 기록해보세요", "정확한 폼으로 20개를 수행하는 나만의 팁을 정리해보세요", "풀업이 일상 운동 루틴에 미친 영향과 다음 목표는?"])
        ],
        .요가_강사_자격증_취득하기: [
            Milestone(title: "요가 기초", description: "정기적 수련", successCriteria: ["요가를 시작하게 된 계기와 현재 수련 경험을 설명해보세요", "익힌 기본 아사나들과 가장 좋아하는 동작을 기록해보세요", "요가 강사가 되고 싶은 이유와 이 목표가 주는 의미는?"]),
            Milestone(title: "양성 과정 등록", description: "RYT 200 과정", successCriteria: ["선택한 양성 과정의 특징과 선택 이유를 설명해보세요", "교육 일정과 준비 과정을 상세히 기록해보세요", "양성 과정에서 가장 기대되는 배움과 성장은?"]),
            Milestone(title: "자격증 취득", description: "시험 합격", successCriteria: ["자격증 취득 과정에서 가장 어려웠던 점과 극복 방법을 기록해보세요", "필기와 실기 시험 준비 과정에서 배운 점을 정리해보세요", "요가 강사로서의 포부와 앞으로의 계획을 기록해보세요"])
        ],
        .필라테스_마스터하기: [
            Milestone(title: "필라테스 시작", description: "기초 동작 습득", successCriteria: ["필라테스를 시작하게 된 계기와 선택한 센터를 설명해보세요", "기본 호흡법과 코어 활성화에서 배운 핵심 원리를 기록해보세요", "필라테스 마스터가 목표인 이유와 기대하는 변화는?"]),
            Milestone(title: "중급 단계", description: "기구 필라테스", successCriteria: ["리포머 등 기구 필라테스의 매력과 느낀 효과를 기록해보세요", "습득한 중급 동작들과 가장 어려웠던 동작을 설명해보세요", "체형과 자세 변화 등 필라테스가 가져온 변화를 기록해보세요"]),
            Milestone(title: "마스터 단계", description: "고급 동작", successCriteria: ["마스터한 고급 동작들과 습득 과정을 설명해보세요", "정확한 폼 유지를 위해 배운 핵심 원칙들을 정리해보세요", "필라테스 마스터로서의 성취감과 앞으로의 계획을 기록해보세요"])
        ],
        .채식주의자_되기: [
            Milestone(title: "채식 시작", description: "점진적 전환", successCriteria: ["채식을 시작하게 된 계기와 이유를 설명해보세요", "시도해본 채식 레시피와 가장 좋아하는 채식 메뉴를 기록해보세요", "영양 균형을 위해 신경 쓰는 부분과 배운 점은?"]),
            Milestone(title: "페스코 채식", description: "육류 제외", successCriteria: ["육류를 끊으면서 느낀 변화와 어려움을 기록해보세요", "단백질 대체 식품으로 활용하는 것들과 효과를 설명해보세요", "채식 전환 과정에서 몸과 마음의 변화를 기록해보세요"]),
            Milestone(title: "완전 채식", description: "비건 식단", successCriteria: ["완전 채식 생활의 일상과 느끼는 변화를 상세히 기록해보세요", "알게 된 비건 식당과 제품들을 정리해보세요", "채식주의자로서의 정체성과 이 선택이 주는 의미를 기록해보세요"])
        ],
        .건강검진_올_정상_판정하기: [
            Milestone(title: "검진 예약", description: "종합검진", successCriteria: ["선택한 검진 항목과 그 이유를 설명해보세요", "검진을 위해 준비한 것들(공복, 금주 등)을 기록해보세요", "건강검진 올 정상을 목표로 삼은 이유와 의미는?"]),
            Milestone(title: "결과 확인", description: "결과지 분석", successCriteria: ["검진 결과에서 주목한 항목들과 현재 건강 상태를 분석해보세요", "의사 상담에서 받은 조언과 개선이 필요한 부분을 기록해보세요", "검진 결과를 통해 배운 점과 느낀 점을 정리해보세요"]),
            Milestone(title: "개선 노력", description: "건강 관리", successCriteria: ["이상 항목 개선을 위해 실천한 생활 습관 변화를 기록해보세요", "개선 과정에서 가장 효과적이었던 방법을 설명해보세요", "올 정상 판정을 받았다면 그 성취감과 앞으로의 건강 관리 계획은?"])
        ],
        .체중_5kg_감량하기: [
            Milestone(title: "목표 설정", description: "현재 체중 파악", successCriteria: ["현재 체중과 목표 체중, 그리고 감량 계획을 설명해보세요", "일일 칼로리 계산과 식단 전략을 기록해보세요", "5kg 감량의 이유와 이 목표가 나에게 주는 의미는?"]),
            Milestone(title: "2kg 감량", description: "중간 목표", successCriteria: ["2kg 감량 과정에서 효과적이었던 방법을 기록해보세요", "식단과 운동 병행 중 느낀 변화와 어려움을 설명해보세요", "중간 목표 달성의 기쁨과 남은 과정에 대한 다짐은?"]),
            Milestone(title: "5kg 감량", description: "목표 달성", successCriteria: ["5kg 감량 여정에서 가장 힘들었던 점과 극복 방법을 기록해보세요", "요요 없이 유지하기 위한 나만의 방법을 정리해보세요", "목표 달성 후 느낀 변화와 건강한 생활 습관의 의미는?"])
        ],
        .체중_20kg_감량하기: [
            Milestone(title: "시작 준비", description: "장기 계획 수립", successCriteria: ["의사 상담 내용과 건강 상태를 바탕으로 한 계획을 설명해보세요", "장기 감량 계획과 단계별 목표를 상세히 기록해보세요", "20kg 감량을 결심한 계기와 나를 지지해주는 사람들을 기록해보세요"]),
            Milestone(title: "10kg 감량", description: "중간 목표", successCriteria: ["10kg 감량 과정에서 가장 힘들었던 정체기와 극복 방법을 기록해보세요", "효과적이었던 식단과 운동 방법을 정리해보세요", "중간 목표 달성의 기쁨과 남은 여정에 대한 각오를 기록해보세요"]),
            Milestone(title: "20kg 감량", description: "최종 목표", successCriteria: ["20kg 감량 여정 전체를 돌아보며 가장 의미 있었던 순간을 기록해보세요", "완전히 변화된 라이프스타일과 새로운 습관들을 정리해보세요", "이 대단한 성취가 나에게 주는 의미와 앞으로의 건강 목표는?"])
        ],
        .체지방률_10퍼센트_달성하기: [
            Milestone(title: "현재 체지방률", description: "측정 및 계획", successCriteria: ["현재 체지방률과 목표까지의 계획을 설명해보세요", "인바디 측정 주기와 변화 추적 방법을 기록해보세요", "체지방률 10%에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "15% 달성", description: "중간 단계", successCriteria: ["15% 달성 과정에서 효과적이었던 방법을 기록해보세요", "근육량 유지를 위해 실천한 것들을 설명해보세요", "식단 관리의 어려움과 나만의 해결 방법은?"]),
            Milestone(title: "10% 달성", description: "목표 완료", successCriteria: ["10% 달성까지의 여정에서 가장 힘들었던 점과 극복 방법을 기록해보세요", "선명해진 근육과 신체 변화에 대한 감상을 기록해보세요", "체지방률 유지를 위한 계획과 이 성취가 주는 의미는?"])
        ],
        .체지방률_15퍼센트_달성하기: [
            Milestone(title: "시작", description: "현재 상태 파악", successCriteria: ["현재 체지방률과 목표 달성 계획을 설명해보세요", "세운 식단 계획과 전략을 기록해보세요", "체지방률 15%에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "20% 달성", description: "초기 감량", successCriteria: ["20% 달성 과정에서 느낀 변화와 효과적이었던 방법을 기록해보세요", "운동과 식단 병행 중 어려웠던 점과 극복 방법은?", "중간 목표 달성의 기쁨과 남은 과정에 대한 다짐은?"]),
            Milestone(title: "15% 달성", description: "목표 완료", successCriteria: ["15% 달성까지의 여정과 가장 의미 있었던 순간을 기록해보세요", "복근 등 신체 변화와 느낀 감정을 기록해보세요", "체지방률 유지 방법과 이 성취가 나에게 주는 의미는?"])
        ],
        .근육량_5kg_증량하기: [
            Milestone(title: "벌크업 시작", description: "칼로리 잉여", successCriteria: ["계산한 일일 칼로리와 벌크업 식단 전략을 설명해보세요", "단백질 섭취를 늘리기 위해 먹는 식품들을 기록해보세요", "근육량 5kg 증가에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "2kg 증가", description: "중간 목표", successCriteria: ["2kg 증가 과정에서 효과적이었던 훈련 방법을 기록해보세요", "점진적 과부하 적용과 충분한 휴식의 중요성에 대해 배운 점은?", "중간 목표 달성의 기쁨과 남은 과정에 대한 다짐을 기록해보세요"]),
            Milestone(title: "5kg 증가", description: "목표 완료", successCriteria: ["5kg 증가 여정에서 가장 효과적이었던 방법과 어려웠던 점을 기록해보세요", "체지방 증가를 최소화하기 위해 실천한 것들을 설명해보세요", "목표 달성 후 느낀 변화와 유지 계획, 다음 목표는?"])
        ],
        .근육량_10kg_증량하기: [
            Milestone(title: "장기 계획", description: "1-2년 목표", successCriteria: ["전문가 상담을 통해 세운 장기 계획과 영양 전략을 설명해보세요", "10kg 증량에 도전하는 이유와 이 목표가 주는 의미는?", "계획을 실천하기 위한 생활 패턴 변화를 기록해보세요"]),
            Milestone(title: "5kg 증가", description: "중간 목표", successCriteria: ["5kg 증가 과정에서 효과적이었던 훈련 프로그램을 설명해보세요", "진행 상황 기록을 통해 배운 점과 조정한 부분을 정리해보세요", "중간 목표 달성의 성취감과 남은 여정에 대한 각오는?"]),
            Milestone(title: "10kg 증가", description: "목표 완료", successCriteria: ["10kg 증가 전후의 체형 변화와 느낀 감정을 기록해보세요", "장기간의 벌크업 여정에서 가장 힘들었던 점과 극복 방법은?", "이 대단한 성취가 주는 의미와 앞으로의 피트니스 목표는?"])
        ],
        .스쿼트_200kg하기: [
            Milestone(title: "기초 다지기", description: "올바른 자세", successCriteria: ["스쿼트의 올바른 자세와 현재 실력을 설명해보세요", "안전하게 고중량을 다루기 위해 준비한 장비와 환경을 기록해보세요", "200kg를 목표로 삼은 이유와 이 도전이 주는 의미는?"]),
            Milestone(title: "150kg 달성", description: "중급 단계", successCriteria: ["150kg 달성 과정에서 효과적이었던 훈련 방법을 기록해보세요", "부상 예방을 위해 신경 쓰는 점과 보조 운동을 설명해보세요", "고중량을 다루면서 느낀 성장과 자신감의 변화는?"]),
            Milestone(title: "200kg 달성", description: "목표 완료", successCriteria: ["200kg 성공 순간의 감정과 그 과정을 상세히 기록해보세요", "200kg 달성을 위해 가장 중요했던 훈련 원칙과 배운 점은?", "이 성취가 주는 의미와 다음 목표를 정리해보세요"])
        ],
        .데드리프트_200kg하기: [
            Milestone(title: "기초", description: "폼 완성", successCriteria: ["데드리프트의 올바른 자세와 현재 실력을 설명해보세요", "허리 보호를 위해 신경 쓰는 점과 훈련 방법을 기록해보세요", "200kg 데드리프트에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "150kg 달성", description: "중급 단계", successCriteria: ["150kg 달성 과정에서 효과적이었던 훈련 방법을 기록해보세요", "그립 강화와 허리 건강 관리를 위해 실천하는 것들을 설명해보세요", "중량 증가에 따른 신체와 자신감의 변화를 기록해보세요"]),
            Milestone(title: "200kg 달성", description: "목표 완료", successCriteria: ["200kg 성공 순간의 감정과 여정 전체를 돌아보며 기록해보세요", "스트랩 없이 고중량을 잡기 위한 그립 훈련 경험을 설명해보세요", "이 성취가 주는 의미와 다음 파워리프팅 목표는?"])
        ],
        .벤치프레스_150kg하기: [
            Milestone(title: "100kg 달성", description: "기초 완성", successCriteria: ["100kg 달성까지의 과정과 배운 점을 기록해보세요", "어깨 건강 관리를 위해 실천하는 것들을 설명해보세요", "150kg를 향한 다음 단계 계획을 정리해보세요"]),
            Milestone(title: "125kg 달성", description: "중급 단계", successCriteria: ["125kg 달성 과정에서 극복한 정체기와 해결 방법을 기록해보세요", "효과적인 보조 운동과 휴식 관리 방법을 설명해보세요", "고중량 벤치프레스에서 느낀 성장과 변화는?"]),
            Milestone(title: "150kg 달성", description: "목표 완료", successCriteria: ["150kg 성공 순간의 감정과 여정 전체를 기록해보세요", "부상 없이 150kg를 달성하기 위해 가장 중요했던 원칙은?", "이 성취가 주는 의미와 앞으로의 계획을 정리해보세요"])
        ],
        .풀업_50개하기: [
            Milestone(title: "20개 달성", description: "기초 단계", successCriteria: ["현재 풀업 실력과 20개 달성까지의 과정을 기록해보세요", "올바른 자세와 충분한 가동 범위 유지를 위해 신경 쓰는 점은?", "풀업 50개에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "35개 달성", description: "중급 단계", successCriteria: ["35개 달성 과정에서 효과적이었던 훈련 방법을 기록해보세요", "다양한 그립과 훈련 루틴을 통해 배운 점을 설명해보세요", "지구력 향상을 위해 실천하는 것들과 느낀 변화는?"]),
            Milestone(title: "50개 달성", description: "목표 완료", successCriteria: ["50개 달성 순간의 감정과 소요 시간을 기록해보세요", "50개를 수행하기 위한 나만의 전략과 팁을 정리해보세요", "이 성취가 주는 의미와 다음 목표를 설명해보세요"])
        ],
        .푸시업_100개_연속하기: [
            Milestone(title: "30개 달성", description: "기초 단계", successCriteria: ["현재 푸시업 실력과 올바른 자세 유지를 위해 신경 쓰는 점을 설명해보세요", "매일 연습하면서 느낀 변화와 배운 점을 기록해보세요", "푸시업 100개에 도전하는 이유와 기대는?"]),
            Milestone(title: "60개 달성", description: "중급 단계", successCriteria: ["60개 달성 과정에서 효과적이었던 훈련 방법을 기록해보세요", "지구력 향상을 위해 실천한 것들과 느낀 변화를 설명해보세요", "속도와 자세를 유지하기 위한 나만의 팁은?"]),
            Milestone(title: "100개 달성", description: "목표 완료", successCriteria: ["100개 연속 달성 순간의 감정과 소요 시간을 기록해보세요", "100개를 위한 훈련 과정에서 가장 힘들었던 점과 극복 방법은?", "이 성취가 주는 의미와 다음 도전을 정리해보세요"])
        ],
        .플랭크_30분하기: [
            Milestone(title: "5분 달성", description: "기초 단계", successCriteria: ["현재 플랭크 실력과 자세 유지를 위해 신경 쓰는 점을 설명해보세요", "매일 연습하면서 느낀 코어 강화와 변화를 기록해보세요", "30분 플랭크에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "15분 달성", description: "중급 단계", successCriteria: ["15분 달성 과정에서 배운 정신력 훈련 방법을 기록해보세요", "호흡 조절과 자세 유지를 위한 나만의 팁을 설명해보세요", "장시간 플랭크에서 느낀 한계와 극복 방법은?"]),
            Milestone(title: "30분 달성", description: "목표 완료", successCriteria: ["30분 플랭크 성공 순간의 감정과 경험을 상세히 기록해보세요", "30분간 자세를 유지하기 위해 가장 중요했던 것은?", "이 놀라운 성취가 주는 의미와 배운 점을 정리해보세요"])
        ],
        .버피_100개하기: [
            Milestone(title: "30개 달성", description: "기초 단계", successCriteria: ["버피의 올바른 자세와 현재 실력을 설명해보세요", "30개 완료 과정에서 느낀 체력 변화를 기록해보세요", "버피 100개에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "60개 달성", description: "중급 단계", successCriteria: ["60개 달성 과정에서 효과적이었던 페이스 조절 방법을 기록해보세요", "휴식 시간 관리와 지구력 향상을 위해 배운 점을 설명해보세요", "고강도 운동에서 느낀 한계와 극복 방법은?"]),
            Milestone(title: "100개 달성", description: "목표 완료", successCriteria: ["100개 완료 순간의 감정과 소요 시간을 기록해보세요", "100개를 위한 훈련에서 가장 힘들었던 점과 극복 방법은?", "이 성취가 주는 의미와 다음 체력 목표는?"])
        ],
        .에어_스쿼트_500개하기: [
            Milestone(title: "100개 달성", description: "기초 단계", successCriteria: ["현재 에어 스쿼트 실력과 올바른 자세를 설명해보세요", "100개 완료 과정에서 느낀 하체 근력 변화를 기록해보세요", "500개에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "300개 달성", description: "중급 단계", successCriteria: ["300개 달성 과정에서 효과적이었던 페이스 조절과 세트 관리 방법을 기록해보세요", "무릎 건강 관리를 위해 신경 쓰는 점을 설명해보세요", "장시간 반복 운동에서 배운 정신력 훈련 방법은?"]),
            Milestone(title: "500개 달성", description: "목표 완료", successCriteria: ["500개 완료 순간의 감정과 소요 시간을 기록해보세요", "500개를 위한 훈련에서 가장 중요했던 원칙을 정리해보세요", "이 놀라운 성취가 주는 의미와 다음 도전은?"])
        ],
        .유연성_향상하기: [
            Milestone(title: "스트레칭 시작", description: "매일 10분", successCriteria: ["현재 유연성 수준과 실천 중인 스트레칭 루틴을 설명해보세요", "유연성 향상에 도전하는 이유와 기대하는 변화는?", "매일 스트레칭하면서 느낀 초기 변화를 기록해보세요"]),
            Milestone(title: "중간 단계", description: "발목 터치", successCriteria: ["유연성 향상 과정에서 효과적이었던 스트레칭을 기록해보세요", "요가/필라테스 등 병행하는 운동과 그 효과를 설명해보세요", "관절 가동 범위 증가를 느낀 부위와 변화를 기록해보세요"]),
            Milestone(title: "목표 달성", description: "분할 자세", successCriteria: ["유연성 향상 여정에서 가장 힘들었던 점과 극복 방법을 기록해보세요", "현재 달성한 유연성 수준과 느낀 변화를 설명해보세요", "유연성 유지를 위한 루틴과 앞으로의 계획은?"])
        ],
        .일자_다리_만들기: [
            Milestone(title: "스트레칭 시작", description: "다리 스트레칭", successCriteria: ["현재 다리 유연성과 실천 중인 스트레칭을 설명해보세요", "일자 다리에 도전하는 이유와 기대하는 변화는?", "햄스트링과 고관절 스트레칭에서 느낀 점을 기록해보세요"]),
            Milestone(title: "중간 단계", description: "120도 이상", successCriteria: ["120도 이상 벌리기까지의 과정과 효과적이었던 방법을 기록해보세요", "고관절 스트레칭에서 주의하는 점과 배운 것을 설명해보세요", "통증 없이 스트레칭하는 나만의 팁은?"]),
            Milestone(title: "일자 다리", description: "180도 달성", successCriteria: ["일자 다리 성공 순간의 감정과 여정을 기록해보세요", "180도 달성을 위해 가장 중요했던 훈련 방법은?", "이 성취가 주는 의미와 유연성 유지 계획을 정리해보세요"])
        ],
        .거북목_교정하기: [
            Milestone(title: "진단", description: "현재 상태 파악", successCriteria: ["거북목 상태와 전문가 진단 내용을 설명해보세요", "거북목의 원인과 배운 교정 운동을 기록해보세요", "교정을 결심한 이유와 기대하는 변화는?"]),
            Milestone(title: "교정 운동", description: "매일 실천", successCriteria: ["매일 실천하는 교정 운동과 그 효과를 설명해보세요", "모니터 높이, 자세 등 일상에서 개선한 점을 기록해보세요", "교정 과정에서 느낀 변화와 어려움은?"]),
            Milestone(title: "교정 완료", description: "정상 자세", successCriteria: ["거북목 개선 전후의 변화와 느낀 점을 기록해보세요", "바른 자세가 습관이 되기까지 가장 중요했던 것은?", "이 교정이 주는 의미와 자세 유지 계획을 정리해보세요"])
        ],
        .골반_교정하기: [
            Milestone(title: "진단", description: "골반 상태 확인", successCriteria: ["골반 틀어짐 상태와 전문가 진단 내용을 설명해보세요", "틀어짐의 원인을 파악한 내용을 기록해보세요", "교정을 결심한 이유와 기대하는 변화는?"]),
            Milestone(title: "교정 치료", description: "운동/치료", successCriteria: ["실천 중인 교정 운동과 치료 과정을 설명해보세요", "일상에서 개선한 자세와 습관을 기록해보세요", "교정 과정에서 느낀 변화와 어려움은?"]),
            Milestone(title: "교정 완료", description: "균형 회복", successCriteria: ["골반 교정 전후의 변화와 느낀 점을 기록해보세요", "통증 감소와 신체 균형 회복을 설명해보세요", "교정 유지를 위한 운동과 앞으로의 관리 계획은?"])
        ],
        .자세_교정하기: [
            Milestone(title: "현재 자세 파악", description: "문제점 확인", successCriteria: ["자세 분석 결과와 문제 부위를 설명해보세요", "배운 교정 방법과 계획을 기록해보세요", "자세 교정을 결심한 이유와 기대하는 변화는?"]),
            Milestone(title: "교정 실천", description: "일상 속 교정", successCriteria: ["일상에서 바른 자세를 유지하기 위해 실천하는 것들을 설명해보세요", "사용 중인 교정 기구와 병행 운동을 기록해보세요", "의식적으로 자세를 교정하면서 느낀 변화는?"]),
            Milestone(title: "바른 자세 습관", description: "자연스러운 유지", successCriteria: ["바른 자세가 습관이 되기까지의 과정을 기록해보세요", "주변의 반응과 통증 감소 등 느낀 변화를 설명해보세요", "이 성취가 주는 의미와 앞으로의 자세 관리 계획은?"])
        ],
        .척추_건강하기: [
            Milestone(title: "검진", description: "척추 상태 확인", successCriteria: ["척추 검진 결과와 현재 상태를 설명해보세요", "배운 관리 방법과 주의사항을 기록해보세요", "척추 건강에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "강화 운동", description: "코어 강화", successCriteria: ["실천 중인 코어 운동과 효과를 설명해보세요", "자세 개선과 물건 드는 방법 등 일상의 변화를 기록해보세요", "척추 건강을 위해 가장 효과적이었던 것은?"]),
            Milestone(title: "건강 유지", description: "통증 없는 삶", successCriteria: ["척추 건강 개선 전후의 변화를 기록해보세요", "통증 없는 삶을 위해 유지하는 습관들을 설명해보세요", "척추 건강 관리가 주는 의미와 앞으로의 계획은?"])
        ],
        .관절_건강하기: [
            Milestone(title: "현황 파악", description: "관절 상태 확인", successCriteria: ["관절 검진 결과와 통증 부위를 설명해보세요", "배운 관리 방법과 주의사항을 기록해보세요", "관절 건강에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "관리 시작", description: "영양제/운동", successCriteria: ["복용 중인 관절 영양제와 실천하는 운동을 설명해보세요", "관절에 무리가 가지 않도록 신경 쓰는 점을 기록해보세요", "관리 시작 후 느낀 변화와 배운 점은?"]),
            Milestone(title: "건강 유지", description: "통증 없는 관절", successCriteria: ["관절 건강 개선 전후의 변화를 기록해보세요", "유연성과 통증 감소를 설명해보세요", "관절 건강 관리가 주는 의미와 앞으로의 계획은?"])
        ],
        .혈압_정상화하기: [
            Milestone(title: "현재 상태", description: "혈압 측정", successCriteria: ["현재 혈압 수치와 측정 기록을 설명해보세요", "의사 상담에서 받은 조언과 주의사항을 기록해보세요", "혈압 정상화에 도전하는 이유와 기대하는 건강 변화는?"]),
            Milestone(title: "생활 개선", description: "식단/운동", successCriteria: ["저염식과 식단 개선을 위해 실천하는 것들을 설명해보세요", "유산소 운동과 체중 관리 방법을 기록해보세요", "생활 개선 후 느낀 변화와 어려움은?"]),
            Milestone(title: "정상화", description: "정상 혈압", successCriteria: ["혈압 정상화까지의 여정과 효과적이었던 방법을 기록해보세요", "약 없이 유지하기 위해 노력하는 것들을 설명해보세요", "이 성취가 주는 의미와 앞으로의 건강 관리 계획은?"])
        ],
        .콜레스테롤_정상화하기: [
            Milestone(title: "검사", description: "수치 확인", successCriteria: ["현재 콜레스테롤 수치(LDL/HDL)와 의사 상담 내용을 설명해보세요", "수치 개선이 필요한 이유와 건강 위험을 기록해보세요", "콜레스테롤 정상화에 도전하는 이유와 목표는?"]),
            Milestone(title: "식단 개선", description: "저지방 식단", successCriteria: ["포화지방 줄이기와 섬유질 늘리기를 위해 실천하는 것들을 설명해보세요", "오메가3 섭취 등 식단 변화를 기록해보세요", "식단 개선 후 느낀 변화와 어려움은?"]),
            Milestone(title: "정상화", description: "정상 수치", successCriteria: ["콜레스테롤 정상화까지의 여정과 효과적이었던 방법을 기록해보세요", "건강한 식단 유지를 위한 나만의 팁을 설명해보세요", "이 성취가 주는 의미와 앞으로의 건강 관리 계획은?"])
        ],
        .혈당_정상화하기: [
            Milestone(title: "검사", description: "혈당 측정", successCriteria: ["현재 혈당 수치(공복, 당화혈색소)와 당뇨 위험도를 설명해보세요", "의사 상담에서 받은 조언을 기록해보세요", "혈당 관리에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "관리 시작", description: "식단/운동", successCriteria: ["탄수화물 조절과 운동 계획을 설명해보세요", "체중 관리와 식습관 변화를 기록해보세요", "혈당 관리 시작 후 느낀 변화와 어려움은?"]),
            Milestone(title: "정상화", description: "정상 혈당", successCriteria: ["혈당 정상화까지의 여정과 효과적이었던 방법을 기록해보세요", "공복과 식후 혈당 모두 정상 유지를 위한 노력을 설명해보세요", "이 성취가 주는 의미와 앞으로의 건강 관리 계획은?"])
        ],
        .간_수치_정상화하기: [
            Milestone(title: "검사", description: "간 기능 검사", successCriteria: ["현재 간 수치(AST/ALT)와 원인 분석을 설명해보세요", "의사 상담에서 받은 조언을 기록해보세요", "간 건강 관리에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "생활 개선", description: "금주/식단", successCriteria: ["음주 줄이기와 건강한 식단을 위해 실천하는 것들을 설명해보세요", "체중 관리와 생활 습관 변화를 기록해보세요", "생활 개선 후 느낀 변화와 어려움은?"]),
            Milestone(title: "정상화", description: "정상 간 수치", successCriteria: ["간 수치 정상화까지의 여정과 효과적이었던 방법을 기록해보세요", "피로감 감소 등 느낀 건강 변화를 설명해보세요", "이 성취가 주는 의미와 앞으로의 건강 관리 계획은?"])
        ],
        .신장_건강하기: [
            Milestone(title: "검사", description: "신장 기능 검사", successCriteria: ["현재 신장 기능(크레아티닌 등)과 위험 요인을 설명해보세요", "의사 상담에서 받은 조언을 기록해보세요", "신장 건강 관리에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "관리", description: "수분/염분", successCriteria: ["충분한 수분 섭취와 저염식을 위해 실천하는 것들을 설명해보세요", "단백질 섭취 조절 등 식단 변화를 기록해보세요", "관리 시작 후 느낀 변화와 어려움은?"]),
            Milestone(title: "건강 유지", description: "정상 기능", successCriteria: ["신장 건강 개선까지의 여정과 효과적이었던 방법을 기록해보세요", "부종 감소 등 느낀 건강 변화를 설명해보세요", "이 성취가 주는 의미와 앞으로의 건강 관리 계획은?"])
        ],
        .당뇨_예방하기: [
            Milestone(title: "위험도 확인", description: "검사 및 가족력", successCriteria: ["당뇨 위험도와 가족력, 현재 혈당 수치를 설명해보세요", "당뇨 예방에 관심을 갖게 된 이유를 기록해보세요", "예방을 위한 목표와 계획은?"]),
            Milestone(title: "예방 생활", description: "식단/운동", successCriteria: ["정제 탄수화물 줄이기와 운동을 위해 실천하는 것들을 설명해보세요", "체중 관리와 식습관 변화를 기록해보세요", "예방 생활 실천 후 느낀 변화와 어려움은?"]),
            Milestone(title: "건강 유지", description: "정상 혈당", successCriteria: ["당뇨 예방을 위한 노력과 유지 중인 건강 습관을 기록해보세요", "정기 검진의 중요성과 느낀 점을 설명해보세요", "건강한 생활이 주는 의미와 앞으로의 계획은?"])
        ],
        .고혈압_예방하기: [
            Milestone(title: "위험도 확인", description: "혈압 측정", successCriteria: ["현재 혈압 수치와 고혈압 위험 요인, 가족력을 설명해보세요", "고혈압 예방에 관심을 갖게 된 이유를 기록해보세요", "예방을 위한 목표와 계획은?"]),
            Milestone(title: "예방 생활", description: "저염/운동", successCriteria: ["소금 섭취 줄이기와 운동을 위해 실천하는 것들을 설명해보세요", "스트레스 관리 방법과 생활 변화를 기록해보세요", "예방 생활 실천 후 느낀 변화와 어려움은?"]),
            Milestone(title: "건강 유지", description: "정상 혈압", successCriteria: ["고혈압 예방을 위한 노력과 유지 중인 건강 습관을 기록해보세요", "정기적인 혈압 측정의 중요성과 느낀 점을 설명해보세요", "건강한 생활이 주는 의미와 앞으로의 계획은?"])
        ],
        .심장병_예방하기: [
            Milestone(title: "위험도 평가", description: "심장 검진", successCriteria: ["심장 검진 결과와 위험 요인, 콜레스테롤 수치를 설명해보세요", "심장병 예방에 관심을 갖게 된 이유를 기록해보세요", "예방을 위한 목표와 계획은?"]),
            Milestone(title: "예방 실천", description: "생활 개선", successCriteria: ["금연, 건강한 식단, 유산소 운동 등 실천하는 것들을 설명해보세요", "생활 습관 개선 과정과 어려움을 기록해보세요", "심장 건강을 위해 가장 효과적이었던 것은?"]),
            Milestone(title: "심장 건강", description: "위험 감소", successCriteria: ["심장 건강 개선을 위한 노력과 검진 결과 변화를 기록해보세요", "위험 요인 감소를 느낀 점을 설명해보세요", "건강한 심장을 유지하기 위한 앞으로의 계획은?"])
        ],
        .뇌졸중_예방하기: [
            Milestone(title: "위험도 확인", description: "혈관 검진", successCriteria: ["혈관 검진 결과와 위험 요인(혈압, 혈당 등)을 설명해보세요", "뇌졸중 예방에 관심을 갖게 된 이유를 기록해보세요", "예방을 위한 목표와 계획은?"]),
            Milestone(title: "예방 생활", description: "건강 관리", successCriteria: ["고혈압 관리, 금연/절주, 식단 개선 등 실천하는 것들을 설명해보세요", "생활 습관 개선 과정과 어려움을 기록해보세요", "혈관 건강을 위해 가장 효과적이었던 것은?"]),
            Milestone(title: "건강 유지", description: "위험 감소", successCriteria: ["혈관 건강 개선을 위한 노력과 검진 결과 변화를 기록해보세요", "위험 요인 감소를 느낀 점을 설명해보세요", "건강한 혈관을 유지하기 위한 앞으로의 계획은?"])
        ],
        .암_검진하기: [
            Milestone(title: "검진 계획", description: "필요한 검진 확인", successCriteria: ["필요한 암 검진 항목과 검진 주기를 설명해보세요", "국가 암 검진 대상 여부와 자가 검진 방법을 기록해보세요", "암 검진에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "검진 실시", description: "암 검진 받기", successCriteria: ["받은 암 검진 항목과 과정을 설명해보세요", "검진 결과와 의사 상담 내용을 기록해보세요", "검진을 통해 느낀 점과 배운 것은?"]),
            Milestone(title: "정기 검진", description: "꾸준한 관리", successCriteria: ["정기 암 검진 계획과 건강 관리 습관을 기록해보세요", "검진의 중요성과 마음의 평화를 설명해보세요", "건강한 생활과 예방의 의미를 정리해보세요"])
        ],
        .금주_100일하기: [
            Milestone(title: "시작", description: "금주 결심", successCriteria: ["금주를 결심하게 된 계기와 시작일을 기록해보세요", "주변에 알린 후의 반응과 받은 응원을 설명해보세요", "술 대신 준비한 대체 음료와 기대하는 변화는?"]),
            Milestone(title: "30일 달성", description: "첫 한 달", successCriteria: ["30일 금주 동안 가장 힘들었던 순간과 극복 방법을 기록해보세요", "술자리 대신 찾은 새로운 즐거움을 설명해보세요", "금주 첫 달 동안 느낀 건강과 생활의 변화는?"]),
            Milestone(title: "100일 달성", description: "목표 완료", successCriteria: ["100일 금주 성공의 기쁨과 이 여정에서 배운 점을 기록해보세요", "금주로 느낀 건강, 시간, 비용의 변화를 설명해보세요", "앞으로의 음주 습관과 건강 관리 계획은?"])
        ],
        .금주_1년하기: [
            Milestone(title: "시작", description: "금주 결심", successCriteria: ["1년 금주를 결심하게 된 계기와 장기 계획을 설명해보세요", "나를 지지해주는 사람들과 환경을 기록해보세요", "금주를 통해 이루고 싶은 변화와 목표는?"]),
            Milestone(title: "6개월 달성", description: "중간 목표", successCriteria: ["6개월 금주 동안 가장 힘들었던 순간과 극복 방법을 기록해보세요", "술 없이도 즐거운 시간을 보내는 방법을 설명해보세요", "반년간 느낀 건강과 삶의 질 변화는?"]),
            Milestone(title: "1년 달성", description: "목표 완료", successCriteria: ["1년 금주 성공의 의미와 이 여정을 통해 변화된 나를 기록해보세요", "금주가 삶의 질에 미친 영향을 상세히 설명해보세요", "앞으로의 계획과 금주가 주는 교훈을 정리해보세요"])
        ],
        .금연_100일하기: [
            Milestone(title: "준비", description: "금연 계획", successCriteria: ["금연을 결심하게 된 계기와 준비한 것들을 설명해보세요", "선택한 금연 보조제와 앱, 그리고 계획을 기록해보세요", "100일 금연에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "30일 달성", description: "첫 한 달", successCriteria: ["30일 금연 동안 경험한 금단 증상과 극복 방법을 기록해보세요", "담배 대신 찾은 대체 습관을 설명해보세요", "금연 첫 달 동안 느낀 변화와 배운 점은?"]),
            Milestone(title: "100일 달성", description: "목표 완료", successCriteria: ["100일 금연 성공의 기쁨과 이 여정에서 배운 점을 기록해보세요", "흡연 욕구 변화와 비흡연자로서의 자신감을 설명해보세요", "앞으로의 금연 유지 계획과 건강 목표는?"])
        ],
        .금연_5년하기: [
            Milestone(title: "1년 달성", description: "첫 해", successCriteria: ["1년 금연 과정에서 가장 힘들었던 순간과 극복 방법을 기록해보세요", "폐 기능 개선 등 느낀 건강 변화를 설명해보세요", "흡연 욕구의 변화와 비흡연자로서의 정체성은?"]),
            Milestone(title: "3년 달성", description: "중간 목표", successCriteria: ["3년 금연을 유지하면서 느낀 점과 배운 교훈을 기록해보세요", "건강 검진 결과 개선과 신체 변화를 설명해보세요", "완전한 비흡연자가 된다는 것의 의미는?"]),
            Milestone(title: "5년 달성", description: "목표 완료", successCriteria: ["5년 금연 성공의 의미와 이 긴 여정을 돌아보며 기록해보세요", "심혈관 질환 위험 감소 등 건강 이점을 설명해보세요", "금연의 가치와 앞으로의 건강한 삶에 대한 다짐은?"])
        ],
        .카페인_디톡스하기: [
            Milestone(title: "감량 시작", description: "점진적 감량", successCriteria: ["현재 카페인 섭취량과 디톡스 계획을 설명해보세요", "점진적으로 줄이는 방법과 대체 음료를 기록해보세요", "카페인 디톡스에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "금단 극복", description: "두통/피로 극복", successCriteria: ["경험한 금단 증상(두통, 피로 등)과 극복 방법을 기록해보세요", "충분한 수분과 수면으로 견디는 과정을 설명해보세요", "금단 증상을 이겨내면서 배운 점은?"]),
            Milestone(title: "디톡스 완료", description: "카페인 제로", successCriteria: ["카페인 없는 생활의 변화와 느낀 점을 기록해보세요", "피로감 감소와 수면의 질 향상을 설명해보세요", "카페인 디톡스가 주는 의미와 앞으로의 계획은?"])
        ],
        .설탕_디톡스하기: [
            Milestone(title: "설탕 인식", description: "숨은 설탕 찾기", successCriteria: ["가공식품 속 숨은 설탕을 확인한 경험을 기록해보세요", "현재 첨가당 섭취량과 알아본 대체제를 설명해보세요", "설탕 디톡스에 도전하는 이유와 기대하는 변화는?"]),
            Milestone(title: "감량", description: "점진적 감량", successCriteria: ["단 음식을 줄이는 과정과 어려움을 기록해보세요", "과일 등 건강한 대안으로 대체한 방법을 설명해보세요", "설탕 줄이면서 느낀 변화와 배운 점은?"]),
            Milestone(title: "디톡스 완료", description: "설탕 최소화", successCriteria: ["첨가당 최소화 생활의 변화와 느낀 점을 기록해보세요", "단맛 의존도 감소와 건강 변화를 설명해보세요", "설탕 디톡스가 주는 의미와 앞으로의 식습관 계획은?"])
        ],
        .가공식품_끊기: [
            Milestone(title: "인식", description: "가공식품 파악", successCriteria: ["자주 먹던 가공식품과 성분표 분석 경험을 기록해보세요", "알게 된 건강한 대안들을 설명해보세요", "가공식품을 끊기로 한 이유와 기대하는 변화는?"]),
            Milestone(title: "감량", description: "점진적 제거", successCriteria: ["가공식품을 줄이는 과정과 어려움을 기록해보세요", "홀푸드 늘리기와 직접 요리의 경험을 설명해보세요", "가공식품 줄이면서 느낀 변화와 배운 점은?"]),
            Milestone(title: "완료", description: "가공식품 제로", successCriteria: ["가공식품 없는 생활의 변화와 느낀 점을 기록해보세요", "향상된 요리 실력과 건강 변화를 설명해보세요", "이 습관이 주는 의미와 앞으로의 식생활 계획은?"])
        ],
        .유기농_식단_관리하기: [
            Milestone(title: "시작", description: "유기농 식품 구매", successCriteria: ["자주 이용하는 유기농 마트와 선택 기준을 설명해보세요", "유기농 인증 마크의 종류와 확인 방법을 기록해보세요", "유기농으로 바꾼 식품들과 선택한 이유를 설명해보세요"]),
            Milestone(title: "확대", description: "더 많은 유기농", successCriteria: ["유기농 식단 비율을 높이면서 느낀 변화와 어려움을 기록해보세요", "방문했거나 관심 있는 유기농 농장과 그 경험을 설명해보세요", "유기농 식단을 위한 예산 조정 방법과 팁을 정리해보세요"]),
            Milestone(title: "완료", description: "유기농 생활", successCriteria: ["유기농 중심의 식생활이 가져온 건강 변화를 기록해보세요", "유기농 식단이 주는 의미와 환경에 대한 생각을 설명해보세요", "지속 가능한 유기농 생활을 위한 나만의 전략과 앞으로의 계획은?"])
        ],
        .지중해식_식단_관리하기: [
            Milestone(title: "이해", description: "지중해 식단 학습", successCriteria: ["지중해 식단의 핵심 원칙과 건강 효과를 설명해보세요", "올리브 오일을 활용한 요리 경험과 느낀 점을 기록해보세요", "생선 섭취를 늘리면서 발견한 맛있는 레시피를 공유해보세요"]),
            Milestone(title: "실천", description: "식단 전환", successCriteria: ["붉은 고기를 줄이고 대체한 식품과 그 과정을 기록해보세요", "통곡물과 다양한 채소/과일을 즐기는 방법을 설명해보세요", "지중해식 식단 전환에서 가장 맛있었던 음식과 경험은?"]),
            Milestone(title: "정착", description: "습관화", successCriteria: ["지중해 식단이 습관이 되기까지의 과정과 변화를 기록해보세요", "느낀 건강 효과와 주변의 반응을 설명해보세요", "익힌 지중해식 레시피와 앞으로의 식단 계획을 정리해보세요"])
        ],
        .케토_식단_관리하기: [
            Milestone(title: "준비", description: "케토 학습", successCriteria: ["케토 식단의 원리와 신체 반응 메커니즘을 설명해보세요", "탄수화물 제한의 기준과 계획을 기록해보세요", "준비한 케토 친화 식품과 선택 이유를 설명해보세요"]),
            Milestone(title: "적응", description: "케토 플루 극복", successCriteria: ["케토시스 상태에 들어가면서 경험한 신체 변화를 기록해보세요", "케토 플루 증상과 극복 방법을 설명해보세요", "에너지가 돌아오면서 느낀 변화와 케토의 효과는?"]),
            Milestone(title: "유지", description: "케토 생활", successCriteria: ["케토 식단 유지의 어려움과 극복 전략을 기록해보세요", "체중과 체형 변화, 느낀 건강 효과를 설명해보세요", "장기적인 케토 생활 계획과 이 식단이 주는 의미는?"])
        ],
        .간헐적_단식하기: [
            Milestone(title: "시작", description: "16:8 단식", successCriteria: ["선택한 단식 방법과 그 이유를 설명해보세요", "설정한 식사 시간대와 일상에 맞춘 계획을 기록해보세요", "첫 16시간 공복 경험과 느낀 점을 기록해보세요"]),
            Milestone(title: "적응", description: "습관화", successCriteria: ["배고픔에 적응하는 과정에서 배운 점을 기록해보세요", "에너지 레벨과 집중력 변화를 설명해보세요", "단식 중 발견한 나만의 팁과 노하우는?"]),
            Milestone(title: "유지", description: "라이프스타일", successCriteria: ["간헐적 단식이 라이프스타일로 자리잡기까지의 과정을 기록해보세요", "느낀 건강 효과와 삶의 변화를 설명해보세요", "앞으로의 단식 계획과 이 습관이 주는 의미는?"])
        ],
        .하루_2L_물_마시기: [
            Milestone(title: "측정 시작", description: "현재 섭취량 파악", successCriteria: ["현재 하루 물 섭취량과 측정 방법을 설명해보세요", "준비한 물병과 물 마시기 전략을 기록해보세요", "2L 마시기에 도전하는 이유와 기대하는 건강 효과는?"]),
            Milestone(title: "1.5L 달성", description: "중간 목표", successCriteria: ["1.5L 달성 과정에서 효과적이었던 물 마시기 습관을 기록해보세요", "물 마시기가 습관이 되면서 느낀 신체 변화를 설명해보세요", "화장실 빈도 증가와 그 외 느낀 변화를 기록해보세요"]),
            Milestone(title: "2L 달성", description: "목표 완료", successCriteria: ["매일 2L 마시기가 습관이 되기까지의 과정을 기록해보세요", "피부, 에너지 등 느낀 건강 변화를 설명해보세요", "물 마시기 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .채소_500g_먹기: [
            Milestone(title: "현황 파악", description: "현재 섭취량", successCriteria: ["현재 채소 섭취량과 자주 먹는 채소 종류를 기록해보세요", "다양한 채소를 먹기 위한 계획과 노력을 설명해보세요", "채소 500g에 도전하는 이유와 기대하는 건강 효과는?"]),
            Milestone(title: "증량", description: "400g 달성", successCriteria: ["400g 달성 과정에서 효과적이었던 채소 섭취 방법을 기록해보세요", "매 끼니 채소를 포함하기 위한 전략을 설명해보세요", "좋아하게 된 샐러드나 채소 요리를 공유해보세요"]),
            Milestone(title: "500g 달성", description: "목표 완료", successCriteria: ["매일 500g 채소 섭취가 습관이 되면서 느낀 변화를 기록해보세요", "새로 익힌 채소 요리 레시피를 공유해보세요", "이 습관이 주는 건강 효과와 앞으로의 계획은?"])
        ],
        .과일_200g_먹기: [
            Milestone(title: "시작", description: "매일 과일 먹기", successCriteria: ["매일 먹기 시작한 과일과 선택 이유를 기록해보세요", "다양한 과일을 시도하면서 발견한 새로운 맛을 설명해보세요", "제철 과일의 장점과 좋아하는 제철 과일을 공유해보세요"]),
            Milestone(title: "증량", description: "150g 달성", successCriteria: ["150g 섭취를 위한 과일 구성과 방법을 기록해보세요", "간식으로 과일을 대체하면서 느낀 변화를 설명해보세요", "과일 주스 대신 생과일을 선택하는 이유와 효과는?"]),
            Milestone(title: "200g 달성", description: "목표 완료", successCriteria: ["매일 200g 과일 섭취가 습관이 되면서 느낀 변화를 기록해보세요", "당분 조절을 위한 과일 선택 기준을 설명해보세요", "이 습관이 주는 건강 효과와 앞으로의 계획은?"])
        ],
        .견과류_섭취하기: [
            Milestone(title: "시작", description: "견과류 구비", successCriteria: ["구입한 견과류 종류와 선택 이유를 기록해보세요", "견과류의 하루 권장량과 건강 효과를 설명해보세요", "무염 견과류를 선택한 이유와 맛에 대한 감상은?"]),
            Milestone(title: "습관화", description: "매일 섭취", successCriteria: ["매일 견과류를 먹기 위한 나만의 방법을 기록해보세요", "적정량(30g)을 지키는 방법과 포만감 조절을 설명해보세요", "불건강한 간식 대신 견과류를 선택하면서 느낀 변화는?"]),
            Milestone(title: "정착", description: "건강한 간식", successCriteria: ["견과류가 습관이 되기까지의 과정을 기록해보세요", "즐겨 먹는 견과류 조합과 그 이유를 설명해보세요", "느낀 건강 효과와 앞으로의 계획을 정리해보세요"])
        ],
        .프로바이오틱스_섭취하기: [
            Milestone(title: "제품 선택", description: "프로바이오틱스 구매", successCriteria: ["선택한 프로바이오틱스 제품과 선택 기준을 설명해보세요", "확인한 균주 종류와 함량, 복용 방법을 기록해보세요", "프로바이오틱스에 기대하는 건강 효과와 목표는?"]),
            Milestone(title: "복용 시작", description: "매일 복용", successCriteria: ["매일 복용하기 위한 나만의 루틴을 기록해보세요", "복용 후 느낀 장 건강 변화를 설명해보세요", "경험한 초기 반응이나 적응 과정을 기록해보세요"]),
            Milestone(title: "장 건강", description: "개선 확인", successCriteria: ["장 건강 개선을 느낀 구체적인 변화를 기록해보세요", "전반적인 면역력과 컨디션 변화를 설명해보세요", "프로바이오틱스가 주는 효과와 앞으로의 복용 계획은?"])
        ],
        .비타민_D_보충하기: [
            Milestone(title: "검사", description: "비타민 D 수치 확인", successCriteria: ["혈액 검사 결과와 현재 비타민 D 수치를 기록해보세요", "결핍 여부와 의사의 권고 사항을 설명해보세요", "비타민 D 보충에 관심을 갖게 된 이유와 목표는?"]),
            Milestone(title: "보충 시작", description: "영양제 복용", successCriteria: ["선택한 비타민 D 영양제와 복용량을 기록해보세요", "매일 복용하기 위한 루틴과 햇빛 쬐기 노력을 설명해보세요", "복용 초기 느낀 변화나 어려움을 기록해보세요"]),
            Milestone(title: "정상화", description: "적정 수치", successCriteria: ["비타민 D 수치 정상화까지의 과정과 기간을 기록해보세요", "피로감 감소 등 느낀 건강 변화를 설명해보세요", "정상 수치 유지를 위한 계획과 이 경험이 주는 의미는?"])
        ],
        .오메가3_보충하기: [
            Milestone(title: "제품 선택", description: "오메가3 구매", successCriteria: ["선택한 오메가3 제품과 선택 기준을 설명해보세요", "EPA/DHA 함량 확인과 생선 섭취 증가 노력을 기록해보세요", "오메가3에 기대하는 건강 효과와 목표는?"]),
            Milestone(title: "복용 시작", description: "매일 복용", successCriteria: ["매일 복용하기 위한 나만의 루틴과 시간을 기록해보세요", "식후 복용의 효과와 비린내 관리 방법을 설명해보세요", "복용 초기 느낀 변화나 어려움을 기록해보세요"]),
            Milestone(title: "건강 효과", description: "개선 확인", successCriteria: ["오메가3 복용 후 느낀 건강 변화를 기록해보세요", "염증 감소나 관절 건강 등 구체적 효과를 설명해보세요", "오메가3가 주는 효과와 앞으로의 복용 계획은?"])
        ],
        .단백질_체중x2g_섭취하기: [
            Milestone(title: "계산", description: "필요량 파악", successCriteria: ["체중 기준 계산한 일일 단백질 필요량을 기록해보세요", "현재 섭취량 측정 방법과 결과를 설명해보세요", "단백질 섭취를 늘리기 위해 선택한 식품들을 기록해보세요"]),
            Milestone(title: "증량", description: "섭취량 늘리기", successCriteria: ["단백질 섭취를 늘리기 위한 전략과 방법을 기록해보세요", "사용 중인 단백질 보충제와 선택 이유를 설명해보세요", "매 끼니 단백질 식품을 포함하는 식단 예시를 공유해보세요"]),
            Milestone(title: "목표 달성", description: "체중x2g", successCriteria: ["목표 단백질 섭취량 달성 과정과 방법을 기록해보세요", "근육량 증가 등 신체 변화를 설명해보세요", "고단백 식단이 주는 효과와 앞으로의 계획은?"])
        ],
        .아침_식사_챙기기: [
            Milestone(title: "시작", description: "아침 먹기", successCriteria: ["아침 식사를 위해 바꾼 기상 시간과 아침 루틴을 설명해보세요", "준비하는 아침 메뉴와 간편하게 먹는 방법을 기록해보세요", "아침 식사 시간 확보를 위한 노력과 계획을 설명해보세요"]),
            Milestone(title: "습관화", description: "매일 아침", successCriteria: ["매일 아침 식사하면서 느낀 변화와 효과를 기록해보세요", "영양 균형을 맞추기 위해 구성하는 아침 메뉴를 설명해보세요", "아침 식사 후 에너지와 집중력 변화를 기록해보세요"]),
            Milestone(title: "정착", description: "건강한 아침", successCriteria: ["아침 식사가 습관이 되기까지의 과정을 기록해보세요", "집중력과 생산성 향상을 느낀 경험을 설명해보세요", "건강한 아침 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .규칙적인_식사하기: [
            Milestone(title: "시간 설정", description: "식사 시간 정하기", successCriteria: ["설정한 식사 시간과 그 이유를 설명해보세요", "하루 3끼 식사 계획과 간격 조정 방법을 기록해보세요", "규칙적인 식사를 위해 바꾼 생활 패턴을 설명해보세요"]),
            Milestone(title: "실천", description: "시간 지키기", successCriteria: ["정해진 시간에 식사하기 위한 노력과 어려움을 기록해보세요", "끼니를 거르지 않기 위한 나만의 전략을 설명해보세요", "야식을 피하기 위해 실천하는 것들을 기록해보세요"]),
            Milestone(title: "정착", description: "습관화", successCriteria: ["규칙적인 식사가 습관이 되면서 느낀 변화를 기록해보세요", "소화와 에너지 안정화를 느낀 경험을 설명해보세요", "이 습관이 주는 건강 효과와 삶의 변화는?"])
        ],
        .과식_줄이기: [
            Milestone(title: "인식", description: "과식 패턴 파악", successCriteria: ["과식하게 되는 상황과 원인을 분석해보세요", "포만감을 느끼는 시점과 이를 인식하는 방법을 기록해보세요", "천천히 먹기를 실천하면서 배운 점을 설명해보세요"]),
            Milestone(title: "실천", description: "적정량 먹기", successCriteria: ["적정량 식사를 위한 나만의 전략과 방법을 기록해보세요", "작은 그릇 사용 등 식사량 조절 팁을 설명해보세요", "진정한 배고픔을 구분하는 방법과 느낀 점은?"]),
            Milestone(title: "습관화", description: "적정 식사량", successCriteria: ["과식 습관을 고치면서 느낀 변화와 배운 점을 기록해보세요", "식후 가벼움과 편안함의 느낌을 설명해보세요", "체중 관리와 소화 개선 등 건강 효과를 정리해보세요"])
        ],
        .야식_끊기: [
            Milestone(title: "인식", description: "야식 습관 파악", successCriteria: ["야식 빈도와 주로 먹는 음식을 기록해보세요", "야식을 먹게 되는 원인과 상황을 분석해보세요", "야식 대신 찾은 대안들을 설명해보세요"]),
            Milestone(title: "감량", description: "야식 줄이기", successCriteria: ["야식 빈도를 줄이면서 효과적이었던 방법을 기록해보세요", "충분한 저녁 식사의 중요성과 실천 방법을 설명해보세요", "밤 배고픔을 다스리는 나만의 팁을 공유해보세요"]),
            Milestone(title: "완료", description: "야식 제로", successCriteria: ["야식 끊기 성공의 과정과 배운 점을 기록해보세요", "수면의 질 향상과 아침 컨디션 변화를 설명해보세요", "야식 끊기가 주는 건강 효과와 앞으로의 계획은?"])
        ],
        .배달_음식_줄이기: [
            Milestone(title: "현황 파악", description: "배달 빈도 확인", successCriteria: ["한 달 배달 횟수와 주로 시키는 음식을 기록해보세요", "배달 음식에 지출하는 비용을 계산하고 느낀 점을 설명해보세요", "배달 음식을 줄이기로 한 이유와 기대하는 변화는?"]),
            Milestone(title: "감량", description: "횟수 줄이기", successCriteria: ["배달 횟수를 줄이기 위해 실천한 것들을 기록해보세요", "직접 요리하면서 발견한 즐거움을 설명해보세요", "배달을 시킬 때 건강한 옵션을 선택하는 기준은?"]),
            Milestone(title: "최소화", description: "월 2회 이하", successCriteria: ["배달 음식 최소화 과정에서 배운 점을 기록해보세요", "향상된 요리 실력과 새로 익힌 레시피를 설명해보세요", "건강과 비용 절약의 효과를 정리해보세요"])
        ],
        .집밥_먹기: [
            Milestone(title: "시작", description: "요리 시작", successCriteria: ["현재 할 수 있는 요리와 익히고 싶은 요리를 기록해보세요", "장보기 경험과 식재료 선택 기준을 설명해보세요", "집밥을 늘리기 위한 계획과 기대하는 변화는?"]),
            Milestone(title: "늘리기", description: "주 5회 이상", successCriteria: ["주 5회 이상 집밥을 먹기 위한 전략을 기록해보세요", "새로 배운 레시피와 가장 자신 있는 요리를 설명해보세요", "도시락 싸기 경험과 느낀 점을 공유해보세요"]),
            Milestone(title: "정착", description: "집밥 생활", successCriteria: ["집밥이 일상이 되면서 느낀 변화를 기록해보세요", "외식보다 집밥을 선호하게 된 이유를 설명해보세요", "집밥 생활이 주는 건강 효과와 행복감을 정리해보세요"])
        ],
        .요리_실력_향상하기: [
            Milestone(title: "기초", description: "기본 요리 배우기", successCriteria: ["현재 할 수 있는 기본 요리들을 나열해보세요", "칼질과 기본 조리 기술에서 향상된 점을 설명해보세요", "참고하는 요리책이나 영상, 배움의 즐거움을 기록해보세요"]),
            Milestone(title: "중급", description: "다양한 요리", successCriteria: ["새로 도전한 다양한 요리와 성공 경험을 기록해보세요", "레시피 없이 만들 수 있게 된 요리를 설명해보세요", "손님에게 대접하고 싶은 자신작 메뉴를 공유해보세요"]),
            Milestone(title: "고급", description: "요리 마스터", successCriteria: ["도전 정신이 생긴 요리 분야와 목표를 기록해보세요", "개발한 자신만의 레시피를 설명해보세요", "요리가 주는 즐거움과 앞으로의 계획을 정리해보세요"])
        ],
        .도시락_싸기: [
            Milestone(title: "시작", description: "도시락 준비", successCriteria: ["구입한 도시락 용품과 선택 기준을 기록해보세요", "처음 싸본 도시락 메뉴와 경험을 설명해보세요", "도시락 싸기를 시작한 이유와 기대하는 효과는?"]),
            Milestone(title: "늘리기", description: "주 3회 이상", successCriteria: ["주 3회 이상 도시락을 싸기 위한 나만의 전략을 기록해보세요", "다양한 도시락 메뉴 아이디어를 설명해보세요", "전날 밤 준비의 팁과 효율적인 방법을 공유해보세요"]),
            Milestone(title: "정착", description: "매일 도시락", successCriteria: ["매일 도시락을 싸면서 느낀 변화와 뿌듯함을 기록해보세요", "절약한 비용과 그 활용 계획을 설명해보세요", "도시락 습관이 주는 건강 효과와 삶의 변화는?"])
        ],
        .일찍_자기: [
            Milestone(title: "목표 설정", description: "취침 시간 정하기", successCriteria: ["설정한 목표 취침 시간과 그 이유를 설명해보세요", "현재 취침 시간과 개선이 필요한 이유를 기록해보세요", "30분씩 앞당기는 전략과 실천 계획을 설명해보세요"]),
            Milestone(title: "루틴 만들기", description: "수면 루틴", successCriteria: ["만든 취침 전 루틴과 각 활동의 효과를 기록해보세요", "스마트폰과 전자기기 멀리하기의 어려움과 방법을 설명해보세요", "수면 환경 개선을 위해 바꾼 것들을 기록해보세요"]),
            Milestone(title: "습관화", description: "일찍 자기", successCriteria: ["일찍 자기가 습관이 되면서 느낀 변화를 기록해보세요", "아침의 상쾌함과 하루 에너지 변화를 설명해보세요", "이 습관이 주는 의미와 앞으로의 수면 관리 계획은?"])
        ],
        ._7시간_수면하기: [
            Milestone(title: "측정", description: "현재 수면 시간", successCriteria: ["현재 평균 수면 시간과 측정 방법을 기록해보세요", "사용 중인 수면 트래킹 방법과 데이터를 설명해보세요", "7시간 수면에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "조정", description: "수면 시간 늘리기", successCriteria: ["취침/기상 시간 조정 과정과 어려움을 기록해보세요", "수면 시간을 늘리기 위해 바꾼 생활 패턴을 설명해보세요", "6시간 이상 자면서 느낀 변화와 배운 점은?"]),
            Milestone(title: "달성", description: "7시간 수면", successCriteria: ["매일 7시간 수면이 습관이 되기까지의 과정을 기록해보세요", "피로감 감소와 컨디션 향상을 설명해보세요", "충분한 수면이 주는 효과와 앞으로의 계획은?"])
        ],
        ._8시간_수면하기: [
            Milestone(title: "측정", description: "현재 수면 시간", successCriteria: ["현재 평균 수면 시간과 부족한 이유를 분석해보세요", "사용 중인 수면 트래킹 방법과 데이터를 설명해보세요", "8시간 수면에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "조정", description: "수면 시간 확보", successCriteria: ["8시간 수면을 위해 조정한 일정과 생활 패턴을 기록해보세요", "취침 시간을 앞당기기 위한 노력을 설명해보세요", "7시간 이상 자면서 느낀 변화와 배운 점은?"]),
            Milestone(title: "달성", description: "8시간 수면", successCriteria: ["매일 8시간 수면이 습관이 되면서 느낀 변화를 기록해보세요", "건강, 에너지, 집중력 향상을 설명해보세요", "충분한 수면이 주는 가치와 앞으로의 계획은?"])
        ],
        .불면증_치료하기: [
            Milestone(title: "진단", description: "원인 파악", successCriteria: ["불면증 증상과 파악한 원인을 설명해보세요", "의사 상담에서 받은 진단과 조언을 기록해보세요", "수면 일지 작성 경험과 발견한 패턴을 설명해보세요"]),
            Milestone(title: "치료", description: "치료 시작", successCriteria: ["개선한 수면 위생과 실천 내용을 기록해보세요", "필요시 받는 약물 치료나 인지행동치료 경험을 설명해보세요", "치료 과정에서 배운 점과 어려움을 기록해보세요"]),
            Milestone(title: "회복", description: "정상 수면", successCriteria: ["불면증 극복 과정과 효과적이었던 방법을 기록해보세요", "잠들기 쉬워지고 숙면하게 된 변화를 설명해보세요", "불면증 극복이 주는 의미와 수면 관리 계획은?"])
        ],
        .수면의_질_개선하기: [
            Milestone(title: "현황 파악", description: "수면 질 측정", successCriteria: ["사용 중인 수면 트래커와 측정 데이터를 기록해보세요", "현재 깊은 잠 비율과 수면 패턴을 설명해보세요", "아침 컨디션과 수면 만족도를 기록해보세요"]),
            Milestone(title: "환경 개선", description: "수면 환경", successCriteria: ["침실 환경 개선을 위해 바꾼 것들을 기록해보세요", "적정 온도와 습도 유지 방법을 설명해보세요", "소음 차단과 빛 조절을 위한 노력을 기록해보세요"]),
            Milestone(title: "질 향상", description: "깊은 수면", successCriteria: ["수면의 질 향상을 느낀 변화와 데이터를 기록해보세요", "아침의 상쾌함과 에너지 변화를 설명해보세요", "수면의 질 개선이 주는 의미와 앞으로의 계획은?"])
        ],
        .아침형_인간_되기: [
            Milestone(title: "기상 시간 조정", description: "15분씩 앞당기기", successCriteria: ["현재 기상 시간과 목표 시간을 기록해보세요", "15분씩 앞당기는 과정에서의 경험과 어려움을 설명해보세요", "일찍 자기 위한 노력과 수면 시간 확보 방법은?"]),
            Milestone(title: "아침 루틴", description: "생산적인 아침", successCriteria: ["만든 아침 루틴과 각 활동의 효과를 기록해보세요", "아침 운동, 독서 등 실천하는 활동을 설명해보세요", "아침 시간이 즐거워지면서 느낀 변화는?"]),
            Milestone(title: "습관화", description: "아침형 생활", successCriteria: ["아침형 인간이 되기까지의 여정을 기록해보세요", "주말에도 유지하는 비결과 느낀 점을 설명해보세요", "아침형 생활이 주는 에너지와 삶의 변화는?"])
        ],
        .새벽_5시_기상하기: [
            Milestone(title: "준비", description: "수면 시간 조정", successCriteria: ["일찍 잠자리에 들기 위한 노력과 변화를 기록해보세요", "알람 설정 방법과 기상 전략을 설명해보세요", "6시 기상부터 시작하면서 느낀 점을 기록해보세요"]),
            Milestone(title: "적응", description: "5시 30분 기상", successCriteria: ["5시 30분 기상에 적응하는 과정과 어려움을 기록해보세요", "만든 아침 루틴과 시간 활용 방법을 설명해보세요", "피로감 없이 일어나기 위한 나만의 팁은?"]),
            Milestone(title: "5시 달성", description: "새벽 5시", successCriteria: ["매일 새벽 5시 기상이 주는 변화와 효과를 기록해보세요", "생산적인 아침 시간 활용 방법을 설명해보세요", "새벽 기상 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .규칙적인_수면하기: [
            Milestone(title: "시간 설정", description: "취침/기상 시간", successCriteria: ["설정한 고정 취침/기상 시간과 이유를 기록해보세요", "주말에도 유지하기 위한 계획과 각오를 설명해보세요", "규칙적인 수면에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "실천", description: "매일 지키기", successCriteria: ["정해진 시간에 자고 일어나기 위한 노력을 기록해보세요", "알람 없이 일어나게 된 경험과 느낀 점을 설명해보세요", "1주일 이상 유지하면서 발견한 변화는?"]),
            Milestone(title: "습관화", description: "생체 리듬", successCriteria: ["생체 리듬이 정착되면서 느낀 변화를 기록해보세요", "자연스럽게 잠들고 깨는 경험을 설명해보세요", "규칙적인 수면이 주는 컨디션 향상과 삶의 변화는?"])
        ],
        .낮잠_줄이기: [
            Milestone(title: "현황 파악", description: "낮잠 패턴", successCriteria: ["현재 낮잠 빈도와 시간을 기록해보세요", "낮잠을 자게 되는 원인을 분석해보세요", "낮잠이 밤 수면에 미치는 영향을 설명해보세요"]),
            Milestone(title: "감량", description: "낮잠 시간 줄이기", successCriteria: ["낮잠을 20분 이하로 줄이기 위한 노력을 기록해보세요", "낮 졸음을 이겨내는 방법(산책, 물 마시기 등)을 설명해보세요", "낮잠 줄이면서 느낀 변화와 어려움은?"]),
            Milestone(title: "제거", description: "낮잠 안 자기", successCriteria: ["낮잠 없이 지내면서 느낀 변화를 기록해보세요", "밤 수면의 질 향상을 설명해보세요", "낮에 활력을 유지하는 비결과 앞으로의 계획은?"])
        ],
        .스트레스_관리하기: [
            Milestone(title: "인식", description: "스트레스 원인 파악", successCriteria: ["나의 주요 스트레스 원인과 상황을 분석해보세요", "스트레스 수준을 측정하는 방법과 현재 상태를 기록해보세요", "배운 스트레스 대처 방법과 적용 계획을 설명해보세요"]),
            Milestone(title: "실천", description: "관리 방법 적용", successCriteria: ["실천 중인 명상/운동과 그 효과를 기록해보세요", "스트레스 해소에 도움이 되는 취미 활동을 설명해보세요", "의도적으로 휴식을 취하는 방법과 느낀 변화는?"]),
            Milestone(title: "습관화", description: "건강한 스트레스 관리", successCriteria: ["스트레스 관리 방법이 습관이 되면서 느낀 변화를 기록해보세요", "스트레스 상황에 능숙하게 대처한 경험을 설명해보세요", "스트레스 관리가 삶의 질에 미친 영향을 정리해보세요"])
        ],
        .분노_조절_가기: [
            Milestone(title: "인식", description: "분노 패턴 파악", successCriteria: ["나를 분노하게 하는 트리거와 상황을 분석해보세요", "분노가 일어날 때 나타나는 신체/감정 반응을 기록해보세요", "분노 조절이 필요한 이유와 개선하고 싶은 점을 설명해보세요"]),
            Milestone(title: "기법 학습", description: "조절 방법", successCriteria: ["배운 분노 조절 기법(심호흡, 타임아웃 등)을 기록해보세요", "전문가 도움이나 프로그램 참여 경험을 설명해보세요", "분노 조절 기법을 적용한 경험과 효과는?"]),
            Milestone(title: "조절", description: "분노 관리", successCriteria: ["분노를 조절하게 되면서 느낀 변화를 기록해보세요", "인간관계 개선과 주변의 반응을 설명해보세요", "분노 조절이 주는 평화로움과 삶의 변화는?"])
        ],
        .우울증_극복하기: [
            Milestone(title: "인식", description: "증상 파악", successCriteria: ["경험한 우울증 증상과 느낀 점을 기록해보세요", "전문가 진단을 받은 과정과 조언을 설명해보세요", "도움을 요청하기까지의 과정과 용기를 기록해보세요"]),
            Milestone(title: "치료", description: "전문 치료", successCriteria: ["받고 있는 상담/치료와 그 과정을 기록해보세요", "필요시 받는 약물 치료와 효과를 설명해보세요", "개선한 생활 습관과 자기 관리 방법을 기록해보세요"]),
            Milestone(title: "회복", description: "우울증 극복", successCriteria: ["증상 호전을 느낀 변화와 과정을 기록해보세요", "일상 회복과 삶의 의욕을 되찾은 경험을 설명해보세요", "재발 예방을 위한 계획과 배운 점을 정리해보세요"])
        ],
        .불안_장애_치료하기: [
            Milestone(title: "진단", description: "전문가 상담", successCriteria: ["불안 장애 증상을 인식하게 된 과정을 기록해보세요", "전문가 진단과 받은 조언을 설명해보세요", "세운 치료 계획과 기대하는 변화를 기록해보세요"]),
            Milestone(title: "치료", description: "치료 진행", successCriteria: ["받고 있는 인지행동치료와 그 효과를 기록해보세요", "배운 이완 기법과 실천 경험을 설명해보세요", "치료 과정에서 배운 점과 어려움을 기록해보세요"]),
            Milestone(title: "회복", description: "증상 개선", successCriteria: ["불안 감소를 느낀 변화와 상황을 기록해보세요", "일상 기능 회복과 삶의 변화를 설명해보세요", "불안 관리 방법과 앞으로의 계획을 정리해보세요"])
        ],
        .공황_장애_극복하기: [
            Milestone(title: "이해", description: "공황 발작 이해", successCriteria: ["공황 발작의 메커니즘과 증상을 이해한 내용을 기록해보세요", "전문가 도움을 받기까지의 과정을 설명해보세요", "배운 발작 대처법과 준비한 것들을 기록해보세요"]),
            Milestone(title: "치료", description: "전문 치료", successCriteria: ["받고 있는 노출 치료와 그 과정을 기록해보세요", "연습하는 호흡 조절과 인지 재구성 기법을 설명해보세요", "치료 과정에서 느낀 변화와 어려움을 기록해보세요"]),
            Milestone(title: "극복", description: "공황 관리", successCriteria: ["발작 빈도 감소와 증상 완화를 기록해보세요", "일상 회복과 활동 범위 확대를 설명해보세요", "공황 장애 극복이 주는 의미와 자신감의 변화는?"])
        ],
        .심리_상담_받기: [
            Milestone(title: "상담사 찾기", description: "적합한 상담사", successCriteria: ["심리 상담이 필요하다고 느낀 계기를 기록해보세요", "상담사를 찾는 과정과 선택 기준을 설명해보세요", "첫 상담 예약 전 느낀 감정과 기대를 기록해보세요"]),
            Milestone(title: "상담 시작", description: "정기 상담", successCriteria: ["정기 상담을 통해 다루는 주제와 과정을 기록해보세요", "상담에서 솔직하게 이야기하면서 느낀 점을 설명해보세요", "상담 후 실천하는 것들과 그 효과를 기록해보세요"]),
            Milestone(title: "성장", description: "심리적 성장", successCriteria: ["상담을 통해 해결되고 있는 문제와 변화를 기록해보세요", "깊어진 자기 이해와 발견한 점을 설명해보세요", "심리 상담이 삶에 미친 영향과 성장을 정리해보세요"])
        ],
        .정신_건강_검진하기: [
            Milestone(title: "검진 예약", description: "전문 기관 방문", successCriteria: ["정신건강 검진 기관 선택 과정과 기준을 기록해보세요", "예약하면서 느낀 감정과 기대를 설명해보세요", "검진을 위해 준비한 것들을 기록해보세요"]),
            Milestone(title: "검진 완료", description: "검사 수행", successCriteria: ["받은 검진 항목과 과정을 기록해보세요", "검진 결과와 전문가 상담 내용을 설명해보세요", "검진을 통해 배운 점과 느낀 점을 기록해보세요"]),
            Milestone(title: "관리 시작", description: "필요시 치료", successCriteria: ["검진 결과에 따라 시작한 조치를 기록해보세요", "정기 검진 계획과 정신건강 관리 방법을 설명해보세요", "정신 건강에 대한 인식 변화와 앞으로의 계획은?"])
        ],
        .긍정적_사고하기: [
            Milestone(title: "인식", description: "부정적 사고 인식", successCriteria: ["나의 부정적 사고 패턴과 특징을 분석해보세요", "배운 인지 왜곡의 종류와 내게 해당하는 것을 기록해보세요", "긍정적으로 변화하고 싶은 이유와 목표를 설명해보세요"]),
            Milestone(title: "실천", description: "긍정 전환", successCriteria: ["부정적 생각을 긍정으로 전환하는 방법과 경험을 기록해보세요", "감사 일기나 긍정 확언 실천 경험을 설명해보세요", "긍정적 자기 대화를 하면서 느낀 변화는?"]),
            Milestone(title: "습관화", description: "긍정적 마인드셋", successCriteria: ["긍정적 사고가 습관이 되면서 느낀 변화를 기록해보세요", "행복감 증가와 삶에 대한 태도 변화를 설명해보세요", "긍정적 마인드셋이 주는 의미와 앞으로의 계획은?"])
        ],
        .감사_일기: [
            Milestone(title: "시작", description: "일기 쓰기 시작", successCriteria: ["준비한 감사 노트와 선택 이유를 기록해보세요", "매일 쓰는 감사 3가지의 예시와 느낀 점을 설명해보세요", "감사 일기 쓰는 시간과 루틴을 기록해보세요"]),
            Milestone(title: "습관화", description: "30일 연속", successCriteria: ["30일 연속 쓰면서 어려웠던 점과 극복 방법을 기록해보세요", "감사함을 더 느끼게 된 변화를 설명해보세요", "작은 것에서 감사를 발견한 경험을 공유해보세요"]),
            Milestone(title: "정착", description: "삶의 변화", successCriteria: ["감사 일기가 습관이 되면서 느낀 삶의 변화를 기록해보세요", "행복감과 마음의 평화를 설명해보세요", "감사 일기가 주는 의미와 앞으로의 계획은?"])
        ],
        .하루_30분_산책하기: [
            Milestone(title: "시작", description: "산책 시작", successCriteria: ["산책을 시작하면서 정한 시간과 코스를 기록해보세요", "처음 걷기 시작한 시간과 느낀 점을 설명해보세요", "산책 코스 선택 기준과 좋아하는 장소를 공유해보세요"]),
            Milestone(title: "늘리기", description: "20분 이상", successCriteria: ["20분 이상 걸으면서 느낀 변화와 효과를 기록해보세요", "산책이 즐거워지면서 발견한 것들을 설명해보세요", "날씨와 상관없이 걷기 위한 나만의 전략은?"]),
            Milestone(title: "30분 달성", description: "습관화", successCriteria: ["매일 30분 산책이 습관이 되면서 느낀 변화를 기록해보세요", "건강과 기분에 미친 영향을 설명해보세요", "산책 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .계단_오르기: [
            Milestone(title: "시작", description: "엘리베이터 대신", successCriteria: ["계단 이용을 시작하면서 정한 규칙과 목표를 기록해보세요", "처음 계단 오르기 시작한 경험과 느낀 점을 설명해보세요", "점점 늘려가는 과정과 변화를 기록해보세요"]),
            Milestone(title: "늘리기", description: "5층 이상", successCriteria: ["5층 이상 계단을 이용하면서 느낀 체력 변화를 기록해보세요", "숨이 덜 차게 되면서 느낀 성장을 설명해보세요", "계단 오르기가 습관이 되어가는 과정은?"]),
            Milestone(title: "습관화", description: "항상 계단", successCriteria: ["항상 계단을 선택하게 되면서 느낀 변화를 기록해보세요", "체력과 건강 향상을 설명해보세요", "계단 습관이 주는 의미와 앞으로의 운동 계획은?"])
        ],
        .자전거_출퇴근하기: [
            Milestone(title: "준비", description: "자전거 준비", successCriteria: ["자전거와 준비한 장비들을 기록해보세요", "출퇴근 경로 파악 과정과 선택한 코스를 설명해보세요", "준비한 안전 장비와 안전 수칙을 기록해보세요"]),
            Milestone(title: "시작", description: "주 1-2회", successCriteria: ["첫 자전거 출퇴근 경험과 느낀 점을 기록해보세요", "안전한 라이딩을 위해 신경 쓰는 점을 설명해보세요", "체력적 도전과 적응 과정을 기록해보세요"]),
            Milestone(title: "정착", description: "주 3회 이상", successCriteria: ["주 3회 이상 자전거 출퇴근이 주는 효과를 기록해보세요", "건강과 기분 변화를 설명해보세요", "자전거 출퇴근이 주는 의미와 즐거움은?"])
        ],
        .걷기_출퇴근하기: [
            Milestone(title: "가능성 확인", description: "거리/시간 확인", successCriteria: ["출퇴근 거리와 소요 시간을 측정한 결과를 기록해보세요", "걷기 출퇴근을 위해 준비한 것들을 설명해보세요", "걷기 출퇴근에 도전하는 이유와 기대하는 효과는?"]),
            Milestone(title: "시작", description: "주 1-2회", successCriteria: ["첫 걷기 출퇴근 경험과 느낀 점을 기록해보세요", "시간 여유를 두는 방법과 루틴을 설명해보세요", "피로 관리와 체력 적응 과정을 기록해보세요"]),
            Milestone(title: "정착", description: "주 3회 이상", successCriteria: ["주 3회 이상 걷기 출퇴근이 주는 효과를 기록해보세요", "건강과 정신적 변화를 설명해보세요", "걷기 출퇴근이 주는 의미와 앞으로의 계획은?"])
        ],
        .엘리베이터_안_타기: [
            Milestone(title: "시작", description: "저층 계단 이용", successCriteria: ["계단 이용을 시작하면서 정한 규칙을 기록해보세요", "의식적으로 계단을 선택하면서 느낀 점을 설명해보세요", "시작 과정에서의 어려움과 동기 부여 방법은?"]),
            Milestone(title: "확대", description: "더 높은 층", successCriteria: ["계단 이용 층수를 늘리면서 느낀 체력 변화를 기록해보세요", "체력 향상을 느낀 경험과 변화를 설명해보세요", "더 높은 층까지 도전하면서 배운 점은?"]),
            Milestone(title: "완료", description: "항상 계단", successCriteria: ["엘리베이터 없이 지내면서 느낀 변화를 기록해보세요", "건강과 체력 향상을 설명해보세요", "이 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .앉아있는_시간_줄이기: [
            Milestone(title: "측정", description: "현재 시간 파악", successCriteria: ["하루 앉아있는 시간을 측정한 방법과 결과를 기록해보세요", "장시간 앉아있기의 건강 위험을 알게 된 내용을 설명해보세요", "앉아있는 시간을 줄이기로 한 이유와 목표는?"]),
            Milestone(title: "감량", description: "30분마다 일어나기", successCriteria: ["30분마다 일어나기 위한 방법과 알림 설정을 기록해보세요", "일어나서 하는 스트레칭이나 활동을 설명해보세요", "앉아있는 시간 감소와 느낀 변화를 기록해보세요"]),
            Milestone(title: "습관화", description: "움직이는 생활", successCriteria: ["자주 움직이는 생활이 습관이 되면서 느낀 변화를 기록해보세요", "건강과 에너지 향상을 설명해보세요", "활동적인 생활이 주는 의미와 앞으로의 계획은?"])
        ],
        .스탠딩_데스크하기: [
            Milestone(title: "준비", description: "스탠딩 데스크 구비", successCriteria: ["선택한 스탠딩 데스크와 선택 기준을 기록해보세요", "높이 조절과 인체공학적 설정 방법을 설명해보세요", "발 피로 매트 등 준비한 악세서리를 기록해보세요"]),
            Milestone(title: "적응", description: "하루 2-3시간", successCriteria: ["서서 일하기 시작하면서 느낀 변화와 어려움을 기록해보세요", "발 피로 관리 방법과 효과를 설명해보세요", "앉기/서기를 번갈아 하면서 발견한 최적의 리듬은?"]),
            Milestone(title: "습관화", description: "반반 사용", successCriteria: ["앉기/서기를 반반 사용하게 되면서 느낀 변화를 기록해보세요", "건강과 집중력 향상을 설명해보세요", "스탠딩 데스크가 주는 효과와 앞으로의 계획은?"])
        ],
        .스트레칭_습관_만들기: [
            Milestone(title: "시작", description: "기본 스트레칭", successCriteria: ["배운 기본 스트레칭 동작과 루틴을 기록해보세요", "아침/저녁 스트레칭 시간과 효과를 설명해보세요", "스트레칭을 시작하면서 느낀 초기 변화는?"]),
            Milestone(title: "늘리기", description: "10분 이상", successCriteria: ["10분 이상 스트레칭 루틴과 포함된 동작을 기록해보세요", "전신 스트레칭의 효과와 느낀 변화를 설명해보세요", "매일 스트레칭하기 위한 나만의 동기 부여 방법은?"]),
            Milestone(title: "습관화", description: "생활 속 스트레칭", successCriteria: ["스트레칭이 습관이 되면서 느낀 변화를 기록해보세요", "유연성 향상과 몸의 편안함을 설명해보세요", "스트레칭 습관이 주는 건강 효과와 앞으로의 계획은?"])
        ],
        .마사지_정기적으로하기: [
            Milestone(title: "시작", description: "마사지 시도", successCriteria: ["방문한 마사지샵과 받아본 마사지 종류를 기록해보세요", "좋아하는 마사지 종류와 그 이유를 설명해보세요", "마사지의 효과와 정기적으로 받기로 한 이유는?"]),
            Milestone(title: "정기화", description: "월 2회 이상", successCriteria: ["정기 마사지 루틴과 선호하는 샵/마사지사를 기록해보세요", "정기 마사지로 느낀 몸 상태 변화를 설명해보세요", "단골 샵을 찾게 된 과정과 만족하는 점은?"]),
            Milestone(title: "습관화", description: "건강 관리", successCriteria: ["정기 마사지가 건강 관리 루틴이 되면서 느낀 변화를 기록해보세요", "근육 뭉침 감소와 스트레스 해소 효과를 설명해보세요", "마사지 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .발_마사지_받기: [
            Milestone(title: "시작", description: "발 마사지 경험", successCriteria: ["첫 발 마사지 경험과 느낀 효과를 기록해보세요", "좋아하는 발 마사지 샵과 선택 기준을 설명해보세요", "발 마사지의 효과와 정기적으로 받기로 한 이유는?"]),
            Milestone(title: "정기화", description: "월 2회 이상", successCriteria: ["정기 발 마사지 루틴과 느낀 변화를 기록해보세요", "발 건강 향상과 전신 피로 해소 효과를 설명해보세요", "발 마사지가 주는 릴랙스 효과를 기록해보세요"]),
            Milestone(title: "습관화", description: "셀프 마사지 병행", successCriteria: ["발 마사지가 습관이 되면서 느낀 변화를 기록해보세요", "배운 셀프 마사지 방법과 효과를 설명해보세요", "발 마사지 습관이 전신 건강에 미친 영향은?"])
        ],
        .족욕_습관_만들기: [
            Milestone(title: "준비", description: "족욕 도구 구비", successCriteria: ["구입한 족욕기와 선택 기준을 기록해보세요", "준비한 족욕 소금, 허브, 입욕제를 설명해보세요", "족욕 시간과 루틴 계획을 기록해보세요"]),
            Milestone(title: "시작", description: "주 2-3회", successCriteria: ["족욕 경험과 느낀 릴랙스 효과를 기록해보세요", "적정 시간과 온도에서 느낀 편안함을 설명해보세요", "족욕이 하루 마무리에 주는 효과는?"]),
            Milestone(title: "습관화", description: "매일 족욕", successCriteria: ["매일 족욕이 습관이 되면서 느낀 변화를 기록해보세요", "수면의 질 향상과 피로 해소 효과를 설명해보세요", "족욕 습관이 주는 의미와 앞으로의 계획은?"])
        ],
        .반신욕_습관_만들기: [
            Milestone(title: "준비", description: "환경 준비", successCriteria: ["반신욕을 위한 환경과 준비한 것들을 기록해보세요", "적정 온도와 시간에 대해 알아본 내용을 설명해보세요", "준비한 입욕제와 기대하는 효과를 기록해보세요"]),
            Milestone(title: "시작", description: "주 2-3회", successCriteria: ["반신욕 경험과 느낀 효과를 기록해보세요", "20-30분 반신욕으로 느낀 릴랙스와 땀 효과를 설명해보세요", "반신욕이 몸과 마음에 주는 영향은?"]),
            Milestone(title: "습관화", description: "정기 반신욕", successCriteria: ["정기 반신욕이 습관이 되면서 느낀 변화를 기록해보세요", "피로 해소와 건강 향상 효과를 설명해보세요", "반신욕 습관이 주는 의미와 앞으로의 계획은?"])
        ]
    ]

    private static let positionData: [Self: LocationInfo] = [:]
}

