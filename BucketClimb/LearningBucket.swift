//
// CategoryBuckets.swift
// BucketClimb
//
// 카테고리별로 관리되는 버킷리스트 항목 enum
// Auto-generated
//

import Foundation

// MARK: - Category-Specific Bucket Enums

enum LearningBucket: String, Codable, CaseIterable {
    case 영어_유창하게_구사하기 = "영어 유창하게 구사하기"
    case 중국어_HSK_6급_취득하기 = "중국어 HSK 6급 취득하기"
    case 일본어_JLPT_N1_취득하기 = "일본어 JLPT N1 취득하기"
    case 프랑스어_유창하게_구사하기 = "프랑스어 유창하게 구사하기"
    case 스페인어_배우기 = "스페인어 배우기"
    case 코딩_마스터하기 = "코딩 마스터하기"
    case AI_머신러닝_전문가_되기 = "AI/머신러닝 전문가 되기"
    case 사진_작가_자격증_취득하기 = "사진 작가 자격증 취득하기"
    case 바리스타_자격증_취득하기 = "바리스타 자격증 취득하기"
    case 소믈리에_자격증_취득하기 = "소믈리에 자격증 취득하기"
    case 요리사_자격증_취득하기 = "요리사 자격증 취득하기"
    case 공인중개사_자격증_취득하기 = "공인중개사 자격증 취득하기"
    case 재무설계사_자격증_취득하기 = "재무설계사 자격증 취득하기"
    case MBA_학위_취득하기 = "MBA 학위 취득하기"
    case 박사_학위_취득하기 = "박사 학위 취득하기"
    case 독일어_배우기 = "독일어 배우기"
    case 이탈리아어_배우기 = "이탈리아어 배우기"
    case 포르투갈어_배우기 = "포르투갈어 배우기"
    case 러시아어_배우기 = "러시아어 배우기"
    case 아랍어_배우기 = "아랍어 배우기"
    case 한국어_능력시험_6급하기 = "한국어 능력시험 6급하기"
    case TOEIC_990점하기 = "TOEIC 990점하기"
    case TOEFL_120점하기 = "TOEFL 120점하기"
    case IELTS_9점_취득하기 = "IELTS 9점 취득하기"
    case OPIc_AL하기 = "OPIc AL하기"
    case 번역가_자격증_취득하기 = "번역가 자격증 취득하기"
    case 통역사_자격증_취득하기 = "통역사 자격증 취득하기"
    case 교사_자격증_취득하기 = "교사 자격증 취득하기"
    case 변호사_시험하기 = "변호사 시험하기"
    case 회계사_자격증_취득하기 = "회계사 자격증 취득하기"
    case 세무사_자격증_취득하기 = "세무사 자격증 취득하기"
    case 감정평가사하기 = "감정평가사하기"
    case 관세사_자격증_취득하기 = "관세사 자격증 취득하기"
    case 변리사_자격증_취득하기 = "변리사 자격증 취득하기"
    case 노무사_자격증_취득하기 = "노무사 자격증 취득하기"
    case 행정사_자격증_취득하기 = "행정사 자격증 취득하기"
    case 법무사_자격증_취득하기 = "법무사 자격증 취득하기"
    case PMP_자격증_취득하기 = "PMP 자격증 취득하기"
    case 정보처리기사하기 = "정보처리기사하기"
    case 네트워크관리사하기 = "네트워크관리사하기"
    case 리눅스마스터하기 = "리눅스마스터하기"
    case SQLD_자격증_취득하기 = "SQLD 자격증 취득하기"
    case 빅데이터분석기사하기 = "빅데이터분석기사하기"
    case AWS_자격증_취득하기 = "AWS 자격증 취득하기"
    case 구글_클라우드_자격증_취득하기 = "구글 클라우드 자격증 취득하기"
    case Azure_자격증_취득하기 = "Azure 자격증 취득하기"
    case CISSP_자격증_취득하기 = "CISSP 자격증 취득하기"
    case CEH_자격증_취득하기 = "CEH 자격증 취득하기"
    case CCNA_자격증_취득하기 = "CCNA 자격증 취득하기"
    case CCNP_자격증_취득하기 = "CCNP 자격증 취득하기"
    case 데이터사이언티스트하기 = "데이터사이언티스트하기"
    case 풀스택_개발자하기 = "풀스택 개발자하기"
    case iOS_개발자하기 = "iOS 개발자하기"
    case 안드로이드_개발자하기 = "안드로이드 개발자하기"
    case 블록체인_개발자하기 = "블록체인 개발자하기"
    case 게임_개발자하기 = "게임 개발자하기"
    case Unity_마스터하기 = "Unity 마스터하기"
    case Unreal_Engine_마스터하기 = "Unreal Engine 마스터하기"
    case _3D_모델링하기 = "3D 모델링하기"
    case Maya_마스터하기 = "Maya 마스터하기"
    case Blender_마스터하기 = "Blender 마스터하기"
    case 포토샵_전문가하기 = "포토샵 전문가하기"
    case 일러스트레이터_전문가하기 = "일러스트레이터 전문가하기"
    case 프리미어_프로_전문가하기 = "프리미어 프로 전문가하기"
    case 애프터_이펙트_전문가하기 = "애프터 이펙트 전문가하기"
    case 파이널_컷_프로하기 = "파이널 컷 프로하기"
    case 다빈치_리졸브하기 = "다빈치 리졸브하기"
    case 캐드_자격증_취득하기 = "캐드 자격증 취득하기"
    case 건축기사_자격증_취득하기 = "건축기사 자격증 취득하기"
    case 실내건축기사하기 = "실내건축기사하기"
    case 조경기사_자격증_취득하기 = "조경기사 자격증 취득하기"
    case 토목기사_자격증_취득하기 = "토목기사 자격증 취득하기"
    case 전기기사_자격증_취득하기 = "전기기사 자격증 취득하기"
    case 기계기사_자격증_취득하기 = "기계기사 자격증 취득하기"
    case 화학분석기사하기 = "화학분석기사하기"
    case 환경기사_자격증_취득하기 = "환경기사 자격증 취득하기"
    case 에너지관리기사하기 = "에너지관리기사하기"
    case 소방설비기사하기 = "소방설비기사하기"
    case 위험물기능사하기 = "위험물기능사하기"
    case 가스기사_자격증_취득하기 = "가스기사 자격증 취득하기"
    case 항공정비사하기 = "항공정비사하기"
    case 자동차정비기사하기 = "자동차정비기사하기"
    case 용접기능사하기 = "용접기능사하기"
    case 보일러기능사하기 = "보일러기능사하기"
    case 냉동기계기사하기 = "냉동기계기사하기"
    case 위생사_자격증_취득하기 = "위생사 자격증 취득하기"
    case 영양사_자격증_취득하기 = "영양사 자격증 취득하기"
    case 임상영양사하기 = "임상영양사하기"
    case 간호사_자격증_취득하기 = "간호사 자격증 취득하기"
    case 약사_자격증_취득하기 = "약사 자격증 취득하기"
    case 수의사_자격증_취득하기 = "수의사 자격증 취득하기"
    case 물리치료사하기 = "물리치료사하기"
    case 작업치료사하기 = "작업치료사하기"
    case 언어치료사하기 = "언어치료사하기"
    case 임상심리사하기 = "임상심리사하기"
    case 상담심리사하기 = "상담심리사하기"
    case 사회복지사_1급하기 = "사회복지사 1급하기"
    case 보육교사_자격증_취득하기 = "보육교사 자격증 취득하기"
    case 유치원_정교사하기 = "유치원 정교사하기"

    var thumbnail: String {
        Self.metadata[self]?.0 ?? "book.fill"
    }

    var backgroundImage: String {
        Self.metadata[self]?.1 ?? ""
    }

    var position: LocationInfo? {
        Self.positionData[self]
    }

    private static let metadata: [Self: (String, String)] = [
        .영어_유창하게_구사하기: ("text.bubble.fill", "english_fluent"),
        .중국어_HSK_6급_취득하기: ("character.textbox", "chinese_hsk6"),
        .일본어_JLPT_N1_취득하기: ("character.book.closed.fill", "japanese_n1"),
        .프랑스어_유창하게_구사하기: ("bubble.left.and.bubble.right.fill", "french_master"),
        .스페인어_배우기: ("globe.americas.fill", "spanish_learning"),
        .코딩_마스터하기: ("chevron.left.forwardslash.chevron.right", "coding_master"),
        .AI_머신러닝_전문가_되기: ("brain.fill", "ai_ml_expert"),
        .사진_작가_자격증_취득하기: ("camera.aperture", "photography_license"),
        .바리스타_자격증_취득하기: ("cup.and.saucer.fill", "barista_license"),
        .소믈리에_자격증_취득하기: ("wineglass", "sommelier_license"),
        .요리사_자격증_취득하기: ("flame.fill", "chef_license"),
        .공인중개사_자격증_취득하기: ("building.fill", "realtor_license"),
        .재무설계사_자격증_취득하기: ("chart.pie.fill", "financial_planner"),
        .MBA_학위_취득하기: ("graduationcap.fill", "mba_degree"),
        .박사_학위_취득하기: ("doc.text.fill", "phd_degree"),
        .독일어_배우기: ("globe.europe.africa.fill", "german_learning"),
        .이탈리아어_배우기: ("globe.europe.africa.fill", "italian_learning"),
        .포르투갈어_배우기: ("globe.americas.fill", "portuguese_learning"),
        .러시아어_배우기: ("character.book.closed.fill", "russian_learning"),
        .아랍어_배우기: ("character.textbox", "arabic_learning"),
        .한국어_능력시험_6급하기: ("character.book.closed.fill", "topik_6"),
        .TOEIC_990점하기: ("text.badge.checkmark", "toeic_990"),
        .TOEFL_120점하기: ("text.badge.checkmark", "toefl_120"),
        .IELTS_9점_취득하기: ("text.badge.checkmark", "ielts_9"),
        .OPIc_AL하기: ("text.bubble.fill", "opic_al"),
        .번역가_자격증_취득하기: ("doc.text.fill", "translator_license"),
        .통역사_자격증_취득하기: ("person.2.fill", "interpreter_license"),
        .교사_자격증_취득하기: ("person.fill.viewfinder", "teacher_license"),
        .변호사_시험하기: ("book.closed.fill", "lawyer_exam"),
        .회계사_자격증_취득하기: ("doc.text.fill", "cpa_license"),
        .세무사_자격증_취득하기: ("doc.text.fill", "tax_license"),
        .감정평가사하기: ("building.fill", "appraiser_license"),
        .관세사_자격증_취득하기: ("shippingbox.fill", "customs_license"),
        .변리사_자격증_취득하기: ("doc.text.fill", "patent_attorney"),
        .노무사_자격증_취득하기: ("person.3.fill", "labor_attorney"),
        .행정사_자격증_취득하기: ("folder.fill", "admin_attorney"),
        .법무사_자격증_취득하기: ("doc.text.fill", "legal_attorney"),
        .PMP_자격증_취득하기: ("chart.bar.fill", "pmp_license"),
        .정보처리기사하기: ("desktopcomputer", "computer_engineer"),
        .네트워크관리사하기: ("network", "network_admin"),
        .리눅스마스터하기: ("terminal.fill", "linux_master"),
        .SQLD_자격증_취득하기: ("cylinder.fill", "sqld_license"),
        .빅데이터분석기사하기: ("chart.bar.xaxis", "bigdata_analyst"),
        .AWS_자격증_취득하기: ("cloud.fill", "aws_license"),
        .구글_클라우드_자격증_취득하기: ("cloud.fill", "gcp_license"),
        .Azure_자격증_취득하기: ("cloud.fill", "azure_license"),
        .CISSP_자격증_취득하기: ("lock.shield.fill", "cissp_license"),
        .CEH_자격증_취득하기: ("lock.fill", "ceh_license"),
        .CCNA_자격증_취득하기: ("network", "ccna_license"),
        .CCNP_자격증_취득하기: ("network", "ccnp_license"),
        .데이터사이언티스트하기: ("chart.xyaxis.line", "data_scientist"),
        .풀스택_개발자하기: ("chevron.left.forwardslash.chevron.right", "fullstack_dev"),
        .iOS_개발자하기: ("apple.logo", "ios_developer"),
        .안드로이드_개발자하기: ("android", "android_developer"),
        .블록체인_개발자하기: ("link.circle.fill", "blockchain_dev"),
        .게임_개발자하기: ("gamecontroller.fill", "game_developer"),
        .Unity_마스터하기: ("cube.fill", "unity_master"),
        .Unreal_Engine_마스터하기: ("cube.fill", "unreal_master"),
        ._3D_모델링하기: ("cube.transparent.fill", "3d_modeling"),
        .Maya_마스터하기: ("cube.fill", "maya_master"),
        .Blender_마스터하기: ("cube.fill", "blender_master"),
        .포토샵_전문가하기: ("photo.fill", "photoshop_expert"),
        .일러스트레이터_전문가하기: ("paintbrush.fill", "illustrator_expert"),
        .프리미어_프로_전문가하기: ("video.fill", "premiere_expert"),
        .애프터_이펙트_전문가하기: ("sparkles", "aftereffects_expert"),
        .파이널_컷_프로하기: ("video.fill", "finalcut_expert"),
        .다빈치_리졸브하기: ("video.circle.fill", "davinci_resolve"),
        .캐드_자격증_취득하기: ("square.and.pencil", "cad_license"),
        .건축기사_자격증_취득하기: ("building.2.fill", "architect_license"),
        .실내건축기사하기: ("house.fill", "interior_license"),
        .조경기사_자격증_취득하기: ("tree.fill", "landscape_license"),
        .토목기사_자격증_취득하기: ("road.lanes", "civil_engineer"),
        .전기기사_자격증_취득하기: ("bolt.fill", "electric_engineer"),
        .기계기사_자격증_취득하기: ("gearshape.fill", "mechanical_engineer"),
        .화학분석기사하기: ("testtube.2", "chemical_analyst"),
        .환경기사_자격증_취득하기: ("leaf.fill", "environmental_engineer"),
        .에너지관리기사하기: ("bolt.circle.fill", "energy_manager"),
        .소방설비기사하기: ("flame.fill", "fire_equipment_engineer"),
        .위험물기능사하기: ("exclamationmark.triangle.fill", "hazmat_technician"),
        .가스기사_자격증_취득하기: ("flame.circle.fill", "gas_engineer"),
        .항공정비사하기: ("airplane", "aircraft_mechanic"),
        .자동차정비기사하기: ("car.fill", "auto_mechanic"),
        .용접기능사하기: ("flame.fill", "welder_license"),
        .보일러기능사하기: ("flame.circle.fill", "boiler_technician"),
        .냉동기계기사하기: ("snowflake", "refrigeration_engineer"),
        .위생사_자격증_취득하기: ("cross.fill", "hygienist_license"),
        .영양사_자격증_취득하기: ("fork.knife.circle.fill", "dietitian_license"),
        .임상영양사하기: ("cross.case.fill", "clinical_dietitian"),
        .간호사_자격증_취득하기: ("cross.case.fill", "nurse_license"),
        .약사_자격증_취득하기: ("cross.vial.fill", "pharmacist_license"),
        .수의사_자격증_취득하기: ("pawprint.circle.fill", "veterinarian_license"),
        .물리치료사하기: ("figure.walk", "physical_therapist"),
        .작업치료사하기: ("hand.raised.fill", "occupational_therapist"),
        .언어치료사하기: ("text.bubble.fill", "speech_therapist"),
        .임상심리사하기: ("brain.fill", "clinical_psychologist"),
        .상담심리사하기: ("person.2.fill", "counseling_psychologist"),
        .사회복지사_1급하기: ("heart.circle.fill", "social_worker_1"),
        .보육교사_자격증_취득하기: ("figure.and.child.holdinghands", "childcare_teacher"),
        .유치원_정교사하기: ("figure.2.and.child.holdinghands", "kindergarten_teacher"),
    ]

    var hasCustomMilestones: Bool {
        !milestones.isEmpty
    }

    var milestones: [Milestone] {
        Self.milestonesData[self] ?? []
    }

    private static let milestonesData: [Self: [Milestone]] = [
        .영어_유창하게_구사하기: [
            Milestone(title: "기초 다지기", description: "기본 문법과 어휘 학습", successCriteria: [
                "영어 발음 규칙에서 가장 어렵게 느꼈던 부분과 극복 방법을 설명해보세요",
                "영어로 자기소개를 하면서 느낀 점과 개선하고 싶은 부분을 기록해보세요",
                "지금까지 암기한 어휘 학습 방법과 효과적이었던 전략을 공유해보세요"
            ]),
            Milestone(title: "중급 도달", description: "일상 대화 가능 수준", successCriteria: [
                "자막 없이 영어 콘텐츠를 시청한 경험과 이해도 변화를 기록해보세요",
                "원어민과 대화하면서 느낀 점과 부족한 부분을 설명해보세요",
                "영어로 글을 쓰면서 발전한 부분과 어려운 점을 기록해보세요"
            ]),
            Milestone(title: "고급 완성", description: "비즈니스/학술 수준의 영어 구사", successCriteria: [
                "영어로 회의나 업무를 진행한 경험과 느낀 성장을 기록해보세요",
                "영어 프레젠테이션을 하면서 배운 점과 팁을 설명해보세요",
                "전문 분야 문서 작성 경험과 영어 유창성이 주는 의미를 정리해보세요"
            ])
        ],
        .중국어_HSK_6급_취득하기: [
            Milestone(title: "HSK 1-2급 통과", description: "기초 중국어 마스터", successCriteria: [
                "병음과 성조 학습에서 어려웠던 점과 극복 방법을 기록해보세요",
                "지금까지 익힌 간체자와 한자 학습 방법을 설명해보세요",
                "중국어로 기본 인사와 숫자를 말할 때 느끼는 자신감 변화를 기록해보세요"
            ]),
            Milestone(title: "HSK 3-4급 통과", description: "중급 중국어 달성", successCriteria: [
                "중국어로 일상 대화를 하면서 느낀 점과 부족한 부분을 설명해보세요",
                "한자 암기 방법과 효과적이었던 학습 전략을 공유해보세요",
                "중국어 뉴스나 기사를 읽으면서 발견한 학습 포인트를 기록해보세요"
            ]),
            Milestone(title: "HSK 5급 통과", description: "고급 중국어 진입", successCriteria: [
                "자막 없이 중국 콘텐츠를 시청한 경험과 이해도 변화를 기록해보세요",
                "신문 사설이나 논설문을 읽으면서 배운 표현과 어휘를 설명해보세요",
                "중국어로 발표하거나 연설한 경험과 느낀 성장을 기록해보세요"
            ]),
            Milestone(title: "HSK 6급 최종 합격", description: "원어민 수준 달성", successCriteria: [
                "HSK 6급 준비 과정에서 효과적이었던 학습 전략을 설명해보세요",
                "중국어로 학술적 글을 작성한 경험과 배운 점을 기록해보세요",
                "HSK 6급 합격이 주는 의미와 앞으로의 중국어 활용 계획은?"
            ])
        ],
        .TOEIC_990점하기: [
            Milestone(title: "기본기 다지기", description: "TOEIC 600점 달성", successCriteria: [
                "TOEIC 문법 학습에서 어려웠던 부분과 극복 방법을 설명해보세요",
                "Part 5,6 문제 풀이에서 발견한 나만의 전략을 기록해보세요",
                "비즈니스 어휘 학습 방법과 효과적이었던 방식을 공유해보세요"
            ]),
            Milestone(title: "중급 달성", description: "TOEIC 800점 달성", successCriteria: [
                "Part 7 긴 지문 독해 실력 향상을 위해 실천한 방법을 기록해보세요",
                "LC Part 3,4 정답률을 높이기 위한 학습 전략을 설명해보세요",
                "시간 관리 노하우와 문제 풀이 속도 향상 방법을 공유해보세요"
            ]),
            Milestone(title: "고급 달성", description: "TOEIC 950점 이상", successCriteria: [
                "각 Part별 정답률 분석과 약점 보완 전략을 기록해보세요",
                "자주 틀리는 유형과 그에 대한 대비 방법을 설명해보세요",
                "950점 이상 달성을 위해 집중한 학습 포인트를 공유해보세요"
            ]),
            Milestone(title: "만점 달성", description: "TOEIC 990점 취득", successCriteria: [
                "LC 만점을 위한 학습 방법과 실전 팁을 기록해보세요",
                "RC 만점을 위한 학습 방법과 실전 팁을 기록해보세요",
                "TOEIC 990점 달성 여정과 이 성취가 주는 의미를 정리해보세요"
            ])
        ],
        .코딩_마스터하기: [
            Milestone(title: "언어 선택 및 기초", description: "첫 프로그래밍 언어 마스터", successCriteria: [
                "첫 프로그래밍 언어로 선택한 이유와 학습 과정을 설명해보세요",
                "변수, 조건문, 반복문을 이해하며 겪었던 어려움과 극복 방법을 기록해보세요",
                "직접 작성한 첫 프로그램과 그 과정에서 배운 점을 공유해보세요"
            ]),
            Milestone(title: "자료구조/알고리즘", description: "CS 기초 이해", successCriteria: [
                "자료구조(배열, 리스트, 스택, 큐) 학습 경험과 활용 사례를 설명해보세요",
                "정렬/탐색 알고리즘을 구현하면서 느낀 점과 최적화 경험을 기록해보세요",
                "코딩 테스트 문제를 풀면서 발전한 사고력에 대해 설명해보세요"
            ]),
            Milestone(title: "프로젝트 경험", description: "실전 개발 경험", successCriteria: [
                "완성한 개인 프로젝트와 그 과정에서 배운 점을 설명해보세요",
                "Git을 활용한 버전 관리 경험과 협업에서의 활용법을 기록해보세요",
                "협업 프로젝트에서 맡은 역할과 배운 교훈을 공유해보세요"
            ]),
            Milestone(title: "전문 분야 확립", description: "특정 분야 전문가", successCriteria: [
                "전문 분야를 선택한 이유와 그 분야의 매력을 설명해보세요",
                "프레임워크 학습 과정과 숙달을 위해 노력한 방법을 기록해보세요",
                "실무 수준 프로젝트 경험과 코딩 마스터로서의 성장을 정리해보세요"
            ])
        ],
        .AI_머신러닝_전문가_되기: [
            Milestone(title: "수학적 기초", description: "선형대수, 확률, 통계 이해", successCriteria: [
                "행렬 연산 학습 과정과 AI에서의 활용 방법을 설명해보세요",
                "확률/통계 개념 학습에서 어려웠던 부분과 극복 방법을 기록해보세요",
                "미적분이 머신러닝에서 어떻게 쓰이는지 이해한 과정을 설명해보세요"
            ]),
            Milestone(title: "ML 기초", description: "머신러닝 알고리즘 이해", successCriteria: [
                "지도학습/비지도학습을 배우며 흥미로웠던 점을 설명해보세요",
                "회귀, 분류, 클러스터링을 구현하면서 배운 점을 기록해보세요",
                "scikit-learn 등 라이브러리 활용 경험과 느낀 점을 공유해보세요"
            ]),
            Milestone(title: "딥러닝 입문", description: "신경망 이해 및 구현", successCriteria: [
                "CNN, RNN의 원리를 이해하는 과정과 인사이트를 설명해보세요",
                "TensorFlow/PyTorch 학습 경험과 프레임워크 선택 이유를 기록해보세요",
                "이미지 분류 모델을 직접 구현하며 배운 점을 공유해보세요"
            ]),
            Milestone(title: "실전 프로젝트", description: "AI 프로젝트 완성", successCriteria: [
                "실제 데이터로 모델을 학습시킨 경험과 과정을 설명해보세요",
                "모델 성능 개선을 위해 시도한 방법과 결과를 기록해보세요",
                "AI 프로젝트 포트폴리오와 전문가로서의 성장을 정리해보세요"
            ])
        ],
        .MBA_학위_취득하기: [
            Milestone(title: "준비 단계", description: "MBA 입학 준비", successCriteria: [
                "목표 학교 선정 과정과 선택 기준을 설명해보세요",
                "GMAT/GRE 준비 과정에서 효과적이었던 학습 방법을 기록해보세요",
                "추천서 확보 과정과 멘토들에게 배운 점을 공유해보세요"
            ]),
            Milestone(title: "지원 완료", description: "MBA 합격", successCriteria: [
                "에세이 작성 과정에서 자신에 대해 발견한 점을 설명해보세요",
                "인터뷰 준비와 실제 경험에서 배운 점을 기록해보세요",
                "합격 통지를 받았을 때의 소감과 MBA에 대한 기대를 공유해보세요"
            ]),
            Milestone(title: "1학년 완료", description: "Core 과정 수료", successCriteria: [
                "필수 과목에서 가장 인상적이었던 수업과 배운 점을 설명해보세요",
                "팀 프로젝트 경험과 협업에서 배운 리더십을 기록해보세요",
                "인턴십 확보 과정과 실무에서의 학습 경험을 공유해보세요"
            ]),
            Milestone(title: "졸업", description: "MBA 학위 취득", successCriteria: [
                "MBA 과정에서 가장 성장한 부분을 설명해보세요",
                "캡스톤 프로젝트 경험과 배운 점을 기록해보세요",
                "MBA 학위 취득 여정과 이 성취가 주는 의미를 정리해보세요"
            ])
        ],
        .일본어_JLPT_N1_취득하기: [
            Milestone(title: "히라가나/가타카나 마스터", description: "기초 문자 학습", successCriteria: ["히라가나 학습 과정과 효과적이었던 암기 방법을 설명해보세요", "가타카나 학습에서 어려웠던 점과 극복 방법을 기록해보세요", "일본어 발음 학습에서 주의한 점과 연습 방법을 공유해보세요"]),
            Milestone(title: "N3 통과", description: "중급 일본어 달성", successCriteria: ["한자 학습 방법과 효과적이었던 암기 전략을 설명해보세요", "일본어 대화 연습 경험과 실력 향상을 느낀 순간을 기록해보세요", "일본어 뉴스/기사 읽기 연습과 배운 점을 공유해보세요"]),
            Milestone(title: "N2 통과", description: "고급 일본어 진입", successCriteria: ["중급 한자 학습 과정과 활용 경험을 설명해보세요", "자막 없이 일본 콘텐츠를 시청한 경험과 이해도 변화를 기록해보세요", "비즈니스 일본어 학습 경험과 실전 활용 사례를 공유해보세요"]),
            Milestone(title: "N1 최종 합격", description: "최고급 달성", successCriteria: ["N1 준비 과정에서 효과적이었던 학습 전략을 설명해보세요", "신문 사설 읽기 연습과 독해력 향상 경험을 기록해보세요", "JLPT N1 합격 여정과 일본어 학습이 주는 의미를 정리해보세요"])
        ],
        .프랑스어_유창하게_구사하기: [
            Milestone(title: "기초 프랑스어", description: "A1-A2 수준 달성", successCriteria: ["프랑스어 발음 학습에서 어려웠던 점과 연습 방법을 설명해보세요", "프랑스어로 자기소개를 하면서 느낀 점을 기록해보세요", "숫자와 시간 표현 학습 과정과 활용 경험을 공유해보세요"]),
            Milestone(title: "중급 프랑스어", description: "B1-B2 수준 달성", successCriteria: ["프랑스어 대화 실력 향상을 느낀 경험을 설명해보세요", "프랑스 영화/드라마 시청 경험과 이해도 변화를 기록해보세요", "프랑스어 작문 연습과 글쓰기 실력 향상 경험을 공유해보세요"]),
            Milestone(title: "고급 프랑스어", description: "C1-C2 수준 달성", successCriteria: ["프랑스어로 토론/발표한 경험과 느낀 성장을 설명해보세요", "프랑스 문학 원서 읽기 경험과 감상을 기록해보세요", "프랑스어 유창함이 열어준 기회와 의미를 정리해보세요"])
        ],
        .스페인어_배우기: [
            Milestone(title: "기초 스페인어", description: "A1-A2 수준 달성", successCriteria: ["스페인어 발음과 알파벳 학습 과정을 설명해보세요", "동사 활용 학습에서 어려웠던 점과 극복 방법을 기록해보세요", "스페인어로 처음 대화한 경험과 느낀 점을 공유해보세요"]),
            Milestone(title: "중급 스페인어", description: "B1-B2 수준 달성", successCriteria: ["시제 학습 과정과 실제 활용 경험을 설명해보세요", "스페인어 콘텐츠 시청 경험과 이해도 변화를 기록해보세요", "스페인어권 여행에서의 소통 경험과 배운 점을 공유해보세요"]),
            Milestone(title: "고급 스페인어", description: "유창한 수준", successCriteria: ["원어민과 대화하며 느낀 성장과 인상적인 경험을 설명해보세요", "스페인어 뉴스/신문 읽기 연습과 독해력 향상 경험을 기록해보세요", "스페인어 학습 여정과 이 언어가 주는 의미를 정리해보세요"])
        ],
        .사진_작가_자격증_취득하기: [
            Milestone(title: "카메라 기초", description: "카메라 조작법 습득", successCriteria: ["조리개, 셔터스피드, ISO 학습 과정과 이해한 원리를 설명해보세요", "수동 모드 촬영 연습 경험과 자동 모드와의 차이를 기록해보세요", "RAW 파일 편집 경험과 후보정의 중요성을 공유해보세요"]),
            Milestone(title: "촬영 기술", description: "다양한 촬영 기법 학습", successCriteria: ["구도와 프레이밍 학습에서 가장 인상적이었던 깨달음을 설명해보세요", "조명 활용 연습과 빛에 대한 이해가 깊어진 경험을 기록해보세요", "인물/풍경 촬영 경험과 각 분야에서 배운 기술을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "사진작가 자격 획득", successCriteria: ["포트폴리오 준비 과정과 작품 선정 기준을 설명해보세요", "필기시험 준비에서 효과적이었던 학습 방법을 기록해보세요", "사진작가 자격증 취득 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .바리스타_자격증_취득하기: [
            Milestone(title: "커피 이론", description: "커피 기초 지식 습득", successCriteria: ["원두 종류별 특징과 선호하는 원두를 설명해보세요", "로스팅 단계별 차이와 맛의 변화를 기록해보세요", "커피 추출 원리 학습과 이해한 내용을 공유해보세요"]),
            Milestone(title: "에스프레소 추출", description: "에스프레소 마스터", successCriteria: ["에스프레소 머신 사용법 학습 과정을 설명해보세요", "일정한 품질의 샷을 추출하기 위한 노력과 노하우를 기록해보세요", "그라인더 세팅 조절 경험과 맛의 변화를 공유해보세요"]),
            Milestone(title: "라떼아트", description: "우유 스티밍 및 아트", successCriteria: ["마이크로폼 만들기 연습 과정과 터득한 기술을 설명해보세요", "라떼아트 연습 과정과 처음 성공했을 때의 경험을 기록해보세요", "바리스타 자격증 취득 여정과 커피에 대한 애정을 정리해보세요"])
        ],
        .소믈리에_자격증_취득하기: [
            Milestone(title: "와인 기초", description: "와인 이론 학습", successCriteria: ["포도 품종별 특징과 가장 좋아하는 품종을 설명해보세요", "와인 지역 학습 과정과 지역별 특색을 기록해보세요", "와인 라벨 읽기 연습과 배운 점을 공유해보세요"]),
            Milestone(title: "테이스팅 훈련", description: "와인 감별 능력", successCriteria: ["블라인드 테이스팅 연습 경험과 느낀 점을 설명해보세요", "와인 결함 판별 학습과 감각 훈련 방법을 기록해보세요", "음식 페어링 연습과 인상적이었던 조합을 공유해보세요"]),
            Milestone(title: "서비스 실습", description: "소믈리에 서비스", successCriteria: ["디캔팅 연습 경험과 와인 변화를 설명해보세요", "서빙 온도의 중요성과 학습한 내용을 기록해보세요", "소믈리에 자격증 취득 여정과 와인에 대한 열정을 정리해보세요"])
        ],
        .요리사_자격증_취득하기: [
            Milestone(title: "기본 조리법", description: "조리 기초 습득", successCriteria: ["칼질 연습 과정과 향상된 실력을 설명해보세요", "기본 조리법 학습에서 가장 유용했던 기술을 기록해보세요", "위생 관리의 중요성과 실천 방법을 공유해보세요"]),
            Milestone(title: "메뉴별 실습", description: "다양한 요리 마스터", successCriteria: ["한식 메뉴 연습 과정과 가장 자신 있는 요리를 설명해보세요", "양식 메뉴 연습에서 배운 기술과 경험을 기록해보세요", "중식 메뉴 연습과 조리 기술의 다양성을 공유해보세요"]),
            Milestone(title: "실기시험 준비", description: "자격증 시험 대비", successCriteria: ["시험 메뉴 연습 과정과 완성도 향상 경험을 설명해보세요", "시간 내 완성을 위한 연습과 노하우를 기록해보세요", "요리사 자격증 취득 여정과 요리에 대한 열정을 정리해보세요"])
        ],
        .공인중개사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "부동산학개론/민법", successCriteria: ["부동산학개론 학습 방법과 핵심 개념을 설명해보세요", "민법 학습에서 어려웠던 부분과 극복 방법을 기록해보세요", "기출문제 풀이 경험과 효과적인 학습 전략을 공유해보세요"]),
            Milestone(title: "2차 시험 준비", description: "중개사법/공시법/세법", successCriteria: ["부동산 공시법 학습 과정과 이해한 내용을 설명해보세요", "중개사법령 학습에서 중요한 포인트를 기록해보세요", "부동산 세법 학습 방법과 핵심 내용을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "최종 합격", successCriteria: ["1차 시험 준비와 합격 경험을 설명해보세요", "2차 시험 준비 과정과 학습 노하우를 기록해보세요", "공인중개사 자격증 취득 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .재무설계사_자격증_취득하기: [
            Milestone(title: "재무설계 기초", description: "이론 학습", successCriteria: ["재무설계 프로세스 학습 경험과 핵심 개념을 설명해보세요", "금융상품 학습에서 흥미로웠던 부분을 기록해보세요", "세금 기초 학습 과정과 이해한 내용을 공유해보세요"]),
            Milestone(title: "AFPK 취득", description: "기본 자격 획득", successCriteria: ["AFPK 교육 과정에서 가장 유익했던 내용을 설명해보세요", "AFPK 시험 준비 방법과 합격 경험을 기록해보세요", "실무 경험을 통해 배운 점을 공유해보세요"]),
            Milestone(title: "CFP 취득", description: "전문 자격 획득", successCriteria: ["CFP 교육 과정에서 심화 학습한 내용을 설명해보세요", "CFP 시험 준비와 합격 노하우를 기록해보세요", "재무설계사 자격증 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .박사_학위_취득하기: [
            Milestone(title: "대학원 입학", description: "박사과정 시작", successCriteria: ["연구 주제 선정 과정과 그 주제에 대한 열정을 설명해보세요", "지도교수 선택 과정과 기대하는 바를 기록해보세요", "박사과정 합격까지의 여정과 느낀 점을 공유해보세요"]),
            Milestone(title: "Coursework 완료", description: "수업 이수", successCriteria: ["필수 과목에서 가장 인상적이었던 수업과 배운 점을 설명해보세요", "종합시험 준비 과정과 극복한 어려움을 기록해보세요", "논문 자격 획득 과정과 연구자로서의 성장을 공유해보세요"]),
            Milestone(title: "논문 완성", description: "학위논문 작성", successCriteria: ["연구 과정에서 가장 의미 있었던 발견을 설명해보세요", "논문 작성 과정과 학술적 글쓰기의 어려움을 기록해보세요", "박사 학위 취득 여정과 학자로서의 비전을 정리해보세요"])
        ],
        .독일어_배우기: [
            Milestone(title: "기초 독일어", description: "A1-A2 수준", successCriteria: ["독일어 발음과 알파벳 학습 과정을 설명해보세요", "독일어 문법의 특이점과 학습 경험을 기록해보세요", "독일어로 첫 대화를 한 경험과 느낀 점을 공유해보세요"]),
            Milestone(title: "중급 독일어", description: "B1-B2 수준", successCriteria: ["복잡한 문장 이해력 향상 경험을 설명해보세요", "독일어로 토론한 경험과 느낀 성장을 기록해보세요", "독일어 뉴스/기사 읽기 연습과 배운 점을 공유해보세요"]),
            Milestone(title: "고급 독일어", description: "C1 수준", successCriteria: ["원어민과 대화하며 느낀 성장과 인상적인 경험을 설명해보세요", "전문 분야 문서 읽기 경험과 독해력 향상을 기록해보세요", "독일어 학습 여정과 Goethe 자격증의 의미를 정리해보세요"])
        ],
        .이탈리아어_배우기: [
            Milestone(title: "기초 이탈리아어", description: "A1-A2 수준", successCriteria: ["이탈리아어 발음의 아름다움과 학습 경험을 설명해보세요", "기본 인사와 표현 학습 과정을 기록해보세요", "간단한 문장 만들기 연습과 느낀 점을 공유해보세요"]),
            Milestone(title: "중급 이탈리아어", description: "B1-B2 수준", successCriteria: ["이탈리아어 대화 실력 향상 경험을 설명해보세요", "이탈리아 영화/드라마 시청 경험과 이해도 변화를 기록해보세요", "이탈리아 여행에서의 소통 경험과 배운 점을 공유해보세요"]),
            Milestone(title: "고급 이탈리아어", description: "유창한 수준", successCriteria: ["원어민과 대화하며 느낀 성장을 설명해보세요", "이탈리아어 뉴스/신문 읽기 경험을 기록해보세요", "이탈리아어 학습 여정과 이 언어의 매력을 정리해보세요"])
        ],
        .포르투갈어_배우기: [
            Milestone(title: "기초 포르투갈어", description: "A1-A2 수준", successCriteria: ["포르투갈어 발음 학습 과정과 특징을 설명해보세요", "동사 활용 학습에서 어려웠던 점과 극복 방법을 기록해보세요", "포르투갈어로 첫 대화를 한 경험과 느낀 점을 공유해보세요"]),
            Milestone(title: "중급 포르투갈어", description: "B1-B2 수준", successCriteria: ["브라질/포르투갈 억양 차이 학습 경험을 설명해보세요", "포르투갈어 대화 실력 향상 경험을 기록해보세요", "포르투갈어 영화/드라마 시청 경험과 이해도 변화를 공유해보세요"]),
            Milestone(title: "고급 포르투갈어", description: "유창한 수준", successCriteria: ["원어민과 대화하며 느낀 성장을 설명해보세요", "포르투갈어 뉴스 이해 경험과 독해력 향상을 기록해보세요", "포르투갈어 학습 여정과 이 언어가 주는 의미를 정리해보세요"])
        ],
        .러시아어_배우기: [
            Milestone(title: "키릴 문자 마스터", description: "문자 학습", successCriteria: ["키릴 문자 읽기 학습 과정과 어려웠던 점을 설명해보세요", "키릴 문자 쓰기 연습 경험과 터득한 방법을 기록해보세요", "러시아어 발음 학습과 특이한 점을 공유해보세요"]),
            Milestone(title: "기초 러시아어", description: "A1-A2 수준", successCriteria: ["격변화 학습에서 어려웠던 점과 극복 방법을 설명해보세요", "러시아어로 첫 대화를 한 경험과 느낀 점을 기록해보세요", "숫자와 시간 표현 학습 과정을 공유해보세요"]),
            Milestone(title: "중급 러시아어", description: "B1 이상", successCriteria: ["러시아어 대화 실력 향상 경험을 설명해보세요", "러시아 뉴스/콘텐츠 시청 경험과 이해도 변화를 기록해보세요", "러시아어 학습 여정과 러시아 문화에 대한 이해를 정리해보세요"])
        ],
        .아랍어_배우기: [
            Milestone(title: "아랍 문자 마스터", description: "문자 학습", successCriteria: ["아랍 문자 읽기 학습 과정과 어려웠던 점을 설명해보세요", "오른쪽에서 왼쪽으로 쓰기 연습 경험을 기록해보세요", "아랍어 발음 규칙의 특이점과 학습 방법을 공유해보세요"]),
            Milestone(title: "기초 아랍어", description: "A1-A2 수준", successCriteria: ["아랍어 인사 표현 학습과 문화적 의미를 설명해보세요", "아랍어 숫자 학습 과정과 사용 경험을 기록해보세요", "아랍어 문장 만들기 연습과 문법의 특징을 공유해보세요"]),
            Milestone(title: "중급 아랍어", description: "B1 이상", successCriteria: ["아랍어 대화 실력 향상 경험을 설명해보세요", "아랍어 뉴스/콘텐츠 이해 경험과 배운 점을 기록해보세요", "아랍어 학습 여정과 아랍 문화에 대한 이해를 정리해보세요"])
        ],
        .한국어_능력시험_6급하기: [
            Milestone(title: "TOPIK I 통과", description: "1-2급 달성", successCriteria: ["한글 학습 과정과 읽기/쓰기 실력 향상 경험을 설명해보세요", "한국어로 첫 대화를 한 경험과 느낀 점을 기록해보세요", "TOPIK 1-2급 준비 과정과 합격 경험을 공유해보세요"]),
            Milestone(title: "TOPIK II 중급", description: "3-4급 달성", successCriteria: ["한국어 대화 실력 향상 경험을 설명해보세요", "한국 드라마/영화 시청 경험과 이해도 변화를 기록해보세요", "TOPIK 3-4급 준비와 합격 노하우를 공유해보세요"]),
            Milestone(title: "TOPIK II 고급", description: "5-6급 달성", successCriteria: ["한국어 뉴스/기사 읽기 경험과 독해력 향상을 설명해보세요", "한국어 학술적 글쓰기 경험과 배운 점을 기록해보세요", "TOPIK 6급 합격 여정과 한국어 학습의 의미를 정리해보세요"])
        ],
        .TOEFL_120점하기: [
            Milestone(title: "80점 달성", description: "기본기 확립", successCriteria: ["Reading 섹션 학습 방법과 점수 향상 경험을 설명해보세요", "Listening 섹션 연습과 청취력 향상 노하우를 기록해보세요", "TOEFL 문법 학습에서 효과적이었던 방법을 공유해보세요"]),
            Milestone(title: "100점 달성", description: "고급 수준 진입", successCriteria: ["Speaking 섹션 연습 과정과 발화력 향상 경험을 설명해보세요", "Writing 섹션 학습과 작문 실력 향상 방법을 기록해보세요", "시간 관리 노하우와 실전 감각 터득 경험을 공유해보세요"]),
            Milestone(title: "120점 달성", description: "만점 도전", successCriteria: ["각 섹션 고득점 비법과 학습 전략을 설명해보세요", "모의고사 연습 경험과 실전 준비 방법을 기록해보세요", "TOEFL 120점 달성 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .IELTS_9점_취득하기: [
            Milestone(title: "6.5점 달성", description: "기본기 확립", successCriteria: ["Reading 섹션 학습 방법과 점수 향상 경험을 설명해보세요", "Listening 섹션 연습과 청취력 향상 노하우를 기록해보세요", "IELTS 문제 유형 파악 과정과 효과적인 접근법을 공유해보세요"]),
            Milestone(title: "8점 달성", description: "고급 수준", successCriteria: ["Speaking 섹션 연습 과정과 발화력 향상 경험을 설명해보세요", "Writing 섹션 학습과 작문 실력 향상 방법을 기록해보세요", "채점 기준 분석과 고득점 전략을 공유해보세요"]),
            Milestone(title: "9점 달성", description: "만점 도전", successCriteria: ["각 영역 만점을 위한 학습 전략을 설명해보세요", "원어민 수준의 영어 구사력을 키운 방법을 기록해보세요", "IELTS 9점 달성 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .OPIc_AL하기: [
            Milestone(title: "IM 등급 달성", description: "중급 수준", successCriteria: ["영어 자기소개 연습 과정과 발화력 향상 경험을 설명해보세요", "일상 주제 대화 연습과 자신감 향상 경험을 기록해보세요", "IM 등급 달성 과정과 효과적이었던 학습 방법을 공유해보세요"]),
            Milestone(title: "IH 등급 달성", description: "상급 진입", successCriteria: ["복잡한 상황 설명 연습과 표현력 향상 경험을 설명해보세요", "논리적 의견 표현 연습과 논증 능력 향상을 기록해보세요", "IH 등급 달성을 위한 학습 전략과 경험을 공유해보세요"]),
            Milestone(title: "AL 등급 달성", description: "최고 등급", successCriteria: ["원어민 수준 대화력을 키운 방법과 경험을 설명해보세요", "즉석 대화 능력 향상 과정과 연습 방법을 기록해보세요", "OPIc AL 달성 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .번역가_자격증_취득하기: [
            Milestone(title: "언어 능력 확보", description: "고급 외국어 실력", successCriteria: ["외국어 실력 향상 과정과 원어민 수준까지의 여정을 설명해보세요", "전문 분야 어휘 학습 방법과 활용 경험을 기록해보세요", "모국어 작문 능력 향상을 위한 노력을 공유해보세요"]),
            Milestone(title: "번역 실습", description: "번역 경험 축적", successCriteria: ["번역 연습 과정과 실력 향상 경험을 설명해보세요", "교정 및 퇴고 과정에서 배운 점을 기록해보세요", "CAT 툴 사용 경험과 작업 효율 향상을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "공인 자격 획득", successCriteria: ["번역 시험 준비 과정과 합격 경험을 설명해보세요", "포트폴리오 준비 과정과 대표 작품을 기록해보세요", "번역가 자격증 취득 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .통역사_자격증_취득하기: [
            Milestone(title: "언어 능력 확보", description: "양방향 통역 기초", successCriteria: ["두 언어 유창성을 키운 과정과 방법을 설명해보세요", "빠른 발화 이해력 향상 훈련 방법을 기록해보세요", "정확한 발음 습득을 위한 연습 과정을 공유해보세요"]),
            Milestone(title: "통역 훈련", description: "통역 기술 습득", successCriteria: ["섀도잉 연습 경험과 효과를 설명해보세요", "노트테이킹 기술 습득 과정과 방법을 기록해보세요", "순차통역 연습 경험과 실력 향상을 공유해보세요"]),
            Milestone(title: "동시통역 가능", description: "전문 통역 수준", successCriteria: ["동시통역 훈련 과정과 도전 경험을 설명해보세요", "전문 분야 통역 경험과 배운 점을 기록해보세요", "통역사 자격증 취득 여정과 이 성취의 의미를 정리해보세요"])
        ],
        .교사_자격증_취득하기: [
            Milestone(title: "전공 학습", description: "교직 과정 이수", successCriteria: ["교직 과목에서 가장 인상적이었던 내용을 설명해보세요", "전공 학습 과정과 교육에 대한 열정을 기록해보세요", "교육봉사 경험과 배운 점을 공유해보세요"]),
            Milestone(title: "교육실습", description: "현장 경험", successCriteria: ["교육실습 경험과 느낀 점을 설명해보세요", "수업 지도안 작성 경험과 수업 설계 노하우를 기록해보세요", "학생 지도 경험과 교육자로서의 성장을 공유해보세요"]),
            Milestone(title: "임용고시 준비", description: "교사 자격 취득", successCriteria: ["임용고시 준비 과정과 학습 전략을 설명해보세요", "모의고사 연습과 약점 보완 방법을 기록해보세요", "교사 자격증 취득 여정과 교육자로서의 비전을 정리해보세요"])
        ],
        .변호사_시험하기: [
            Milestone(title: "로스쿨 입학", description: "법학전문대학원 진학", successCriteria: ["LEET 시험 준비 과정과 합격 경험을 설명해보세요", "로스쿨 입학까지의 여정과 느낀 점을 기록해보세요", "법학 기초 학습에서 흥미로웠던 내용을 공유해보세요"]),
            Milestone(title: "로스쿨 과정", description: "3년 과정 이수", successCriteria: ["로스쿨 필수 과목에서 가장 인상적이었던 수업을 설명해보세요", "법률 실무 학습 경험과 배운 점을 기록해보세요", "모의 재판 참여 경험과 느낀 성장을 공유해보세요"]),
            Milestone(title: "변호사 시험", description: "최종 합격", successCriteria: ["변호사시험 준비 과정과 학습 전략을 설명해보세요", "변호사시험 합격 경험과 느낀 점을 기록해보세요", "변호사 자격 취득 여정과 법조인으로서의 비전을 정리해보세요"])
        ],
        .회계사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "객관식 시험 대비", successCriteria: ["회계학 학습 과정과 핵심 개념을 설명해보세요", "세법 학습에서 어려웠던 부분과 극복 방법을 기록해보세요", "경영학/경제학 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "1차 시험 합격", description: "1차 통과", successCriteria: ["1차 시험 합격 경험과 느낀 점을 설명해보세요", "2차 과목 학습 계획과 준비 과정을 기록해보세요", "회계감사 학습에서 핵심적인 내용을 공유해보세요"]),
            Milestone(title: "2차 시험 합격", description: "최종 합격", successCriteria: ["2차 시험 준비와 합격 경험을 설명해보세요", "실무 수습 경험과 배운 점을 기록해보세요", "공인회계사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .세무사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["재정학 학습 과정과 핵심 개념을 설명해보세요", "세법학개론 학습에서 중요한 포인트를 기록해보세요", "회계학개론 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "1차 시험 합격", description: "1차 통과", successCriteria: ["1차 시험 합격 경험과 느낀 점을 설명해보세요", "2차 과목 학습 계획과 준비 과정을 기록해보세요", "세법 심화 학습에서 어려웠던 부분을 공유해보세요"]),
            Milestone(title: "2차 시험 합격", description: "최종 합격", successCriteria: ["2차 시험 준비와 합격 경험을 설명해보세요", "실무 수습 경험과 배운 점을 기록해보세요", "세무사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .감정평가사하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["민법 학습 과정과 핵심 개념을 설명해보세요", "경제학원론 학습에서 중요한 포인트를 기록해보세요", "부동산학원론 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "2차 시험 준비", description: "전문 과목 학습", successCriteria: ["감정평가이론 학습에서 핵심 내용을 설명해보세요", "감정평가실무 학습 경험과 배운 점을 기록해보세요", "보상법규 학습 과정과 중요한 포인트를 공유해보세요"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차/2차 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비 과정에서 효과적이었던 학습 방법을 기록해보세요", "감정평가사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .관세사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["관세법 학습 과정과 핵심 개념을 설명해보세요", "무역영어 학습에서 중요한 포인트를 기록해보세요", "내국소비세법 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "2차 시험 준비", description: "실무 과목 학습", successCriteria: ["관세율표 학습에서 핵심 내용을 설명해보세요", "관세평가 학습 경험과 배운 점을 기록해보세요", "수출입통관실무 학습 과정과 중요한 포인트를 공유해보세요"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차/2차 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비 과정에서 효과적이었던 학습 방법을 기록해보세요", "관세사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .변리사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["산업재산권법 학습 과정과 핵심 개념을 설명해보세요", "민법개론 학습에서 중요한 포인트를 기록해보세요", "자연과학 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "2차 시험 준비", description: "전문 과목 학습", successCriteria: ["특허법 심화 학습에서 핵심 내용을 설명해보세요", "상표법 학습 경험과 배운 점을 기록해보세요", "디자인보호법 학습 과정과 중요한 포인트를 공유해보세요"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차/2차 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비 과정에서 효과적이었던 학습 방법을 기록해보세요", "변리사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .노무사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["노동법 학습 과정과 핵심 개념을 설명해보세요", "민법 학습에서 중요한 포인트를 기록해보세요", "경제학 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "2차 시험 준비", description: "전문 과목 학습", successCriteria: ["노동조합법 심화 학습에서 핵심 내용을 설명해보세요", "근로기준법 심화 학습 경험과 배운 점을 기록해보세요", "인사노무관리 학습 과정과 중요한 포인트를 공유해보세요"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차/2차 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비 과정에서 효과적이었던 학습 방법을 기록해보세요", "공인노무사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .행정사_자격증_취득하기: [
            Milestone(title: "시험 과목 학습", description: "필수 과목 공부", successCriteria: ["행정법 학습 과정과 핵심 개념을 설명해보세요", "행정사실무법 학습에서 중요한 포인트를 기록해보세요", "민법 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "기출문제 풀이", description: "시험 대비", successCriteria: ["기출문제 풀이에서 발견한 출제 경향을 설명해보세요", "약점 과목 보완을 위한 노력과 방법을 기록해보세요", "모의고사 경험과 실전 감각 터득 과정을 공유해보세요"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["행정사 시험 합격 경험과 느낀 점을 설명해보세요", "연수 과정에서 배운 점을 기록해보세요", "행정사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .법무사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["민법 학습 과정과 핵심 개념을 설명해보세요", "상법 학습에서 중요한 포인트를 기록해보세요", "헌법 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "2차 시험 준비", description: "실무 과목 학습", successCriteria: ["등기신청서류작성 학습에서 핵심 내용을 설명해보세요", "민사집행법 학습 경험과 배운 점을 기록해보세요", "공탁법 학습 과정과 중요한 포인트를 공유해보세요"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차/2차 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비 과정에서 효과적이었던 학습 방법을 기록해보세요", "법무사 자격 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .PMP_자격증_취득하기: [
            Milestone(title: "자격 요건 충족", description: "응시 자격 확보", successCriteria: ["프로젝트 관리 경험과 축적된 시간을 설명해보세요", "35시간 교육 이수 과정과 배운 점을 기록해보세요", "PMP 도전을 결심한 계기와 목표를 공유해보세요"]),
            Milestone(title: "PMBOK 학습", description: "PM 지식 습득", successCriteria: ["PMBOK 가이드 학습 과정과 핵심 내용을 설명해보세요", "10개 지식 영역에서 가장 인상적이었던 내용을 기록해보세요", "5개 프로세스 그룹의 이해와 실무 적용 경험을 공유해보세요"]),
            Milestone(title: "시험 합격", description: "PMP 인증 획득", successCriteria: ["모의시험 연습 경험과 점수 향상 과정을 설명해보세요", "PMP 시험 합격 경험과 느낀 점을 기록해보세요", "PMP 인증 취득 여정과 PM 전문가로서의 비전을 정리해보세요"])
        ],
        .정보처리기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["소프트웨어 설계 학습 과정과 핵심 개념을 설명해보세요", "데이터베이스 학습에서 중요한 포인트를 기록해보세요", "프로그래밍 언어 학습 방법과 효과적인 전략을 공유해보세요"]),
            Milestone(title: "필기 시험 합격", description: "필기 통과", successCriteria: ["필기 시험 합격 경험과 느낀 점을 설명해보세요", "실기 준비를 위한 학습 계획을 기록해보세요", "프로그래밍 실습 경험과 코딩 실력 향상을 공유해보세요"]),
            Milestone(title: "실기 시험 합격", description: "최종 합격", successCriteria: ["실기 시험 준비 과정과 합격 경험을 설명해보세요", "정보처리기사 취득 여정과 배운 점을 기록해보세요", "IT 전문가로서의 성장과 앞으로의 계획을 정리해보세요"])
        ],
        .네트워크관리사하기: [
            Milestone(title: "네트워크 기초", description: "기본 이론 학습", successCriteria: ["OSI 7계층 학습 과정과 이해한 내용을 설명해보세요", "TCP/IP 학습에서 핵심 개념을 기록해보세요", "라우팅/스위칭 학습과 네트워크 이해를 공유해보세요"]),
            Milestone(title: "실습 훈련", description: "네트워크 구축 실습", successCriteria: ["네트워크 장비 실습 경험과 배운 점을 설명해보세요", "IP 설계 연습 과정과 설계 능력 향상을 기록해보세요", "트러블슈팅 경험과 문제 해결 노하우를 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "최종 합격", successCriteria: ["필기/실기 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비에서 효과적이었던 학습 방법을 기록해보세요", "네트워크관리사 취득 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .리눅스마스터하기: [
            Milestone(title: "리눅스 기초", description: "기본 명령어 학습", successCriteria: ["리눅스 설치 경험과 첫 사용 느낌을 설명해보세요", "기본 명령어 학습 과정과 자주 사용하는 명령어를 기록해보세요", "파일 시스템 이해 과정과 핵심 개념을 공유해보세요"]),
            Milestone(title: "시스템 관리", description: "서버 관리 학습", successCriteria: ["사용자 관리 학습과 실무 적용 경험을 설명해보세요", "서비스 관리 학습에서 배운 점을 기록해보세요", "쉘 스크립트 작성 경험과 자동화 활용을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "리눅스마스터 합격", successCriteria: ["리눅스마스터 2급/1급 합격 과정을 설명해보세요", "시험 준비에서 효과적이었던 학습 방법을 기록해보세요", "리눅스마스터 취득 여정과 시스템 관리자로서의 비전을 정리해보세요"])
        ],
        .SQLD_자격증_취득하기: [
            Milestone(title: "SQL 기초", description: "기본 문법 학습", successCriteria: ["SELECT문 학습 과정과 쿼리 작성 실력 향상을 설명해보세요", "JOIN 학습에서 이해한 개념과 활용 경험을 기록해보세요", "서브쿼리 작성 연습과 고급 쿼리 작성 능력을 공유해보세요"]),
            Milestone(title: "데이터 모델링", description: "설계 개념 학습", successCriteria: ["ER 다이어그램 학습과 데이터 모델링 이해를 설명해보세요", "정규화 학습에서 핵심 개념과 적용 경험을 기록해보세요", "성능 데이터 모델링 학습과 최적화 이해를 공유해보세요"]),
            Milestone(title: "SQLD 합격", description: "자격 취득", successCriteria: ["기출문제 풀이 경험과 출제 경향 분석을 설명해보세요", "SQLD 시험 합격 경험과 느낀 점을 기록해보세요", "SQLD 취득 여정과 데이터 전문가로서의 성장을 정리해보세요"])
        ],
        .빅데이터분석기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["빅데이터 분석 기획 학습 과정과 핵심 개념을 설명해보세요", "빅데이터 탐색 학습에서 배운 점을 기록해보세요", "빅데이터 모델링 학습과 이해한 내용을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "분석 실습", successCriteria: ["Python/R 활용 경험과 데이터 분석 실력을 설명해보세요", "머신러닝 모델 구현 경험과 배운 점을 기록해보세요", "데이터 전처리 경험과 분석 워크플로우를 공유해보세요"]),
            Milestone(title: "자격 취득", description: "최종 합격", successCriteria: ["필기/실기 시험 합격 경험과 느낀 점을 설명해보세요", "시험 준비에서 효과적이었던 학습 방법을 기록해보세요", "빅데이터분석기사 취득 여정과 데이터 분석가로서의 비전을 정리해보세요"])
        ],
        .AWS_자격증_취득하기: [
            Milestone(title: "AWS 기초 학습", description: "클라우드 개념 이해", successCriteria: ["EC2, S3 학습 과정과 핵심 개념을 설명해보세요", "VPC 학습에서 네트워크 설계 이해를 기록해보세요", "IAM 학습과 보안 관리 이해를 공유해보세요"]),
            Milestone(title: "실습 경험", description: "AWS 서비스 사용", successCriteria: ["AWS 계정 생성 후 첫 사용 경험을 설명해보세요", "실제 서비스 배포 경험과 배운 점을 기록해보세요", "다양한 AWS 서비스 활용 경험을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "AWS 인증 획득", successCriteria: ["목표 자격증 선택 이유와 준비 과정을 설명해보세요", "모의시험 연습 경험과 점수 향상 과정을 기록해보세요", "AWS 자격증 취득 여정과 클라우드 전문가로서의 비전을 정리해보세요"])
        ],
        .구글_클라우드_자격증_취득하기: [
            Milestone(title: "GCP 기초 학습", description: "구글 클라우드 이해", successCriteria: ["Compute Engine 학습 과정과 핵심 개념을 설명해보세요", "Cloud Storage 학습에서 배운 점을 기록해보세요", "BigQuery 학습과 데이터 분석 활용 이해를 공유해보세요"]),
            Milestone(title: "실습 경험", description: "GCP 서비스 사용", successCriteria: ["GCP 계정 생성 후 첫 사용 경험을 설명해보세요", "프로젝트 생성 및 관리 경험을 기록해보세요", "다양한 GCP 서비스 활용 경험을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "GCP 인증 획득", successCriteria: ["목표 자격증 선택 이유와 준비 과정을 설명해보세요", "모의시험 연습 경험과 점수 향상 과정을 기록해보세요", "GCP 자격증 취득 여정과 클라우드 전문가로서의 비전을 정리해보세요"])
        ],
        .Azure_자격증_취득하기: [
            Milestone(title: "Azure 기초 학습", description: "마이크로소프트 클라우드 이해", successCriteria: ["Virtual Machines 학습 과정과 핵심 개념을 설명해보세요", "Blob Storage 학습에서 배운 점을 기록해보세요", "Azure AD 학습과 ID 관리 이해를 공유해보세요"]),
            Milestone(title: "실습 경험", description: "Azure 서비스 사용", successCriteria: ["Azure 계정 생성 후 첫 사용 경험을 설명해보세요", "리소스 그룹 생성 및 관리 경험을 기록해보세요", "다양한 Azure 서비스 활용 경험을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "Azure 인증 획득", successCriteria: ["목표 자격증 선택 이유와 준비 과정을 설명해보세요", "모의시험 연습 경험과 점수 향상 과정을 기록해보세요", "Azure 자격증 취득 여정과 클라우드 전문가로서의 비전을 정리해보세요"])
        ],
        .CISSP_자격증_취득하기: [
            Milestone(title: "자격 요건 확인", description: "응시 자격 확보", successCriteria: ["보안 경력 5년 동안의 경험과 배운 점을 설명해보세요", "8개 도메인 관련 실무 경험을 기록해보세요", "CPE 유지 계획과 지속적인 학습 의지를 공유해보세요"]),
            Milestone(title: "8개 도메인 학습", description: "CBK 학습", successCriteria: ["보안 및 위험 관리 학습에서 핵심 개념을 설명해보세요", "암호학 학습에서 어려웠던 부분과 이해 과정을 기록해보세요", "네트워크 보안 학습과 실무 적용 경험을 공유해보세요"]),
            Milestone(title: "시험 합격", description: "CISSP 인증", successCriteria: ["모의시험 연습 경험과 점수 향상 과정을 설명해보세요", "CISSP 시험 합격 경험과 느낀 점을 기록해보세요", "CISSP 인증 취득 여정과 보안 전문가로서의 비전을 정리해보세요"])
        ],
        .CEH_자격증_취득하기: [
            Milestone(title: "해킹 기초", description: "보안 기초 학습", successCriteria: ["네트워크 기초 학습과 보안 관점의 이해를 설명해보세요", "운영체제 보안 학습에서 배운 점을 기록해보세요", "해킹 개념 학습과 윤리적 해킹의 중요성을 공유해보세요"]),
            Milestone(title: "공격 기법 학습", description: "해킹 기술 습득", successCriteria: ["취약점 스캐닝 실습 경험과 배운 점을 설명해보세요", "웹 해킹 학습에서 핵심 기법과 방어 방법을 기록해보세요", "시스템 해킹 학습과 보안 강화 방안을 공유해보세요"]),
            Milestone(title: "CEH 인증", description: "시험 합격", successCriteria: ["공인 교육 이수 경험과 배운 점을 설명해보세요", "CEH 시험 합격 경험과 느낀 점을 기록해보세요", "CEH 인증 취득 여정과 윤리적 해커로서의 비전을 정리해보세요"])
        ],
        .CCNA_자격증_취득하기: [
            Milestone(title: "네트워크 기초", description: "시스코 네트워킹 기초", successCriteria: ["OSI 모델 학습 과정과 이해한 개념을 설명해보세요", "IP 주소 체계 학습에서 핵심 포인트를 기록해보세요", "서브넷팅 연습 경험과 계산 능력 향상을 공유해보세요"]),
            Milestone(title: "라우팅/스위칭", description: "시스코 장비 학습", successCriteria: ["라우터 설정 실습 경험과 배운 점을 설명해보세요", "스위치 설정 학습에서 핵심 개념을 기록해보세요", "VLAN 구성 연습과 네트워크 분리 이해를 공유해보세요"]),
            Milestone(title: "CCNA 인증", description: "시험 합격", successCriteria: ["Packet Tracer 실습 경험과 배운 점을 설명해보세요", "CCNA 시험 합격 경험과 느낀 점을 기록해보세요", "CCNA 인증 취득 여정과 네트워크 전문가로서의 비전을 정리해보세요"])
        ],
        .CCNP_자격증_취득하기: [
            Milestone(title: "CCNA 취득", description: "기초 자격 확보", successCriteria: ["CCNA 취득 경험과 CCNP 도전을 결심한 계기를 설명해보세요", "고급 네트워킹에 대한 관심과 학습 동기를 기록해보세요", "트랙 선택 이유와 목표를 공유해보세요"]),
            Milestone(title: "Core 시험 준비", description: "핵심 시험 대비", successCriteria: ["ENCOR 과목 학습 과정과 핵심 개념을 설명해보세요", "실습 환경 구축 경험과 활용 방법을 기록해보세요", "고급 라우팅 학습에서 배운 점을 공유해보세요"]),
            Milestone(title: "CCNP 인증", description: "시험 합격", successCriteria: ["Core/Concentration 시험 합격 경험을 설명해보세요", "시험 준비에서 효과적이었던 학습 방법을 기록해보세요", "CCNP 인증 취득 여정과 네트워크 전문가로서의 비전을 정리해보세요"])
        ],
        .데이터사이언티스트하기: [
            Milestone(title: "통계/수학 기초", description: "기초 역량 확보", successCriteria: ["통계학 학습 과정과 데이터 분석에의 활용을 설명해보세요", "선형대수 학습에서 핵심 개념과 활용 방법을 기록해보세요", "확률론 학습과 실제 데이터 분석에서의 적용을 공유해보세요"]),
            Milestone(title: "프로그래밍 역량", description: "분석 도구 습득", successCriteria: ["Python/R 학습 과정과 데이터 분석 활용 경험을 설명해보세요", "SQL 학습에서 쿼리 작성 능력 향상 과정을 기록해보세요", "데이터 시각화 경험과 인사이트 도출 사례를 공유해보세요"]),
            Milestone(title: "머신러닝 역량", description: "ML 모델 구축", successCriteria: ["지도학습 모델 구현 경험과 배운 점을 설명해보세요", "비지도학습 학습에서 핵심 개념과 활용 방법을 기록해보세요", "데이터사이언티스트 성장 여정과 프로젝트 경험을 정리해보세요"])
        ],
        .풀스택_개발자하기: [
            Milestone(title: "프론트엔드 학습", description: "UI 개발 역량", successCriteria: ["HTML/CSS 학습 과정과 웹 페이지 제작 경험을 설명해보세요", "JavaScript 학습에서 핵심 개념과 활용 방법을 기록해보세요", "React/Vue 등 프레임워크 학습 경험과 선택 이유를 공유해보세요"]),
            Milestone(title: "백엔드 학습", description: "서버 개발 역량", successCriteria: ["서버 언어 학습 과정과 선택한 언어를 설명해보세요", "API 설계/구현 경험과 배운 점을 기록해보세요", "데이터베이스 학습 경험과 활용 방법을 공유해보세요"]),
            Milestone(title: "풀스택 프로젝트", description: "통합 프로젝트", successCriteria: ["풀스택 프로젝트 완성 경험과 배운 점을 설명해보세요", "배포 경험과 DevOps 학습 과정을 기록해보세요", "풀스택 개발자 성장 여정과 포트폴리오를 정리해보세요"])
        ],
        .iOS_개발자하기: [
            Milestone(title: "Swift 기초", description: "언어 학습", successCriteria: ["Swift 문법 학습 과정과 다른 언어와의 차이점을 설명해보세요", "옵셔널 학습에서 어려웠던 점과 이해 과정을 기록해보세요", "클로저 학습과 실제 코드에서의 활용 경험을 공유해보세요"]),
            Milestone(title: "UIKit/SwiftUI", description: "UI 프레임워크 학습", successCriteria: ["UI 구성 학습 과정과 디자인 구현 경험을 설명해보세요", "Auto Layout 학습에서 핵심 개념과 활용 방법을 기록해보세요", "SwiftUI 학습 경험과 UIKit과의 차이점을 공유해보세요"]),
            Milestone(title: "앱 출시", description: "앱스토어 등록", successCriteria: ["첫 개인 앱 개발 경험과 배운 점을 설명해보세요", "App Store 출시 과정과 리뷰 심사 경험을 기록해보세요", "iOS 개발자 성장 여정과 앞으로의 계획을 정리해보세요"])
        ],
        .안드로이드_개발자하기: [
            Milestone(title: "Kotlin 기초", description: "언어 학습", successCriteria: ["Kotlin 문법 학습 과정과 특징을 설명해보세요", "코루틴 학습에서 핵심 개념과 활용 방법을 기록해보세요", "Java와 Kotlin의 차이점과 Kotlin의 장점을 공유해보세요"]),
            Milestone(title: "Android SDK", description: "안드로이드 개발 학습", successCriteria: ["Activity/Fragment 학습에서 핵심 개념을 설명해보세요", "Jetpack 컴포넌트 학습 경험과 활용 방법을 기록해보세요", "MVVM 패턴 적용 경험과 아키텍처 이해를 공유해보세요"]),
            Milestone(title: "앱 출시", description: "플레이스토어 등록", successCriteria: ["첫 개인 앱 개발 경험과 배운 점을 설명해보세요", "Play Store 출시 과정과 경험을 기록해보세요", "안드로이드 개발자 성장 여정과 앞으로의 계획을 정리해보세요"])
        ],
        .블록체인_개발자하기: [
            Milestone(title: "블록체인 이해", description: "기초 개념 학습", successCriteria: ["블록체인 원리 학습과 이해한 핵심 개념을 설명해보세요", "합의 알고리즘 학습에서 각 알고리즘의 특징을 기록해보세요", "암호화 기술 학습과 블록체인에서의 활용을 공유해보세요"]),
            Milestone(title: "스마트 컨트랙트", description: "솔리디티 학습", successCriteria: ["Solidity 학습 과정과 핵심 문법을 설명해보세요", "스마트 컨트랙트 작성 경험과 배운 점을 기록해보세요", "테스트넷 배포 경험과 느낀 점을 공유해보세요"]),
            Milestone(title: "DApp 개발", description: "실전 프로젝트", successCriteria: ["Web3 학습과 프론트엔드 연동 경험을 설명해보세요", "DApp 개발 경험과 배운 점을 기록해보세요", "블록체인 개발자 성장 여정과 앞으로의 비전을 정리해보세요"])
        ],
        .게임_개발자하기: [
            Milestone(title: "게임 엔진 선택", description: "개발 환경 구축", successCriteria: ["Unity/Unreal 선택 이유와 비교 분석을 설명해보세요", "개발 환경 설정 과정과 경험을 기록해보세요", "기초 튜토리얼 완료 후 느낀 점과 배운 내용을 공유해보세요"]),
            Milestone(title: "게임 프로토타입", description: "게임 메카닉 구현", successCriteria: ["플레이어 조작 구현 경험과 배운 점을 설명해보세요", "게임 로직 구현에서 어려웠던 부분과 해결 방법을 기록해보세요", "레벨 디자인 경험과 게임 플로우 설계를 공유해보세요"]),
            Milestone(title: "게임 출시", description: "완성된 게임 배포", successCriteria: ["첫 게임 완성 경험과 배운 점을 설명해보세요", "스토어 출시 과정과 경험을 기록해보세요", "게임 개발자 성장 여정과 앞으로의 계획을 정리해보세요"])
        ],
        .Unity_마스터하기: [
            Milestone(title: "Unity 기초", description: "엔진 기본 학습", successCriteria: ["Unity 인터페이스 학습과 주요 기능 이해를 설명해보세요", "게임 오브젝트 다루기 경험과 배운 점을 기록해보세요", "C# 스크립팅 학습 과정과 활용 경험을 공유해보세요"]),
            Milestone(title: "게임 개발 실습", description: "게임 제작", successCriteria: ["2D 게임 제작 경험과 배운 점을 설명해보세요", "3D 게임 제작에서 새롭게 배운 내용을 기록해보세요", "물리 엔진 활용 경험과 게임 역학 구현을 공유해보세요"]),
            Milestone(title: "Unity 전문가", description: "고급 기능 마스터", successCriteria: ["쉐이더 작성 경험과 그래픽 향상 효과를 설명해보세요", "최적화 경험과 성능 개선 노하우를 기록해보세요", "Unity 마스터 여정과 게임 개발자로서의 비전을 정리해보세요"])
        ],
        .Unreal_Engine_마스터하기: [
            Milestone(title: "Unreal 기초", description: "엔진 기본 학습", successCriteria: ["Unreal 에디터 학습과 주요 기능 이해를 설명해보세요", "블루프린트 학습 경험과 비주얼 스크립팅의 장점을 기록해보세요", "C++ 학습과 Unreal에서의 활용 경험을 공유해보세요"]),
            Milestone(title: "게임 개발 실습", description: "게임 제작", successCriteria: ["레벨 디자인 경험과 배운 점을 설명해보세요", "캐릭터 시스템 구현 경험을 기록해보세요", "AI 구현 경험과 게임 인공지능 이해를 공유해보세요"]),
            Milestone(title: "Unreal 전문가", description: "고급 기능 마스터", successCriteria: ["머티리얼 제작 경험과 시각적 표현 향상을 설명해보세요", "시퀀서 활용 경험과 시네마틱 제작을 기록해보세요", "Unreal Engine 마스터 여정과 게임 개발자로서의 비전을 정리해보세요"])
        ],
        ._3D_모델링하기: [
            Milestone(title: "모델링 기초", description: "3D 기본 개념", successCriteria: ["폴리곤 모델링 학습 과정과 이해한 개념을 설명해보세요", "기본 형태 제작 경험과 배운 점을 기록해보세요", "3D 좌표계 이해 과정과 공간 감각 발전을 공유해보세요"]),
            Milestone(title: "모델링 실습", description: "다양한 오브젝트 제작", successCriteria: ["캐릭터 모델링 경험과 배운 기술을 설명해보세요", "배경 모델링 경험과 환경 디자인 이해를 기록해보세요", "UV 매핑 학습 경험과 텍스처링 이해를 공유해보세요"]),
            Milestone(title: "3D 전문가", description: "고급 기술 습득", successCriteria: ["하이폴리 모델링 경험과 디테일 표현 기법을 설명해보세요", "리깅 학습 경험과 애니메이션 준비 과정을 기록해보세요", "3D 모델링 마스터 여정과 전문가로서의 비전을 정리해보세요"])
        ],
        .Maya_마스터하기: [
            Milestone(title: "Maya 기초", description: "인터페이스 학습", successCriteria: ["Maya 인터페이스 학습과 주요 기능 이해를 설명해보세요", "기본 도구 사용 경험과 배운 점을 기록해보세요", "폴리곤 모델링 학습 경험과 기법을 공유해보세요"]),
            Milestone(title: "애니메이션", description: "캐릭터 애니메이션", successCriteria: ["리깅 학습 경험과 캐릭터 구조 이해를 설명해보세요", "키프레임 애니메이션 제작 경험과 배운 점을 기록해보세요", "스키닝 학습과 자연스러운 움직임 구현을 공유해보세요"]),
            Milestone(title: "Maya 전문가", description: "고급 기능 습득", successCriteria: ["MEL 스크립트 학습과 자동화 경험을 설명해보세요", "다이나믹스 사용 경험과 물리 시뮬레이션 이해를 기록해보세요", "Maya 마스터 여정과 3D 아티스트로서의 비전을 정리해보세요"])
        ],
        .Blender_마스터하기: [
            Milestone(title: "Blender 기초", description: "인터페이스 학습", successCriteria: ["Blender 단축키 학습과 작업 효율 향상을 설명해보세요", "모델링 기초 학습 경험과 배운 기법을 기록해보세요", "스컬프팅 경험과 유기적 형태 표현을 공유해보세요"]),
            Milestone(title: "재질과 렌더링", description: "시각적 완성도", successCriteria: ["머티리얼 제작 경험과 표현 기법을 설명해보세요", "노드 에디터 학습과 활용 경험을 기록해보세요", "Cycles/Eevee 렌더링 경험과 품질 차이 이해를 공유해보세요"]),
            Milestone(title: "Blender 전문가", description: "고급 기능 습득", successCriteria: ["지오메트리 노드 학습과 프로시저럴 모델링 경험을 설명해보세요", "시뮬레이션 경험과 물리 효과 구현을 기록해보세요", "Blender 마스터 여정과 3D 아티스트로서의 비전을 정리해보세요"])
        ],
        .포토샵_전문가하기: [
            Milestone(title: "포토샵 기초", description: "기본 도구 학습", successCriteria: ["레이어 개념 학습과 활용 방법을 설명해보세요", "선택 도구 사용 경험과 정밀 선택 기법을 기록해보세요", "기본 보정 학습과 이미지 개선 경험을 공유해보세요"]),
            Milestone(title: "이미지 편집", description: "고급 편집 기술", successCriteria: ["합성 작업 경험과 자연스러운 합성 기법을 설명해보세요", "리터칭 학습과 피부 보정 경험을 기록해보세요", "색보정 학습과 분위기 연출 경험을 공유해보세요"]),
            Milestone(title: "포토샵 전문가", description: "전문가 수준", successCriteria: ["액션 제작 경험과 작업 자동화 활용을 설명해보세요", "스크립트 활용 경험과 효율 향상을 기록해보세요", "포토샵 마스터 여정과 디자이너로서의 비전을 정리해보세요"])
        ],
        .일러스트레이터_전문가하기: [
            Milestone(title: "일러스트레이터 기초", description: "벡터 기초", successCriteria: ["펜 도구 학습 경험과 베지어 곡선 이해를 설명해보세요", "패스파인더 학습과 도형 조합 기법을 기록해보세요", "기본 도형 제작 경험과 벡터 그래픽 이해를 공유해보세요"]),
            Milestone(title: "일러스트 제작", description: "다양한 작업", successCriteria: ["로고 디자인 경험과 브랜드 아이덴티티 표현을 설명해보세요", "아이콘 제작 경험과 심플한 표현 기법을 기록해보세요", "캐릭터 일러스트 경험과 스타일 발전을 공유해보세요"]),
            Milestone(title: "일러스트레이터 전문가", description: "전문가 수준", successCriteria: ["패턴 제작 경험과 반복 디자인 기법을 설명해보세요", "인포그래픽 제작 경험과 정보 시각화를 기록해보세요", "일러스트레이터 마스터 여정과 디자이너로서의 비전을 정리해보세요"])
        ],
        .프리미어_프로_전문가하기: [
            Milestone(title: "프리미어 기초", description: "편집 기초", successCriteria: ["타임라인 학습과 영상 편집 구조 이해를 설명해보세요", "컷 편집 경험과 스토리텔링 기법을 기록해보세요", "트랜지션 활용 경험과 장면 전환 효과를 공유해보세요"]),
            Milestone(title: "영상 편집", description: "고급 편집", successCriteria: ["색보정 학습과 영상 분위기 연출 경험을 설명해보세요", "사운드 편집 경험과 오디오 믹싱 이해를 기록해보세요", "자막 제작 경험과 영상 완성도 향상을 공유해보세요"]),
            Milestone(title: "프리미어 전문가", description: "전문가 수준", successCriteria: ["멀티캠 편집 경험과 다중 영상 동기화를 설명해보세요", "프록시 워크플로우 학습과 효율적인 작업 방법을 기록해보세요", "프리미어 프로 마스터 여정과 영상 편집자로서의 비전을 정리해보세요"])
        ],
        .애프터_이펙트_전문가하기: [
            Milestone(title: "애프터 이펙트 기초", description: "모션 기초", successCriteria: ["컴포지션 개념 학습과 작업 구조 이해를 설명해보세요", "키프레임 애니메이션 경험과 움직임 표현을 기록해보세요", "기본 효과 적용 경험과 시각적 향상을 공유해보세요"]),
            Milestone(title: "모션 그래픽", description: "고급 모션", successCriteria: ["텍스트 애니메이션 제작 경험과 표현 기법을 설명해보세요", "쉐이프 애니메이션 경험과 도형 활용을 기록해보세요", "표현식 학습과 자동화 경험을 공유해보세요"]),
            Milestone(title: "애프터 이펙트 전문가", description: "전문가 수준", successCriteria: ["3D 레이어 활용 경험과 입체적 표현을 설명해보세요", "트래킹/합성 학습과 실사 합성 경험을 기록해보세요", "애프터 이펙트 마스터 여정과 모션 디자이너로서의 비전을 정리해보세요"])
        ],
        .파이널_컷_프로하기: [
            Milestone(title: "파이널 컷 기초", description: "편집 기초", successCriteria: ["마그네틱 타임라인 학습과 편집 방식 이해를 설명해보세요", "기본 편집 경험과 컷 구성 기법을 기록해보세요", "라이브러리 관리 경험과 미디어 정리 방법을 공유해보세요"]),
            Milestone(title: "영상 편집", description: "고급 편집", successCriteria: ["색보정 학습과 영상 톤 조정 경험을 설명해보세요", "모션 효과 추가 경험과 역동적 표현을 기록해보세요", "멀티캠 편집 경험과 다중 앵글 활용을 공유해보세요"]),
            Milestone(title: "파이널 컷 전문가", description: "전문가 수준", successCriteria: ["플러그인 활용 경험과 기능 확장을 설명해보세요", "프로젝트 관리 경험과 효율적인 워크플로우를 기록해보세요", "파이널 컷 프로 마스터 여정과 영상 편집자로서의 비전을 정리해보세요"])
        ],
        .다빈치_리졸브하기: [
            Milestone(title: "다빈치 리졸브 기초", description: "편집 기초", successCriteria: ["편집 페이지 학습과 기본 편집 기능 이해를 설명해보세요", "미디어 관리 경험과 프로젝트 구성 방법을 기록해보세요", "기본 편집 경험과 컷 편집 기술을 공유해보세요"]),
            Milestone(title: "색보정", description: "컬러 그레이딩", successCriteria: ["컬러 페이지 학습과 전문 색보정 이해를 설명해보세요", "노드 기반 색보정 경험과 작업 방식을 기록해보세요", "LUT 적용 경험과 색감 표현 방법을 공유해보세요"]),
            Milestone(title: "다빈치 전문가", description: "전문가 수준", successCriteria: ["Fusion 학습과 VFX 제작 경험을 설명해보세요", "오디오 믹싱 경험과 Fairlight 활용을 기록해보세요", "다빈치 리졸브 마스터 여정과 영상 전문가로서의 비전을 정리해보세요"])
        ],
        .캐드_자격증_취득하기: [
            Milestone(title: "CAD 기초", description: "2D 도면 학습", successCriteria: ["기본 명령어 학습과 익숙해지기까지의 과정을 설명해보세요", "첫 2D 도면 작성 경험과 어려웠던 부분을 기록해보세요", "치수 기입 방법을 익히며 배운 점을 공유해보세요"]),
            Milestone(title: "3D 모델링", description: "3D CAD 학습", successCriteria: ["솔리드 모델링 학습 과정과 2D와의 차이점을 설명해보세요", "어셈블리 제작 경험과 부품 조합의 원리를 기록해보세요", "3D에서 2D 도면화 작업 경험을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "CAD 자격 획득", successCriteria: ["기출문제 학습을 통해 파악한 출제 유형을 설명해보세요", "실기 시험 준비 과정과 시간 관리 전략을 기록해보세요", "CAD 자격증 취득 과정과 앞으로의 활용 계획을 공유해보세요"])
        ],
        .건축기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["건축계획 학습 과정과 핵심 개념들을 설명해보세요", "건축구조 이해를 위해 노력한 부분을 기록해보세요", "건축시공 학습에서 실무와 연결되는 내용을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "설계 실습", successCriteria: ["건축 설계 연습 과정과 자주 하는 실수를 설명해보세요", "도면 작성 능력 향상을 위한 노력을 기록해보세요", "시간 내 완성을 위한 전략과 연습 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "건축기사 합격", successCriteria: ["필기 시험 합격 과정과 효과적인 학습법을 설명해보세요", "실기 시험 합격 경험과 준비 팁을 기록해보세요", "건축기사 자격 취득 후 계획과 포부를 공유해보세요"])
        ],
        .실내건축기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["실내디자인론 학습과 디자인 원리 이해를 설명해보세요", "색채학 공부를 통해 배운 색상 활용법을 기록해보세요", "건축재료 학습과 실내 인테리어 적용 방법을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "설계 실습", successCriteria: ["실내 설계 연습 경험과 공간 활용 아이디어를 설명해보세요", "투시도 그리기 연습 과정과 표현 기법을 기록해보세요", "시간 내 완성을 위한 작업 순서와 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "실내건축기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 노하우를 설명해보세요", "실기 시험 합격 경험과 도움이 된 연습 방법을 기록해보세요", "실내건축기사 자격 취득 후 활동 계획을 공유해보세요"])
        ],
        .조경기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["조경계획 학습과 공간 설계 원리를 설명해보세요", "조경식재 공부를 통해 배운 식물 지식을 기록해보세요", "조경시공 학습과 실제 적용 방법을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "설계 실습", successCriteria: ["조경 설계 연습 경험과 디자인 컨셉을 설명해보세요", "식재 계획 수립 과정과 고려한 요소들을 기록해보세요", "시간 내 완성을 위한 효율적인 작업 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "조경기사 합격", successCriteria: ["필기 시험 합격 과정과 효과적인 암기법을 설명해보세요", "실기 시험 합격 경험과 설계 노하우를 기록해보세요", "조경기사 자격 취득 후 활동 계획을 공유해보세요"])
        ],
        .토목기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["응용역학 학습 과정과 어려웠던 개념을 설명해보세요", "토질및기초 공부를 통해 이해한 내용을 기록해보세요", "측량학 학습과 실제 적용 사례를 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["토목시공 연습 경험과 중요한 포인트를 설명해보세요", "도면 해석 능력 향상 과정을 기록해보세요", "시간 내 문제 풀이를 위한 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "토목기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 방법을 설명해보세요", "실기 시험 합격 경험과 준비 팁을 기록해보세요", "토목기사 자격 취득 후 진로 계획을 공유해보세요"])
        ],
        .전기기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["전기자기학 학습 과정과 핵심 공식들을 설명해보세요", "전력공학 공부를 통해 이해한 전력 시스템을 기록해보세요", "전기기기 학습과 각 기기의 원리를 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["회로 설계 연습 경험과 설계 방법을 설명해보세요", "전기설비 이해를 위해 노력한 부분을 기록해보세요", "시간 내 문제 풀이를 위한 요령을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "전기기사 합격", successCriteria: ["필기 시험 합격 과정과 효과적인 학습법을 설명해보세요", "실기 시험 합격 경험과 계산 문제 접근법을 기록해보세요", "전기기사 자격 취득 후 활용 계획을 공유해보세요"])
        ],
        .기계기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["기계재료 및 유압기기 학습 과정을 설명해보세요", "기계열역학 공부를 통해 이해한 열역학 법칙들을 기록해보세요", "기계가공법 학습과 각 가공 방식의 특징을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["기계제작법 연습 경험과 중요 포인트를 설명해보세요", "도면 해석 능력 향상을 위한 학습 방법을 기록해보세요", "시간 내 문제 풀이 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "기계기사 합격", successCriteria: ["필기 시험 합격 과정과 과목별 학습법을 설명해보세요", "실기 시험 합격 경험과 실무 문제 접근법을 기록해보세요", "기계기사 자격 취득 후 진로 계획을 공유해보세요"])
        ],
        .화학분석기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["일반화학 학습 과정과 핵심 개념들을 설명해보세요", "분석화학 공부를 통해 배운 분석 방법들을 기록해보세요", "기기분석 학습과 각 기기의 원리를 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실험 실습", successCriteria: ["정량분석 실습 경험과 정확도 향상 방법을 설명해보세요", "분석 기기 조작 경험과 주의할 점을 기록해보세요", "시간 내 분석 완료를 위한 효율적인 순서를 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "화학분석기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 전략을 설명해보세요", "실기 시험 합격 경험과 실험 팁을 기록해보세요", "화학분석기사 자격 취득 후 활용 분야를 공유해보세요"])
        ],
        .환경기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["수질오염방지 학습과 처리 기술들을 설명해보세요", "대기오염방지 공부를 통해 배운 방지 시설을 기록해보세요", "폐기물처리 학습과 처리 방법의 특징을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["환경오염공정시험 연습 경험을 설명해보세요", "계산 문제 풀이 능력 향상 과정을 기록해보세요", "시간 내 문제 풀이를 위한 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "환경기사 합격", successCriteria: ["필기 시험 합격 과정과 과목별 학습법을 설명해보세요", "실기 시험 합격 경험과 계산 문제 팁을 기록해보세요", "환경기사 자격 취득 후 환경 분야 기여 계획을 공유해보세요"])
        ],
        .에너지관리기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["연소공학 학습 과정과 연소 원리를 설명해보세요", "열역학 공부를 통해 이해한 법칙들을 기록해보세요", "열설비재료 학습과 재료의 특성을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["에너지관리 실무 연습 경험을 설명해보세요", "계산 문제 풀이 방법과 공식 활용을 기록해보세요", "시간 내 문제 풀이 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "에너지관리기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 노하우를 설명해보세요", "실기 시험 합격 경험과 실무 문제 접근법을 기록해보세요", "에너지관리기사 자격 취득 후 에너지 절약 기여 계획을 공유해보세요"])
        ],
        .소방설비기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["소방원론 학습과 화재 예방 원리를 설명해보세요", "소방관계법규 공부를 통해 배운 내용을 기록해보세요", "소방전기/기계 학습과 설비 원리를 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["설비 설계 연습 경험과 설계 기준을 설명해보세요", "도면 해석 능력 향상 과정을 기록해보세요", "시간 내 문제 풀이 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "소방설비기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 방법을 설명해보세요", "실기 시험 합격 경험과 설계 팁을 기록해보세요", "소방설비기사 자격 취득 후 안전 분야 기여 계획을 공유해보세요"])
        ],
        .위험물기능사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["위험물 종류별 특성과 분류 기준을 설명해보세요", "위험물 저장 및 취급 방법을 기록해보세요", "각 위험물에 적합한 소화방법을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["실무 작업 연습 경험과 주의사항을 설명해보세요", "위험물 취급 안전 수칙과 중요 포인트를 기록해보세요", "시간 내 작업 완료를 위한 순서와 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "위험물기능사 합격", successCriteria: ["필기 시험 합격 과정과 암기 노하우를 설명해보세요", "실기 시험 합격 경험과 실무 팁을 기록해보세요", "위험물기능사 자격 취득 후 활용 계획을 공유해보세요"])
        ],
        .가스기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["가스설비 학습과 설비 구성 원리를 설명해보세요", "연소공학 공부를 통해 이해한 연소 메커니즘을 기록해보세요", "가스안전관리 학습과 안전 기준을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["가스설비 설계 연습 경험을 설명해보세요", "계산 문제 풀이 방법과 주요 공식을 기록해보세요", "시간 내 문제 풀이 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "가스기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 방법을 설명해보세요", "실기 시험 합격 경험과 설계 팁을 기록해보세요", "가스기사 자격 취득 후 안전관리 분야 기여 계획을 공유해보세요"])
        ],
        .항공정비사하기: [
            Milestone(title: "이론 학습", description: "항공 기초 지식", successCriteria: ["항공역학 학습 과정과 비행 원리를 설명해보세요", "항공기 구조 이해를 위해 노력한 부분을 기록해보세요", "항공기 시스템 학습과 각 시스템의 역할을 공유해보세요"]),
            Milestone(title: "정비 실습", description: "실무 경험", successCriteria: ["기체 정비 경험과 주요 점검 사항을 설명해보세요", "엔진 정비 경험과 정비 순서를 기록해보세요", "전자 장비 점검 경험과 트러블슈팅 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "항공정비사 합격", successCriteria: ["필기 시험 합격 과정과 학습 전략을 설명해보세요", "실기 시험 합격 경험과 정비 실습 팁을 기록해보세요", "항공정비사 자격 취득 후 항공 분야 커리어 계획을 공유해보세요"])
        ],
        .자동차정비기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["자동차 엔진 학습과 작동 원리를 설명해보세요", "섀시 구조 공부를 통해 이해한 내용을 기록해보세요", "전기장치 학습과 회로 이해 과정을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "정비 실습", successCriteria: ["엔진 정비 경험과 주요 점검 포인트를 설명해보세요", "브레이크 정비 경험과 안전 주의사항을 기록해보세요", "진단 장비 활용 경험과 고장 진단 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "자동차정비기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 방법을 설명해보세요", "실기 시험 합격 경험과 정비 팁을 기록해보세요", "자동차정비기사 자격 취득 후 진로 계획을 공유해보세요"])
        ],
        .용접기능사하기: [
            Milestone(title: "용접 기초", description: "이론 및 안전", successCriteria: ["용접 원리 이해 과정과 금속 접합 원리를 설명해보세요", "안전 장비 사용법과 용접 시 주의사항을 기록해보세요", "용접봉 종류별 특성과 적용 상황을 공유해보세요"]),
            Milestone(title: "용접 실습", description: "기술 연마", successCriteria: ["아크 용접 실습 경험과 기술 향상 과정을 설명해보세요", "가스 용접 실습 경험과 불꽃 조절 방법을 기록해보세요", "다양한 자세 용접 연습과 어려웠던 점을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "용접기능사 합격", successCriteria: ["필기 시험 합격 과정과 이론 학습 방법을 설명해보세요", "실기 시험 합격 경험과 용접 기술 팁을 기록해보세요", "용접기능사 자격 취득 후 기술 활용 계획을 공유해보세요"])
        ],
        .보일러기능사하기: [
            Milestone(title: "이론 학습", description: "보일러 기초", successCriteria: ["보일러 구조 이해 과정과 각 부품의 역할을 설명해보세요", "연소 원리 학습과 효율적인 연소 조건을 기록해보세요", "안전 관리 학습과 중요한 안전 수칙을 공유해보세요"]),
            Milestone(title: "실무 학습", description: "보일러 운전", successCriteria: ["보일러 운전 경험과 운전 순서를 설명해보세요", "보일러 점검 경험과 주요 점검 항목을 기록해보세요", "문제 발생 시 해결 경험과 대처 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "보일러기능사 합격", successCriteria: ["필기 시험 합격 과정과 학습 방법을 설명해보세요", "실기 시험 합격 경험과 운전 실습 팁을 기록해보세요", "보일러기능사 자격 취득 후 활용 계획을 공유해보세요"])
        ],
        .냉동기계기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["냉동공학 학습과 냉동 사이클 원리를 설명해보세요", "열역학 공부를 통해 이해한 법칙들을 기록해보세요", "냉매 학습과 각 냉매의 특성을 공유해보세요"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["냉동 시스템 이해 과정과 구성 요소를 설명해보세요", "냉동 설계 연습 경험과 설계 기준을 기록해보세요", "시간 내 문제 풀이 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "냉동기계기사 합격", successCriteria: ["필기 시험 합격 과정과 학습 노하우를 설명해보세요", "실기 시험 합격 경험과 설계 팁을 기록해보세요", "냉동기계기사 자격 취득 후 진로 계획을 공유해보세요"])
        ],
        .위생사_자격증_취득하기: [
            Milestone(title: "이론 학습", description: "위생 기초", successCriteria: ["공중보건학 학습과 주요 개념들을 설명해보세요", "환경위생학 공부를 통해 배운 내용을 기록해보세요", "식품위생학 학습과 위생 관리 기준을 공유해보세요"]),
            Milestone(title: "시험 준비", description: "기출문제 학습", successCriteria: ["기출문제 분석을 통해 파악한 출제 경향을 설명해보세요", "약점 과목 보완을 위해 노력한 방법을 기록해보세요", "모의고사 경험과 시간 관리 전략을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "위생사 합격", successCriteria: ["국가고시 합격 과정과 최종 준비 방법을 설명해보세요", "위생사 자격증 취득 경험을 기록해보세요", "위생사로서의 활동 계획과 포부를 공유해보세요"])
        ],
        .영양사_자격증_취득하기: [
            Milestone(title: "전공 이수", description: "영양학 학습", successCriteria: ["영양학과 학습 과정과 전공 선택 동기를 설명해보세요", "필수 과목 이수 과정과 인상적인 수업을 기록해보세요", "영양 실습 경험과 배운 점을 공유해보세요"]),
            Milestone(title: "국가고시 준비", description: "시험 대비", successCriteria: ["기출문제 분석을 통해 파악한 출제 유형을 설명해보세요", "약점 과목 보완을 위한 학습 전략을 기록해보세요", "모의고사 경험과 실전 대비 방법을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "영양사 합격", successCriteria: ["국가고시 합격 과정과 최종 준비 비결을 설명해보세요", "영양사 자격증 취득의 의미를 기록해보세요", "영양사로서의 활동 계획과 비전을 공유해보세요"])
        ],
        .임상영양사하기: [
            Milestone(title: "영양사 자격 취득", description: "기본 자격 확보", successCriteria: ["영양사 자격증 취득 과정과 경험을 설명해보세요", "임상 현장 경험과 배운 점을 기록해보세요", "임상영양 분야에 관심을 갖게 된 계기를 공유해보세요"]),
            Milestone(title: "임상영양 교육", description: "전문 과정 이수", successCriteria: ["임상영양 교육과정 이수 경험을 설명해보세요", "병원 실습 경험과 환자 영양관리 사례를 기록해보세요", "질환별 영양관리 지식과 적용 방법을 공유해보세요"]),
            Milestone(title: "임상영양사 인증", description: "전문 자격 획득", successCriteria: ["인증 시험 준비 과정과 학습 방법을 설명해보세요", "임상영양사 자격 취득 과정과 의미를 기록해보세요", "임상영양사로서의 활동 계획과 전문성 발전 비전을 공유해보세요"])
        ],
        .간호사_자격증_취득하기: [
            Milestone(title: "간호학과 입학", description: "전공 시작", successCriteria: ["간호학과 입학 과정과 전공 선택 동기를 설명해보세요", "기초 과목 학습 경험과 인상적인 내용을 기록해보세요", "실습 준비 과정과 마음가짐을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목 학습 중 가장 의미있었던 수업을 설명해보세요", "병원 실습 경험과 환자 케어에서 배운 점을 기록해보세요", "졸업 요건 충족을 위해 노력한 과정을 공유해보세요"]),
            Milestone(title: "국가고시 합격", description: "간호사 자격 취득", successCriteria: ["국가고시 준비 과정과 학습 전략을 설명해보세요", "국가고시 합격 경험과 합격의 기쁨을 기록해보세요", "간호사 면허 취득 후 진로 계획을 공유해보세요"])
        ],
        .약사_자격증_취득하기: [
            Milestone(title: "약학대학 입학", description: "약학 시작", successCriteria: ["약학대학 입학 과정과 전공 선택 동기를 설명해보세요", "기초 과목 학습 경험과 약학의 매력을 기록해보세요", "실습을 위한 준비 과정을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "6년 과정 완료", successCriteria: ["전공 과목 학습 중 가장 흥미로웠던 분야를 설명해보세요", "약국/병원 실습 경험과 약사의 역할에 대해 배운 점을 기록해보세요", "6년 과정을 마무리하며 느낀 점을 공유해보세요"]),
            Milestone(title: "국가고시 합격", description: "약사 자격 취득", successCriteria: ["국가고시 준비 과정과 학습 전략을 설명해보세요", "국가고시 합격 경험과 그 순간의 감정을 기록해보세요", "약사 면허 취득 후 약사로서의 비전을 공유해보세요"])
        ],
        .수의사_자격증_취득하기: [
            Milestone(title: "수의학과 입학", description: "수의학 시작", successCriteria: ["수의학과 입학 과정과 동물에 대한 사랑을 설명해보세요", "기초 과목 학습 경험과 수의학의 특별함을 기록해보세요", "동물을 다루며 배운 점과 느낀 점을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "6년 과정 완료", successCriteria: ["전공 과목 학습 중 가장 인상깊었던 분야를 설명해보세요", "동물병원 실습 경험과 치료 사례를 기록해보세요", "6년 과정을 완료하며 성장한 점을 공유해보세요"]),
            Milestone(title: "국가고시 합격", description: "수의사 자격 취득", successCriteria: ["국가고시 준비 과정과 학습 노하우를 설명해보세요", "국가고시 합격 경험과 수의사가 되는 기쁨을 기록해보세요", "수의사 면허 취득 후 동물 의료 분야 비전을 공유해보세요"])
        ],
        .물리치료사하기: [
            Milestone(title: "물리치료학과 입학", description: "전공 시작", successCriteria: ["물리치료학과 입학 과정과 전공 선택 동기를 설명해보세요", "해부학 학습 경험과 인체에 대한 이해를 기록해보세요", "실습 준비 과정과 기대감을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목 학습 중 가장 흥미로웠던 치료 기법을 설명해보세요", "병원 실습 경험과 환자 재활을 도운 사례를 기록해보세요", "4년 과정을 통해 성장한 점을 공유해보세요"]),
            Milestone(title: "국가고시 합격", description: "물리치료사 자격 취득", successCriteria: ["국가고시 준비 과정과 학습 전략을 설명해보세요", "국가고시 합격 경험과 그 의미를 기록해보세요", "물리치료사 면허 취득 후 재활 분야 비전을 공유해보세요"])
        ],
        .작업치료사하기: [
            Milestone(title: "작업치료학과 입학", description: "전공 시작", successCriteria: ["작업치료학과 입학 과정과 전공 선택 이유를 설명해보세요", "기초 의학 학습 경험과 작업치료의 특성을 기록해보세요", "실습 준비 과정과 환자를 돕고 싶은 마음을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목 학습 중 가장 의미있었던 치료 활동을 설명해보세요", "재활 실습 경험과 환자의 일상 회복을 도운 사례를 기록해보세요", "4년 과정을 통해 배운 점을 공유해보세요"]),
            Milestone(title: "국가고시 합격", description: "작업치료사 자격 취득", successCriteria: ["국가고시 준비 과정과 학습 방법을 설명해보세요", "국가고시 합격 경험과 작업치료사가 되는 의미를 기록해보세요", "작업치료사 면허 취득 후 재활 분야 기여 계획을 공유해보세요"])
        ],
        .언어치료사하기: [
            Milestone(title: "언어치료학과 입학", description: "전공 시작", successCriteria: ["관련 학과 입학 과정과 언어치료에 관심을 갖게 된 계기를 설명해보세요", "언어학 기초 학습 경험과 언어의 중요성을 기록해보세요", "실습 준비 과정과 의사소통 장애인을 돕고 싶은 마음을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "학위 과정 완료", successCriteria: ["전공 과목 학습 중 인상깊었던 치료 사례를 설명해보세요", "임상 실습 경험과 환자의 언어 발달을 도운 경험을 기록해보세요", "학위 과정을 통해 성장한 점을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "언어재활사 자격 취득", successCriteria: ["자격 시험 준비 과정과 학습 전략을 설명해보세요", "시험 합격 경험과 언어재활사가 되는 의미를 기록해보세요", "언어재활사로서 의사소통 장애인을 돕겠다는 비전을 공유해보세요"])
        ],
        .임상심리사하기: [
            Milestone(title: "심리학 학습", description: "기초 지식 확보", successCriteria: ["심리학과 학습 경험과 심리학에 매력을 느낀 이유를 설명해보세요", "임상심리학 공부를 통해 배운 핵심 개념들을 기록해보세요", "심리 평가 및 치료 실습 경험을 공유해보세요"]),
            Milestone(title: "수련 과정", description: "전문 훈련", successCriteria: ["수련 기관에서의 경험과 배운 점을 설명해보세요", "담당한 사례와 내담자를 도운 경험을 기록해보세요", "슈퍼비전을 통해 성장한 점과 깨달음을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "임상심리전문가 자격", successCriteria: ["자격 시험 준비 과정과 학습 전략을 설명해보세요", "시험 합격 경험과 임상심리전문가가 되는 의미를 기록해보세요", "임상심리전문가로서 정신건강 분야 기여 비전을 공유해보세요"])
        ],
        .상담심리사하기: [
            Milestone(title: "상담심리 학습", description: "기초 지식 확보", successCriteria: ["상담심리학 학습 경험과 상담에 관심을 갖게 된 계기를 설명해보세요", "다양한 상담 이론 학습과 자신에게 맞는 접근법을 기록해보세요", "기초 상담 실습 경험과 첫 상담의 느낌을 공유해보세요"]),
            Milestone(title: "수련 과정", description: "상담 훈련", successCriteria: ["상담 수련 경험과 상담자로서의 성장 과정을 설명해보세요", "담당한 상담 사례와 내담자를 도운 경험을 기록해보세요", "슈퍼비전을 통해 배운 점과 성찰을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "상담심리사 자격", successCriteria: ["자격 시험 준비 과정과 학습 방법을 설명해보세요", "시험 합격 경험과 상담심리사가 되는 의미를 기록해보세요", "상담심리사로서 사람들을 돕겠다는 비전을 공유해보세요"])
        ],
        .사회복지사_1급하기: [
            Milestone(title: "전공 이수", description: "사회복지학 학습", successCriteria: ["사회복지학 전공 경험과 사회복지에 관심을 갖게 된 계기를 설명해보세요", "필수 과목 학습 중 가장 인상깊었던 내용을 기록해보세요", "현장 실습 경험과 클라이언트를 도운 사례를 공유해보세요"]),
            Milestone(title: "2급 자격 취득", description: "기본 자격 확보", successCriteria: ["사회복지사 2급 취득 과정과 경험을 설명해보세요", "사회복지 실무 경험과 현장에서 배운 점을 기록해보세요", "1급 시험 준비 과정과 학습 계획을 공유해보세요"]),
            Milestone(title: "1급 자격 취득", description: "최고 등급 획득", successCriteria: ["1급 시험 합격 과정과 학습 전략을 설명해보세요", "사회복지사 1급 자격증 취득의 의미를 기록해보세요", "사회복지사 1급으로서 사회 기여 비전을 공유해보세요"])
        ],
        .보육교사_자격증_취득하기: [
            Milestone(title: "전공 학습", description: "보육 관련 이수", successCriteria: ["보육 관련 학과 학습 경험과 영유아 교육에 관심을 갖게 된 이유를 설명해보세요", "필수 과목 학습 중 가장 유익했던 내용을 기록해보세요", "보육 실습 경험과 아이들과의 교류에서 느낀 점을 공유해보세요"]),
            Milestone(title: "자격 신청", description: "자격증 신청", successCriteria: ["자격 요건 충족을 위해 노력한 과정을 설명해보세요", "서류 준비 과정과 필요한 서류들을 기록해보세요", "자격증 신청 경험과 기대감을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "보육교사 자격 획득", successCriteria: ["보육교사 자격증 취득의 기쁨과 의미를 설명해보세요", "어린이집 근무 준비 과정을 기록해보세요", "보육교사로서 아이들의 성장을 돕겠다는 비전을 공유해보세요"])
        ],
        .유치원_정교사하기: [
            Milestone(title: "유아교육과 입학", description: "전공 시작", successCriteria: ["유아교육과 입학 과정과 유아교육에 관심을 갖게 된 계기를 설명해보세요", "기초 과목 학습 경험과 유아 발달에 대해 배운 점을 기록해보세요", "실습 준비 과정과 아이들을 가르치고 싶은 마음을 공유해보세요"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목 학습 중 가장 의미있었던 교육 활동을 설명해보세요", "유치원 실습 경험과 아이들과의 소중한 추억을 기록해보세요", "4년 과정을 통해 교사로서 성장한 점을 공유해보세요"]),
            Milestone(title: "자격증 취득", description: "유치원 정교사 자격", successCriteria: ["교원자격검정 통과 과정과 준비 방법을 설명해보세요", "유치원 정교사 자격증 취득의 기쁨과 의미를 기록해보세요", "유치원 교사로서 아이들의 꿈을 키워주겠다는 비전을 공유해보세요"])
        ]
    ]

    private static let positionData: [Self: LocationInfo] = [
        .일본어_JLPT_N1_취득하기: LocationInfo(latitude: 35.6762, longitude: 139.6503, name: "도쿄 JLPT 시험장", address: "Tokyo, Japan"),
        .중국어_HSK_6급_취득하기: LocationInfo(latitude: 39.9042, longitude: 116.4074, name: "베이징 HSK 시험장", address: "Beijing, China"),
        .MBA_학위_취득하기: LocationInfo(latitude: 42.3601, longitude: -71.0589, name: "하버드 경영대학원", address: "Boston, USA"),
        .박사_학위_취득하기: LocationInfo(latitude: 37.4275, longitude: -122.1697, name: "스탠포드 대학교", address: "Stanford, USA")
    ]
}

