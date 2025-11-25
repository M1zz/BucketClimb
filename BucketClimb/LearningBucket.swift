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
        Self.metadata[self]!.0
    }

    var backgroundImage: String {
        Self.metadata[self]!.1
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
                "알파벳과 발음 규칙을 이해하고 있나요?",
                "기본 인사와 자기소개가 가능한가요?",
                "1000단어 이상의 기본 어휘를 알고 있나요?"
            ]),
            Milestone(title: "중급 도달", description: "일상 대화 가능 수준", successCriteria: [
                "영어 드라마/영화를 자막 없이 50% 이상 이해하나요?",
                "10분 이상 원어민과 대화가 가능한가요?",
                "이메일이나 간단한 글쓰기가 가능한가요?"
            ]),
            Milestone(title: "고급 완성", description: "비즈니스/학술 수준의 영어 구사", successCriteria: [
                "업무 미팅을 영어로 진행할 수 있나요?",
                "프레젠테이션을 영어로 할 수 있나요?",
                "전문 분야의 문서를 읽고 작성할 수 있나요?"
            ])
        ],
        .중국어_HSK_6급_취득하기: [
            Milestone(title: "HSK 1-2급 통과", description: "기초 중국어 마스터", successCriteria: [
                "병음과 성조를 정확히 구사할 수 있나요?",
                "간체자 300자 이상을 읽고 쓸 수 있나요?",
                "기본적인 인사와 숫자 표현이 가능한가요?"
            ]),
            Milestone(title: "HSK 3-4급 통과", description: "중급 중국어 달성", successCriteria: [
                "일상적인 주제로 대화가 가능한가요?",
                "1200자 이상의 한자를 알고 있나요?",
                "간단한 뉴스 기사를 읽을 수 있나요?"
            ]),
            Milestone(title: "HSK 5급 통과", description: "고급 중국어 진입", successCriteria: [
                "중국 드라마를 자막 없이 이해하나요?",
                "신문 기사와 논설문을 읽을 수 있나요?",
                "정식 자리에서 연설이나 발표가 가능한가요?"
            ]),
            Milestone(title: "HSK 6급 최종 합격", description: "원어민 수준 달성", successCriteria: [
                "모의고사에서 180점 이상 받았나요?",
                "중국어로 논문이나 보고서를 작성할 수 있나요?",
                "통역/번역이 가능한 수준인가요?"
            ])
        ],
        .TOEIC_990점하기: [
            Milestone(title: "기본기 다지기", description: "TOEIC 600점 달성", successCriteria: [
                "기본 문법(시제, 품사)을 이해하고 있나요?",
                "Part 5,6 문제를 시간 내에 풀 수 있나요?",
                "기본 비즈니스 어휘를 알고 있나요?"
            ]),
            Milestone(title: "중급 달성", description: "TOEIC 800점 달성", successCriteria: [
                "Part 7의 긴 지문을 빠르게 읽을 수 있나요?",
                "LC Part 3,4를 80% 이상 맞출 수 있나요?",
                "시간 관리를 하며 전체 문제를 풀 수 있나요?"
            ]),
            Milestone(title: "고급 달성", description: "TOEIC 950점 이상", successCriteria: [
                "모든 Part에서 90% 이상 정답률인가요?",
                "자주 틀리는 유형을 파악하고 있나요?",
                "실전 모의고사에서 950점 이상 받았나요?"
            ]),
            Milestone(title: "만점 달성", description: "TOEIC 990점 취득", successCriteria: [
                "실전 시험에서 LC 495점을 받았나요?",
                "실전 시험에서 RC 495점을 받았나요?",
                "TOEIC 990점 인증서를 받았나요?"
            ])
        ],
        .코딩_마스터하기: [
            Milestone(title: "언어 선택 및 기초", description: "첫 프로그래밍 언어 마스터", successCriteria: [
                "주 언어를 선택했나요? (Python, JavaScript 등)",
                "변수, 조건문, 반복문을 이해하고 있나요?",
                "간단한 프로그램을 직접 작성할 수 있나요?"
            ]),
            Milestone(title: "자료구조/알고리즘", description: "CS 기초 이해", successCriteria: [
                "배열, 리스트, 스택, 큐를 이해하고 있나요?",
                "정렬, 탐색 알고리즘을 구현할 수 있나요?",
                "코딩 테스트 기초 문제를 풀 수 있나요?"
            ]),
            Milestone(title: "프로젝트 경험", description: "실전 개발 경험", successCriteria: [
                "개인 프로젝트를 완성한 적이 있나요?",
                "Git을 사용하여 버전 관리를 할 수 있나요?",
                "협업 프로젝트에 참여한 경험이 있나요?"
            ]),
            Milestone(title: "전문 분야 확립", description: "특정 분야 전문가", successCriteria: [
                "전문 분야를 정했나요? (웹, 앱, 데이터 등)",
                "해당 분야의 프레임워크를 숙달했나요?",
                "실무 수준의 프로젝트를 만들 수 있나요?"
            ])
        ],
        .AI_머신러닝_전문가_되기: [
            Milestone(title: "수학적 기초", description: "선형대수, 확률, 통계 이해", successCriteria: [
                "행렬 연산을 이해하고 있나요?",
                "확률 분포와 통계 개념을 알고 있나요?",
                "미적분 기초를 이해하고 있나요?"
            ]),
            Milestone(title: "ML 기초", description: "머신러닝 알고리즘 이해", successCriteria: [
                "지도학습/비지도학습 차이를 알고 있나요?",
                "회귀, 분류, 클러스터링을 구현할 수 있나요?",
                "scikit-learn 등의 라이브러리를 사용할 수 있나요?"
            ]),
            Milestone(title: "딥러닝 입문", description: "신경망 이해 및 구현", successCriteria: [
                "CNN, RNN의 원리를 이해하고 있나요?",
                "TensorFlow 또는 PyTorch를 사용할 수 있나요?",
                "이미지 분류 모델을 직접 만들 수 있나요?"
            ]),
            Milestone(title: "실전 프로젝트", description: "AI 프로젝트 완성", successCriteria: [
                "실제 데이터로 모델을 학습시킨 경험이 있나요?",
                "모델 성능을 개선한 경험이 있나요?",
                "AI 프로젝트 포트폴리오가 있나요?"
            ])
        ],
        .MBA_학위_취득하기: [
            Milestone(title: "준비 단계", description: "MBA 입학 준비", successCriteria: [
                "목표 학교 리스트를 작성했나요?",
                "GMAT/GRE 점수를 취득했나요?",
                "추천서 작성자를 확보했나요?"
            ]),
            Milestone(title: "지원 완료", description: "MBA 합격", successCriteria: [
                "에세이를 완성했나요?",
                "인터뷰를 통과했나요?",
                "합격 통지를 받았나요?"
            ]),
            Milestone(title: "1학년 완료", description: "Core 과정 수료", successCriteria: [
                "필수 과목을 모두 이수했나요?",
                "팀 프로젝트를 성공적으로 완료했나요?",
                "인턴십을 확보했나요?"
            ]),
            Milestone(title: "졸업", description: "MBA 학위 취득", successCriteria: [
                "모든 학점을 이수했나요?",
                "캡스톤 프로젝트를 완료했나요?",
                "MBA 학위를 받았나요?"
            ])
        ],
        .일본어_JLPT_N1_취득하기: [
            Milestone(title: "히라가나/가타카나 마스터", description: "기초 문자 학습", successCriteria: ["히라가나를 완벽히 읽고 쓸 수 있나요?", "가타카나를 완벽히 읽고 쓸 수 있나요?", "기본 발음 규칙을 이해하나요?"]),
            Milestone(title: "N3 통과", description: "중급 일본어 달성", successCriteria: ["한자 600자 이상 알고 있나요?", "일상 대화가 가능한가요?", "간단한 뉴스를 읽을 수 있나요?"]),
            Milestone(title: "N2 통과", description: "고급 일본어 진입", successCriteria: ["한자 1000자 이상 알고 있나요?", "드라마를 자막 없이 70% 이해하나요?", "비즈니스 일본어가 가능한가요?"]),
            Milestone(title: "N1 최종 합격", description: "최고급 달성", successCriteria: ["N1 모의고사에서 합격점을 받았나요?", "신문 사설을 읽을 수 있나요?", "통역/번역이 가능한 수준인가요?"])
        ],
        .프랑스어_유창하게_구사하기: [
            Milestone(title: "기초 프랑스어", description: "A1-A2 수준 달성", successCriteria: ["알파벳과 발음을 마스터했나요?", "기본 인사와 자기소개가 가능한가요?", "숫자와 시간 표현을 할 수 있나요?"]),
            Milestone(title: "중급 프랑스어", description: "B1-B2 수준 달성", successCriteria: ["일상 대화가 자연스러운가요?", "프랑스 영화를 자막 없이 50% 이해하나요?", "에세이를 작성할 수 있나요?"]),
            Milestone(title: "고급 프랑스어", description: "C1-C2 수준 달성", successCriteria: ["토론이나 발표가 가능한가요?", "문학 작품을 원서로 읽을 수 있나요?", "전문 분야 대화가 가능한가요?"])
        ],
        .스페인어_배우기: [
            Milestone(title: "기초 스페인어", description: "A1-A2 수준 달성", successCriteria: ["알파벳과 발음을 익혔나요?", "기본 동사 활용을 할 수 있나요?", "간단한 대화가 가능한가요?"]),
            Milestone(title: "중급 스페인어", description: "B1-B2 수준 달성", successCriteria: ["과거/미래 시제를 사용할 수 있나요?", "스페인어 드라마를 50% 이해하나요?", "여행 중 의사소통이 가능한가요?"]),
            Milestone(title: "고급 스페인어", description: "유창한 수준", successCriteria: ["원어민과 자연스럽게 대화하나요?", "뉴스와 신문을 이해할 수 있나요?", "업무에서 스페인어를 사용할 수 있나요?"])
        ],
        .사진_작가_자격증_취득하기: [
            Milestone(title: "카메라 기초", description: "카메라 조작법 습득", successCriteria: ["조리개, 셔터스피드, ISO를 이해하나요?", "수동 모드로 촬영할 수 있나요?", "RAW 파일을 다룰 수 있나요?"]),
            Milestone(title: "촬영 기술", description: "다양한 촬영 기법 학습", successCriteria: ["구도와 프레이밍을 이해하나요?", "조명을 활용할 수 있나요?", "인물/풍경 촬영에 익숙한가요?"]),
            Milestone(title: "자격증 취득", description: "사진작가 자격 획득", successCriteria: ["포트폴리오를 준비했나요?", "필기시험 준비를 완료했나요?", "실기시험에 자신이 있나요?"])
        ],
        .바리스타_자격증_취득하기: [
            Milestone(title: "커피 이론", description: "커피 기초 지식 습득", successCriteria: ["커피 원두의 종류를 알고 있나요?", "로스팅 단계를 이해하나요?", "추출 원리를 알고 있나요?"]),
            Milestone(title: "에스프레소 추출", description: "에스프레소 마스터", successCriteria: ["에스프레소 머신을 다룰 수 있나요?", "일정한 품질의 샷을 추출하나요?", "그라인더 세팅을 조절할 수 있나요?"]),
            Milestone(title: "라떼아트", description: "우유 스티밍 및 아트", successCriteria: ["마이크로폼을 만들 수 있나요?", "하트와 로제타를 그릴 수 있나요?", "다양한 음료를 만들 수 있나요?"])
        ],
        .소믈리에_자격증_취득하기: [
            Milestone(title: "와인 기초", description: "와인 이론 학습", successCriteria: ["주요 포도 품종을 알고 있나요?", "와인 지역을 구분할 수 있나요?", "와인 라벨을 읽을 수 있나요?"]),
            Milestone(title: "테이스팅 훈련", description: "와인 감별 능력", successCriteria: ["블라인드 테이스팅을 할 수 있나요?", "와인의 결함을 찾을 수 있나요?", "음식 페어링을 할 수 있나요?"]),
            Milestone(title: "서비스 실습", description: "소믈리에 서비스", successCriteria: ["디캔팅을 할 수 있나요?", "올바른 서빙 온도를 알고 있나요?", "고객 응대가 자연스러운가요?"])
        ],
        .요리사_자격증_취득하기: [
            Milestone(title: "기본 조리법", description: "조리 기초 습득", successCriteria: ["칼질이 능숙한가요?", "기본 조리법을 알고 있나요?", "위생 관리를 이해하나요?"]),
            Milestone(title: "메뉴별 실습", description: "다양한 요리 마스터", successCriteria: ["한식 기본 메뉴를 만들 수 있나요?", "양식 기본 메뉴를 만들 수 있나요?", "중식 기본 메뉴를 만들 수 있나요?"]),
            Milestone(title: "실기시험 준비", description: "자격증 시험 대비", successCriteria: ["시험 메뉴를 연습했나요?", "시간 내에 완성할 수 있나요?", "모의 실기를 통과했나요?"])
        ],
        .공인중개사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "부동산학개론/민법", successCriteria: ["부동산학개론을 공부했나요?", "민법 및 민사특별법을 이해하나요?", "기출문제를 풀어봤나요?"]),
            Milestone(title: "2차 시험 준비", description: "중개사법/공시법/세법", successCriteria: ["부동산 공시법을 이해하나요?", "중개사법령을 숙지했나요?", "부동산 세법을 공부했나요?"]),
            Milestone(title: "자격증 취득", description: "최종 합격", successCriteria: ["1차 시험에 합격했나요?", "2차 시험에 합격했나요?", "자격증을 발급받았나요?"])
        ],
        .재무설계사_자격증_취득하기: [
            Milestone(title: "재무설계 기초", description: "이론 학습", successCriteria: ["재무설계 프로세스를 이해하나요?", "금융상품 지식이 있나요?", "세금 기초를 알고 있나요?"]),
            Milestone(title: "AFPK 취득", description: "기본 자격 획득", successCriteria: ["AFPK 교육을 이수했나요?", "AFPK 시험에 합격했나요?", "실무 경험을 쌓았나요?"]),
            Milestone(title: "CFP 취득", description: "전문 자격 획득", successCriteria: ["CFP 교육을 이수했나요?", "CFP 시험에 합격했나요?", "CFP 인증을 받았나요?"])
        ],
        .박사_학위_취득하기: [
            Milestone(title: "대학원 입학", description: "박사과정 시작", successCriteria: ["연구 주제를 정했나요?", "지도교수를 정했나요?", "박사과정에 합격했나요?"]),
            Milestone(title: "Coursework 완료", description: "수업 이수", successCriteria: ["필수 과목을 이수했나요?", "종합시험을 통과했나요?", "논문 자격을 획득했나요?"]),
            Milestone(title: "논문 완성", description: "학위논문 작성", successCriteria: ["연구를 완료했나요?", "논문을 작성했나요?", "심사를 통과했나요?"])
        ],
        .독일어_배우기: [
            Milestone(title: "기초 독일어", description: "A1-A2 수준", successCriteria: ["알파벳과 발음을 익혔나요?", "기본 문법을 이해하나요?", "간단한 대화가 가능한가요?"]),
            Milestone(title: "중급 독일어", description: "B1-B2 수준", successCriteria: ["복잡한 문장을 이해하나요?", "일상적인 주제로 토론할 수 있나요?", "뉴스를 이해할 수 있나요?"]),
            Milestone(title: "고급 독일어", description: "C1 수준", successCriteria: ["원어민과 자유롭게 대화하나요?", "전문 분야 문서를 읽을 수 있나요?", "Goethe 자격증을 취득했나요?"])
        ],
        .이탈리아어_배우기: [
            Milestone(title: "기초 이탈리아어", description: "A1-A2 수준", successCriteria: ["발음 규칙을 익혔나요?", "기본 인사와 표현을 알고 있나요?", "간단한 문장을 만들 수 있나요?"]),
            Milestone(title: "중급 이탈리아어", description: "B1-B2 수준", successCriteria: ["일상 대화가 가능한가요?", "이탈리아 영화를 50% 이해하나요?", "여행 중 소통이 가능한가요?"]),
            Milestone(title: "고급 이탈리아어", description: "유창한 수준", successCriteria: ["원어민처럼 대화하나요?", "뉴스와 신문을 이해하나요?", "전문적인 대화가 가능한가요?"])
        ],
        .포르투갈어_배우기: [
            Milestone(title: "기초 포르투갈어", description: "A1-A2 수준", successCriteria: ["발음을 익혔나요?", "기본 동사 활용을 할 수 있나요?", "간단한 대화가 가능한가요?"]),
            Milestone(title: "중급 포르투갈어", description: "B1-B2 수준", successCriteria: ["브라질/포르투갈 억양 차이를 아나요?", "일상 대화가 자연스러운가요?", "영화를 50% 이해하나요?"]),
            Milestone(title: "고급 포르투갈어", description: "유창한 수준", successCriteria: ["원어민과 자유롭게 대화하나요?", "뉴스를 이해할 수 있나요?", "업무에서 사용할 수 있나요?"])
        ],
        .러시아어_배우기: [
            Milestone(title: "키릴 문자 마스터", description: "문자 학습", successCriteria: ["키릴 문자를 읽을 수 있나요?", "키릴 문자를 쓸 수 있나요?", "기본 발음을 익혔나요?"]),
            Milestone(title: "기초 러시아어", description: "A1-A2 수준", successCriteria: ["격변화를 이해하나요?", "기본 대화가 가능한가요?", "숫자와 시간을 말할 수 있나요?"]),
            Milestone(title: "중급 러시아어", description: "B1 이상", successCriteria: ["일상 대화가 자연스러운가요?", "러시아 뉴스를 이해하나요?", "문학 작품을 읽을 수 있나요?"])
        ],
        .아랍어_배우기: [
            Milestone(title: "아랍 문자 마스터", description: "문자 학습", successCriteria: ["아랍 문자를 읽을 수 있나요?", "오른쪽에서 왼쪽으로 쓸 수 있나요?", "발음 규칙을 익혔나요?"]),
            Milestone(title: "기초 아랍어", description: "A1-A2 수준", successCriteria: ["기본 인사를 할 수 있나요?", "숫자를 셀 수 있나요?", "간단한 문장을 만들 수 있나요?"]),
            Milestone(title: "중급 아랍어", description: "B1 이상", successCriteria: ["일상 대화가 가능한가요?", "뉴스를 이해할 수 있나요?", "아랍어 글을 읽을 수 있나요?"])
        ],
        .한국어_능력시험_6급하기: [
            Milestone(title: "TOPIK I 통과", description: "1-2급 달성", successCriteria: ["한글을 완벽히 읽고 쓰나요?", "기본 대화가 가능한가요?", "TOPIK 1-2급에 합격했나요?"]),
            Milestone(title: "TOPIK II 중급", description: "3-4급 달성", successCriteria: ["일상 대화가 자연스러운가요?", "한국 드라마를 50% 이해하나요?", "TOPIK 3-4급에 합격했나요?"]),
            Milestone(title: "TOPIK II 고급", description: "5-6급 달성", successCriteria: ["뉴스를 이해할 수 있나요?", "학술적 글쓰기가 가능한가요?", "TOPIK 6급에 합격했나요?"])
        ],
        .TOEFL_120점하기: [
            Milestone(title: "80점 달성", description: "기본기 확립", successCriteria: ["Reading 20점 이상인가요?", "Listening 20점 이상인가요?", "기본 문법을 숙지했나요?"]),
            Milestone(title: "100점 달성", description: "고급 수준 진입", successCriteria: ["Speaking 25점 이상인가요?", "Writing 25점 이상인가요?", "시간 관리가 가능한가요?"]),
            Milestone(title: "120점 달성", description: "만점 도전", successCriteria: ["모든 섹션 29점 이상인가요?", "실전 모의고사로 연습했나요?", "TOEFL 120점을 취득했나요?"])
        ],
        .IELTS_9점_취득하기: [
            Milestone(title: "6.5점 달성", description: "기본기 확립", successCriteria: ["Reading 6.5 이상인가요?", "Listening 6.5 이상인가요?", "문제 유형을 파악했나요?"]),
            Milestone(title: "8점 달성", description: "고급 수준", successCriteria: ["Speaking 8점 이상인가요?", "Writing 8점 이상인가요?", "채점 기준을 숙지했나요?"]),
            Milestone(title: "9점 달성", description: "만점 도전", successCriteria: ["모든 영역 9점인가요?", "원어민 수준의 영어 구사가 가능한가요?", "IELTS 9점을 취득했나요?"])
        ],
        .OPIc_AL하기: [
            Milestone(title: "IM 등급 달성", description: "중급 수준", successCriteria: ["자기소개를 유창하게 하나요?", "일상 주제로 대화가 가능한가요?", "IM 등급을 받았나요?"]),
            Milestone(title: "IH 등급 달성", description: "상급 진입", successCriteria: ["복잡한 상황을 설명할 수 있나요?", "의견을 논리적으로 표현하나요?", "IH 등급을 받았나요?"]),
            Milestone(title: "AL 등급 달성", description: "최고 등급", successCriteria: ["원어민처럼 자연스럽게 대화하나요?", "어떤 주제든 즉석 대화가 가능한가요?", "AL 등급을 받았나요?"])
        ],
        .번역가_자격증_취득하기: [
            Milestone(title: "언어 능력 확보", description: "고급 외국어 실력", successCriteria: ["원어민 수준의 외국어를 구사하나요?", "전문 분야 어휘를 알고 있나요?", "모국어 작문 능력이 뛰어난가요?"]),
            Milestone(title: "번역 실습", description: "번역 경험 축적", successCriteria: ["번역 연습을 꾸준히 하나요?", "교정 및 퇴고를 할 수 있나요?", "CAT 툴을 사용할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "공인 자격 획득", successCriteria: ["번역 시험에 합격했나요?", "포트폴리오를 준비했나요?", "자격증을 발급받았나요?"])
        ],
        .통역사_자격증_취득하기: [
            Milestone(title: "언어 능력 확보", description: "양방향 통역 기초", successCriteria: ["두 언어 모두 유창한가요?", "빠른 발화를 이해하나요?", "정확한 발음을 구사하나요?"]),
            Milestone(title: "통역 훈련", description: "통역 기술 습득", successCriteria: ["섀도잉 연습을 하고 있나요?", "노트테이킹 기술이 있나요?", "순차통역이 가능한가요?"]),
            Milestone(title: "동시통역 가능", description: "전문 통역 수준", successCriteria: ["동시통역이 가능한가요?", "전문 분야 통역이 가능한가요?", "통역사 자격증을 취득했나요?"])
        ],
        .교사_자격증_취득하기: [
            Milestone(title: "전공 학습", description: "교직 과정 이수", successCriteria: ["교직 과목을 이수했나요?", "전공 과목 학점을 취득했나요?", "교육봉사를 완료했나요?"]),
            Milestone(title: "교육실습", description: "현장 경험", successCriteria: ["교육실습을 나갔나요?", "수업 지도안을 작성할 수 있나요?", "학생 지도 경험이 있나요?"]),
            Milestone(title: "임용고시 준비", description: "교사 자격 취득", successCriteria: ["임용고시를 준비하고 있나요?", "모의고사를 풀고 있나요?", "교사 자격증을 취득했나요?"])
        ],
        .변호사_시험하기: [
            Milestone(title: "로스쿨 입학", description: "법학전문대학원 진학", successCriteria: ["LEET 시험을 봤나요?", "로스쿨에 합격했나요?", "법학 기초를 공부했나요?"]),
            Milestone(title: "로스쿨 과정", description: "3년 과정 이수", successCriteria: ["필수 과목을 이수했나요?", "법률 실무를 배웠나요?", "모의 재판에 참여했나요?"]),
            Milestone(title: "변호사 시험", description: "최종 합격", successCriteria: ["변호사시험을 준비했나요?", "변호사시험에 합격했나요?", "변호사 자격을 취득했나요?"])
        ],
        .회계사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "객관식 시험 대비", successCriteria: ["회계학을 공부했나요?", "세법을 공부했나요?", "경영학/경제학을 공부했나요?"]),
            Milestone(title: "1차 시험 합격", description: "1차 통과", successCriteria: ["1차 시험에 합격했나요?", "2차 과목 공부를 시작했나요?", "회계감사를 공부했나요?"]),
            Milestone(title: "2차 시험 합격", description: "최종 합격", successCriteria: ["2차 시험에 합격했나요?", "실무 수습을 완료했나요?", "공인회계사 자격을 취득했나요?"])
        ],
        .세무사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["재정학을 공부했나요?", "세법학개론을 공부했나요?", "회계학개론을 공부했나요?"]),
            Milestone(title: "1차 시험 합격", description: "1차 통과", successCriteria: ["1차 시험에 합격했나요?", "2차 과목 공부를 시작했나요?", "세법 심화를 공부했나요?"]),
            Milestone(title: "2차 시험 합격", description: "최종 합격", successCriteria: ["2차 시험에 합격했나요?", "실무 수습을 완료했나요?", "세무사 자격을 취득했나요?"])
        ],
        .감정평가사하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["민법을 공부했나요?", "경제학원론을 공부했나요?", "부동산학원론을 공부했나요?"]),
            Milestone(title: "2차 시험 준비", description: "전문 과목 학습", successCriteria: ["감정평가이론을 공부했나요?", "감정평가실무를 공부했나요?", "보상법규를 공부했나요?"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차 시험에 합격했나요?", "2차 시험에 합격했나요?", "감정평가사 자격을 취득했나요?"])
        ],
        .관세사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["관세법을 공부했나요?", "무역영어를 공부했나요?", "내국소비세법을 공부했나요?"]),
            Milestone(title: "2차 시험 준비", description: "실무 과목 학습", successCriteria: ["관세율표를 공부했나요?", "관세평가를 공부했나요?", "수출입통관실무를 공부했나요?"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차 시험에 합격했나요?", "2차 시험에 합격했나요?", "관세사 자격을 취득했나요?"])
        ],
        .변리사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["산업재산권법을 공부했나요?", "민법개론을 공부했나요?", "자연과학을 공부했나요?"]),
            Milestone(title: "2차 시험 준비", description: "전문 과목 학습", successCriteria: ["특허법을 심화 공부했나요?", "상표법을 공부했나요?", "디자인보호법을 공부했나요?"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차 시험에 합격했나요?", "2차 시험에 합격했나요?", "변리사 자격을 취득했나요?"])
        ],
        .노무사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["노동법을 공부했나요?", "민법을 공부했나요?", "경제학을 공부했나요?"]),
            Milestone(title: "2차 시험 준비", description: "전문 과목 학습", successCriteria: ["노동조합법을 심화 공부했나요?", "근로기준법을 심화 공부했나요?", "인사노무관리를 공부했나요?"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차 시험에 합격했나요?", "2차 시험에 합격했나요?", "공인노무사 자격을 취득했나요?"])
        ],
        .행정사_자격증_취득하기: [
            Milestone(title: "시험 과목 학습", description: "필수 과목 공부", successCriteria: ["행정법을 공부했나요?", "행정사실무법을 공부했나요?", "민법을 공부했나요?"]),
            Milestone(title: "기출문제 풀이", description: "시험 대비", successCriteria: ["기출문제를 풀어봤나요?", "약점 과목을 보완했나요?", "모의고사를 봤나요?"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["행정사 시험에 합격했나요?", "연수를 완료했나요?", "행정사 자격을 취득했나요?"])
        ],
        .법무사_자격증_취득하기: [
            Milestone(title: "1차 시험 준비", description: "기초 과목 학습", successCriteria: ["민법을 공부했나요?", "상법을 공부했나요?", "헌법을 공부했나요?"]),
            Milestone(title: "2차 시험 준비", description: "실무 과목 학습", successCriteria: ["등기신청서류작성을 공부했나요?", "민사집행법을 공부했나요?", "공탁법을 공부했나요?"]),
            Milestone(title: "최종 합격", description: "자격 취득", successCriteria: ["1차 시험에 합격했나요?", "2차 시험에 합격했나요?", "법무사 자격을 취득했나요?"])
        ],
        .PMP_자격증_취득하기: [
            Milestone(title: "자격 요건 충족", description: "응시 자격 확보", successCriteria: ["프로젝트 경험 4500시간 이상인가요?", "35시간 교육을 이수했나요?", "학사 학위가 있나요?"]),
            Milestone(title: "PMBOK 학습", description: "PM 지식 습득", successCriteria: ["PMBOK 가이드를 공부했나요?", "10개 지식 영역을 이해하나요?", "5개 프로세스 그룹을 알고 있나요?"]),
            Milestone(title: "시험 합격", description: "PMP 인증 획득", successCriteria: ["모의시험에서 합격점을 받았나요?", "PMP 시험에 합격했나요?", "PMP 인증서를 받았나요?"])
        ],
        .정보처리기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["소프트웨어 설계를 공부했나요?", "데이터베이스를 공부했나요?", "프로그래밍 언어를 공부했나요?"]),
            Milestone(title: "필기 시험 합격", description: "필기 통과", successCriteria: ["필기 시험에 합격했나요?", "실기 준비를 시작했나요?", "프로그래밍 실습을 하고 있나요?"]),
            Milestone(title: "실기 시험 합격", description: "최종 합격", successCriteria: ["실기 시험에 합격했나요?", "정보처리기사 자격을 취득했나요?", "자격증을 발급받았나요?"])
        ],
        .네트워크관리사하기: [
            Milestone(title: "네트워크 기초", description: "기본 이론 학습", successCriteria: ["OSI 7계층을 이해하나요?", "TCP/IP를 이해하나요?", "라우팅/스위칭을 이해하나요?"]),
            Milestone(title: "실습 훈련", description: "네트워크 구축 실습", successCriteria: ["네트워크 장비를 다룰 수 있나요?", "IP 설계를 할 수 있나요?", "트러블슈팅을 할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "최종 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "네트워크관리사 자격을 취득했나요?"])
        ],
        .리눅스마스터하기: [
            Milestone(title: "리눅스 기초", description: "기본 명령어 학습", successCriteria: ["리눅스를 설치할 수 있나요?", "기본 명령어를 사용할 수 있나요?", "파일 시스템을 이해하나요?"]),
            Milestone(title: "시스템 관리", description: "서버 관리 학습", successCriteria: ["사용자 관리를 할 수 있나요?", "서비스 관리를 할 수 있나요?", "쉘 스크립트를 작성할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "리눅스마스터 합격", successCriteria: ["2급에 합격했나요?", "1급에 합격했나요?", "리눅스마스터 자격을 취득했나요?"])
        ],
        .SQLD_자격증_취득하기: [
            Milestone(title: "SQL 기초", description: "기본 문법 학습", successCriteria: ["SELECT문을 작성할 수 있나요?", "JOIN을 이해하나요?", "서브쿼리를 작성할 수 있나요?"]),
            Milestone(title: "데이터 모델링", description: "설계 개념 학습", successCriteria: ["ER 다이어그램을 이해하나요?", "정규화를 이해하나요?", "성능 데이터 모델링을 아나요?"]),
            Milestone(title: "SQLD 합격", description: "자격 취득", successCriteria: ["기출문제를 풀어봤나요?", "SQLD 시험에 합격했나요?", "자격증을 발급받았나요?"])
        ],
        .빅데이터분석기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["빅데이터 분석 기획을 공부했나요?", "빅데이터 탐색을 공부했나요?", "빅데이터 모델링을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "분석 실습", successCriteria: ["Python/R을 사용할 수 있나요?", "머신러닝 모델을 만들 수 있나요?", "데이터 전처리를 할 수 있나요?"]),
            Milestone(title: "자격 취득", description: "최종 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "빅데이터분석기사 자격을 취득했나요?"])
        ],
        .AWS_자격증_취득하기: [
            Milestone(title: "AWS 기초 학습", description: "클라우드 개념 이해", successCriteria: ["EC2, S3를 이해하나요?", "VPC를 이해하나요?", "IAM을 이해하나요?"]),
            Milestone(title: "실습 경험", description: "AWS 서비스 사용", successCriteria: ["AWS 계정을 만들었나요?", "실제 서비스를 배포해봤나요?", "다양한 서비스를 사용해봤나요?"]),
            Milestone(title: "자격증 취득", description: "AWS 인증 획득", successCriteria: ["SAA 또는 다른 자격증을 목표로 했나요?", "모의시험을 봤나요?", "AWS 자격증을 취득했나요?"])
        ],
        .구글_클라우드_자격증_취득하기: [
            Milestone(title: "GCP 기초 학습", description: "구글 클라우드 이해", successCriteria: ["Compute Engine을 이해하나요?", "Cloud Storage를 이해하나요?", "BigQuery를 이해하나요?"]),
            Milestone(title: "실습 경험", description: "GCP 서비스 사용", successCriteria: ["GCP 계정을 만들었나요?", "프로젝트를 만들어봤나요?", "다양한 서비스를 사용해봤나요?"]),
            Milestone(title: "자격증 취득", description: "GCP 인증 획득", successCriteria: ["Associate Cloud Engineer를 목표로 했나요?", "모의시험을 봤나요?", "GCP 자격증을 취득했나요?"])
        ],
        .Azure_자격증_취득하기: [
            Milestone(title: "Azure 기초 학습", description: "마이크로소프트 클라우드 이해", successCriteria: ["Virtual Machines를 이해하나요?", "Blob Storage를 이해하나요?", "Azure AD를 이해하나요?"]),
            Milestone(title: "실습 경험", description: "Azure 서비스 사용", successCriteria: ["Azure 계정을 만들었나요?", "리소스 그룹을 만들어봤나요?", "다양한 서비스를 사용해봤나요?"]),
            Milestone(title: "자격증 취득", description: "Azure 인증 획득", successCriteria: ["AZ-900 또는 다른 자격증을 목표로 했나요?", "모의시험을 봤나요?", "Azure 자격증을 취득했나요?"])
        ],
        .CISSP_자격증_취득하기: [
            Milestone(title: "자격 요건 확인", description: "응시 자격 확보", successCriteria: ["보안 경력 5년 이상인가요?", "8개 도메인 중 2개 이상 경험이 있나요?", "CPE 유지 계획이 있나요?"]),
            Milestone(title: "8개 도메인 학습", description: "CBK 학습", successCriteria: ["보안 및 위험 관리를 이해하나요?", "암호학을 이해하나요?", "네트워크 보안을 이해하나요?"]),
            Milestone(title: "시험 합격", description: "CISSP 인증", successCriteria: ["모의시험에서 합격점을 받았나요?", "CISSP 시험에 합격했나요?", "인증서를 받았나요?"])
        ],
        .CEH_자격증_취득하기: [
            Milestone(title: "해킹 기초", description: "보안 기초 학습", successCriteria: ["네트워크 기초를 이해하나요?", "운영체제 보안을 이해하나요?", "기본적인 해킹 개념을 아나요?"]),
            Milestone(title: "공격 기법 학습", description: "해킹 기술 습득", successCriteria: ["취약점 스캐닝을 할 수 있나요?", "웹 해킹을 이해하나요?", "시스템 해킹을 이해하나요?"]),
            Milestone(title: "CEH 인증", description: "시험 합격", successCriteria: ["공인 교육을 이수했나요?", "CEH 시험에 합격했나요?", "인증서를 받았나요?"])
        ],
        .CCNA_자격증_취득하기: [
            Milestone(title: "네트워크 기초", description: "시스코 네트워킹 기초", successCriteria: ["OSI 모델을 이해하나요?", "IP 주소 체계를 이해하나요?", "서브넷팅을 할 수 있나요?"]),
            Milestone(title: "라우팅/스위칭", description: "시스코 장비 학습", successCriteria: ["라우터를 설정할 수 있나요?", "스위치를 설정할 수 있나요?", "VLAN을 구성할 수 있나요?"]),
            Milestone(title: "CCNA 인증", description: "시험 합격", successCriteria: ["Packet Tracer로 실습했나요?", "CCNA 시험에 합격했나요?", "인증서를 받았나요?"])
        ],
        .CCNP_자격증_취득하기: [
            Milestone(title: "CCNA 취득", description: "기초 자격 확보", successCriteria: ["CCNA를 취득했나요?", "고급 네트워킹에 관심이 있나요?", "트랙을 선택했나요?"]),
            Milestone(title: "Core 시험 준비", description: "핵심 시험 대비", successCriteria: ["ENCOR 과목을 공부했나요?", "실습 환경을 구축했나요?", "고급 라우팅을 이해하나요?"]),
            Milestone(title: "CCNP 인증", description: "시험 합격", successCriteria: ["Core 시험에 합격했나요?", "Concentration 시험에 합격했나요?", "CCNP 인증을 받았나요?"])
        ],
        .데이터사이언티스트하기: [
            Milestone(title: "통계/수학 기초", description: "기초 역량 확보", successCriteria: ["통계학 기초를 이해하나요?", "선형대수를 이해하나요?", "확률론을 이해하나요?"]),
            Milestone(title: "프로그래밍 역량", description: "분석 도구 습득", successCriteria: ["Python/R을 사용할 수 있나요?", "SQL을 사용할 수 있나요?", "데이터 시각화를 할 수 있나요?"]),
            Milestone(title: "머신러닝 역량", description: "ML 모델 구축", successCriteria: ["지도학습 모델을 만들 수 있나요?", "비지도학습을 이해하나요?", "실제 프로젝트 경험이 있나요?"])
        ],
        .풀스택_개발자하기: [
            Milestone(title: "프론트엔드 학습", description: "UI 개발 역량", successCriteria: ["HTML/CSS를 작성할 수 있나요?", "JavaScript를 사용할 수 있나요?", "React/Vue 등 프레임워크를 사용하나요?"]),
            Milestone(title: "백엔드 학습", description: "서버 개발 역량", successCriteria: ["서버 언어를 사용할 수 있나요?", "API를 만들 수 있나요?", "데이터베이스를 다룰 수 있나요?"]),
            Milestone(title: "풀스택 프로젝트", description: "통합 프로젝트", successCriteria: ["풀스택 프로젝트를 완성했나요?", "배포 경험이 있나요?", "포트폴리오가 있나요?"])
        ],
        .iOS_개발자하기: [
            Milestone(title: "Swift 기초", description: "언어 학습", successCriteria: ["Swift 문법을 이해하나요?", "옵셔널을 이해하나요?", "클로저를 사용할 수 있나요?"]),
            Milestone(title: "UIKit/SwiftUI", description: "UI 프레임워크 학습", successCriteria: ["화면을 구성할 수 있나요?", "Auto Layout을 사용할 수 있나요?", "SwiftUI를 사용할 수 있나요?"]),
            Milestone(title: "앱 출시", description: "앱스토어 등록", successCriteria: ["개인 앱을 만들었나요?", "App Store에 앱을 출시했나요?", "포트폴리오가 있나요?"])
        ],
        .안드로이드_개발자하기: [
            Milestone(title: "Kotlin 기초", description: "언어 학습", successCriteria: ["Kotlin 문법을 이해하나요?", "코루틴을 이해하나요?", "Java와의 차이를 아나요?"]),
            Milestone(title: "Android SDK", description: "안드로이드 개발 학습", successCriteria: ["Activity/Fragment를 이해하나요?", "Jetpack 컴포넌트를 사용하나요?", "MVVM 패턴을 적용할 수 있나요?"]),
            Milestone(title: "앱 출시", description: "플레이스토어 등록", successCriteria: ["개인 앱을 만들었나요?", "Play Store에 앱을 출시했나요?", "포트폴리오가 있나요?"])
        ],
        .블록체인_개발자하기: [
            Milestone(title: "블록체인 이해", description: "기초 개념 학습", successCriteria: ["블록체인 원리를 이해하나요?", "합의 알고리즘을 이해하나요?", "암호화 기술을 이해하나요?"]),
            Milestone(title: "스마트 컨트랙트", description: "솔리디티 학습", successCriteria: ["Solidity를 사용할 수 있나요?", "스마트 컨트랙트를 작성할 수 있나요?", "테스트넷에 배포해봤나요?"]),
            Milestone(title: "DApp 개발", description: "실전 프로젝트", successCriteria: ["Web3를 사용할 수 있나요?", "DApp을 만들어봤나요?", "메인넷 배포 경험이 있나요?"])
        ],
        .게임_개발자하기: [
            Milestone(title: "게임 엔진 선택", description: "개발 환경 구축", successCriteria: ["Unity 또는 Unreal을 선택했나요?", "개발 환경을 설정했나요?", "기초 튜토리얼을 완료했나요?"]),
            Milestone(title: "게임 프로토타입", description: "게임 메카닉 구현", successCriteria: ["플레이어 조작을 구현했나요?", "게임 로직을 구현했나요?", "기본적인 레벨을 만들었나요?"]),
            Milestone(title: "게임 출시", description: "완성된 게임 배포", successCriteria: ["게임을 완성했나요?", "스토어에 출시했나요?", "포트폴리오가 있나요?"])
        ],
        .Unity_마스터하기: [
            Milestone(title: "Unity 기초", description: "엔진 기본 학습", successCriteria: ["Unity 인터페이스를 이해하나요?", "게임 오브젝트를 다룰 수 있나요?", "C# 스크립팅을 할 수 있나요?"]),
            Milestone(title: "게임 개발 실습", description: "게임 제작", successCriteria: ["2D 게임을 만들어봤나요?", "3D 게임을 만들어봤나요?", "물리 엔진을 사용할 수 있나요?"]),
            Milestone(title: "Unity 전문가", description: "고급 기능 마스터", successCriteria: ["쉐이더를 작성할 수 있나요?", "최적화를 할 수 있나요?", "멀티플레이어를 구현할 수 있나요?"])
        ],
        .Unreal_Engine_마스터하기: [
            Milestone(title: "Unreal 기초", description: "엔진 기본 학습", successCriteria: ["Unreal 에디터를 다룰 수 있나요?", "블루프린트를 사용할 수 있나요?", "C++을 사용할 수 있나요?"]),
            Milestone(title: "게임 개발 실습", description: "게임 제작", successCriteria: ["레벨 디자인을 할 수 있나요?", "캐릭터 시스템을 만들 수 있나요?", "AI를 구현할 수 있나요?"]),
            Milestone(title: "Unreal 전문가", description: "고급 기능 마스터", successCriteria: ["머티리얼을 제작할 수 있나요?", "시퀀서를 사용할 수 있나요?", "대규모 프로젝트 경험이 있나요?"])
        ],
        ._3D_모델링하기: [
            Milestone(title: "모델링 기초", description: "3D 기본 개념", successCriteria: ["폴리곤 모델링을 이해하나요?", "기본 형태를 만들 수 있나요?", "좌표계를 이해하나요?"]),
            Milestone(title: "모델링 실습", description: "다양한 오브젝트 제작", successCriteria: ["캐릭터를 모델링할 수 있나요?", "배경을 모델링할 수 있나요?", "UV 매핑을 할 수 있나요?"]),
            Milestone(title: "3D 전문가", description: "고급 기술 습득", successCriteria: ["하이폴리 모델링이 가능한가요?", "리깅을 할 수 있나요?", "렌더링을 할 수 있나요?"])
        ],
        .Maya_마스터하기: [
            Milestone(title: "Maya 기초", description: "인터페이스 학습", successCriteria: ["Maya 인터페이스를 이해하나요?", "기본 도구를 사용할 수 있나요?", "폴리곤 모델링을 할 수 있나요?"]),
            Milestone(title: "애니메이션", description: "캐릭터 애니메이션", successCriteria: ["리깅을 할 수 있나요?", "키프레임 애니메이션을 만들 수 있나요?", "스키닝을 할 수 있나요?"]),
            Milestone(title: "Maya 전문가", description: "고급 기능 습득", successCriteria: ["MEL 스크립트를 사용할 수 있나요?", "다이나믹스를 사용할 수 있나요?", "Arnold 렌더링을 할 수 있나요?"])
        ],
        .Blender_마스터하기: [
            Milestone(title: "Blender 기초", description: "인터페이스 학습", successCriteria: ["Blender 단축키를 알고 있나요?", "모델링 기초를 익혔나요?", "스컬프팅을 해봤나요?"]),
            Milestone(title: "재질과 렌더링", description: "시각적 완성도", successCriteria: ["머티리얼을 만들 수 있나요?", "노드 에디터를 사용하나요?", "Cycles/Eevee를 사용하나요?"]),
            Milestone(title: "Blender 전문가", description: "고급 기능 습득", successCriteria: ["지오메트리 노드를 사용하나요?", "시뮬레이션을 할 수 있나요?", "영상 편집/합성을 할 수 있나요?"])
        ],
        .포토샵_전문가하기: [
            Milestone(title: "포토샵 기초", description: "기본 도구 학습", successCriteria: ["레이어를 이해하나요?", "선택 도구를 사용할 수 있나요?", "기본 보정을 할 수 있나요?"]),
            Milestone(title: "이미지 편집", description: "고급 편집 기술", successCriteria: ["합성을 할 수 있나요?", "리터칭을 할 수 있나요?", "색보정을 할 수 있나요?"]),
            Milestone(title: "포토샵 전문가", description: "전문가 수준", successCriteria: ["액션을 만들 수 있나요?", "스크립트를 사용하나요?", "전문 작업을 할 수 있나요?"])
        ],
        .일러스트레이터_전문가하기: [
            Milestone(title: "일러스트레이터 기초", description: "벡터 기초", successCriteria: ["펜 도구를 사용할 수 있나요?", "패스파인더를 이해하나요?", "기본 도형을 만들 수 있나요?"]),
            Milestone(title: "일러스트 제작", description: "다양한 작업", successCriteria: ["로고를 만들 수 있나요?", "아이콘을 만들 수 있나요?", "캐릭터를 그릴 수 있나요?"]),
            Milestone(title: "일러스트레이터 전문가", description: "전문가 수준", successCriteria: ["패턴을 만들 수 있나요?", "인포그래픽을 만들 수 있나요?", "전문 작업을 할 수 있나요?"])
        ],
        .프리미어_프로_전문가하기: [
            Milestone(title: "프리미어 기초", description: "편집 기초", successCriteria: ["타임라인을 이해하나요?", "컷 편집을 할 수 있나요?", "트랜지션을 추가할 수 있나요?"]),
            Milestone(title: "영상 편집", description: "고급 편집", successCriteria: ["색보정을 할 수 있나요?", "사운드 편집을 할 수 있나요?", "자막을 추가할 수 있나요?"]),
            Milestone(title: "프리미어 전문가", description: "전문가 수준", successCriteria: ["멀티캠 편집을 할 수 있나요?", "프록시 워크플로우를 아나요?", "전문 작업을 할 수 있나요?"])
        ],
        .애프터_이펙트_전문가하기: [
            Milestone(title: "애프터 이펙트 기초", description: "모션 기초", successCriteria: ["컴포지션을 이해하나요?", "키프레임을 만들 수 있나요?", "기본 효과를 적용할 수 있나요?"]),
            Milestone(title: "모션 그래픽", description: "고급 모션", successCriteria: ["텍스트 애니메이션을 만들 수 있나요?", "쉐이프 애니메이션을 할 수 있나요?", "표현식을 사용할 수 있나요?"]),
            Milestone(title: "애프터 이펙트 전문가", description: "전문가 수준", successCriteria: ["3D 레이어를 사용하나요?", "트래킹/합성을 할 수 있나요?", "전문 작업을 할 수 있나요?"])
        ],
        .파이널_컷_프로하기: [
            Milestone(title: "파이널 컷 기초", description: "편집 기초", successCriteria: ["마그네틱 타임라인을 이해하나요?", "기본 편집을 할 수 있나요?", "라이브러리를 관리할 수 있나요?"]),
            Milestone(title: "영상 편집", description: "고급 편집", successCriteria: ["색보정을 할 수 있나요?", "모션 효과를 추가할 수 있나요?", "멀티캠 편집을 할 수 있나요?"]),
            Milestone(title: "파이널 컷 전문가", description: "전문가 수준", successCriteria: ["플러그인을 활용하나요?", "프로젝트를 효율적으로 관리하나요?", "전문 작업을 할 수 있나요?"])
        ],
        .다빈치_리졸브하기: [
            Milestone(title: "다빈치 리졸브 기초", description: "편집 기초", successCriteria: ["편집 페이지를 사용할 수 있나요?", "미디어 관리를 할 수 있나요?", "기본 편집을 할 수 있나요?"]),
            Milestone(title: "색보정", description: "컬러 그레이딩", successCriteria: ["컬러 페이지를 사용하나요?", "노드 기반 색보정을 하나요?", "LUT를 적용할 수 있나요?"]),
            Milestone(title: "다빈치 전문가", description: "전문가 수준", successCriteria: ["Fusion을 사용할 수 있나요?", "오디오 믹싱을 할 수 있나요?", "전문 작업을 할 수 있나요?"])
        ],
        .캐드_자격증_취득하기: [
            Milestone(title: "CAD 기초", description: "2D 도면 학습", successCriteria: ["기본 명령어를 사용할 수 있나요?", "2D 도면을 그릴 수 있나요?", "치수를 기입할 수 있나요?"]),
            Milestone(title: "3D 모델링", description: "3D CAD 학습", successCriteria: ["솔리드 모델링을 할 수 있나요?", "어셈블리를 만들 수 있나요?", "도면화를 할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "CAD 자격 획득", successCriteria: ["기출문제를 풀어봤나요?", "실기 시험을 준비했나요?", "CAD 자격증을 취득했나요?"])
        ],
        .건축기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["건축계획을 공부했나요?", "건축구조를 공부했나요?", "건축시공을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "설계 실습", successCriteria: ["건축 설계를 연습했나요?", "도면을 그릴 수 있나요?", "시간 내에 완성할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "건축기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "건축기사 자격을 취득했나요?"])
        ],
        .실내건축기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["실내디자인론을 공부했나요?", "색채학을 공부했나요?", "건축재료를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "설계 실습", successCriteria: ["실내 설계를 연습했나요?", "투시도를 그릴 수 있나요?", "시간 내에 완성할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "실내건축기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "실내건축기사 자격을 취득했나요?"])
        ],
        .조경기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["조경계획을 공부했나요?", "조경식재를 공부했나요?", "조경시공을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "설계 실습", successCriteria: ["조경 설계를 연습했나요?", "식재 계획을 세울 수 있나요?", "시간 내에 완성할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "조경기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "조경기사 자격을 취득했나요?"])
        ],
        .토목기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["응용역학을 공부했나요?", "토질및기초를 공부했나요?", "측량학을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["토목시공을 연습했나요?", "도면을 해석할 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "토목기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "토목기사 자격을 취득했나요?"])
        ],
        .전기기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["전기자기학을 공부했나요?", "전력공학을 공부했나요?", "전기기기를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["회로 설계를 할 수 있나요?", "전기설비를 이해하나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "전기기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "전기기사 자격을 취득했나요?"])
        ],
        .기계기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["기계재료 및 유압기기를 공부했나요?", "기계열역학을 공부했나요?", "기계가공법을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["기계제작법을 연습했나요?", "도면을 해석할 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "기계기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "기계기사 자격을 취득했나요?"])
        ],
        .화학분석기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["일반화학을 공부했나요?", "분석화학을 공부했나요?", "기기분석을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실험 실습", successCriteria: ["정량분석을 할 수 있나요?", "기기를 다룰 수 있나요?", "시간 내에 완료할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "화학분석기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "화학분석기사 자격을 취득했나요?"])
        ],
        .환경기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["수질오염방지를 공부했나요?", "대기오염방지를 공부했나요?", "폐기물처리를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["환경오염공정시험을 연습했나요?", "계산 문제를 풀 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "환경기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "환경기사 자격을 취득했나요?"])
        ],
        .에너지관리기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["연소공학을 공부했나요?", "열역학을 공부했나요?", "열설비재료를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["에너지관리 실무를 연습했나요?", "계산 문제를 풀 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "에너지관리기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "에너지관리기사 자격을 취득했나요?"])
        ],
        .소방설비기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["소방원론을 공부했나요?", "소방관계법규를 공부했나요?", "소방전기/기계를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["설비 설계를 할 수 있나요?", "도면을 해석할 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "소방설비기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "소방설비기사 자격을 취득했나요?"])
        ],
        .위험물기능사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["위험물의 종류를 알고 있나요?", "저장 및 취급을 공부했나요?", "소화방법을 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["실무 작업을 연습했나요?", "안전 수칙을 알고 있나요?", "시간 내에 완료할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "위험물기능사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "위험물기능사 자격을 취득했나요?"])
        ],
        .가스기사_자격증_취득하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["가스설비를 공부했나요?", "연소공학을 공부했나요?", "가스안전관리를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["가스설비 설계를 할 수 있나요?", "계산 문제를 풀 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "가스기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "가스기사 자격을 취득했나요?"])
        ],
        .항공정비사하기: [
            Milestone(title: "이론 학습", description: "항공 기초 지식", successCriteria: ["항공역학을 공부했나요?", "항공기 구조를 이해하나요?", "항공기 시스템을 공부했나요?"]),
            Milestone(title: "정비 실습", description: "실무 경험", successCriteria: ["기체 정비를 할 수 있나요?", "엔진 정비를 할 수 있나요?", "전자 장비를 점검할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "항공정비사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "항공정비사 자격을 취득했나요?"])
        ],
        .자동차정비기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["자동차 엔진을 공부했나요?", "섀시 구조를 공부했나요?", "전기장치를 공부했나요?"]),
            Milestone(title: "실기 시험 준비", description: "정비 실습", successCriteria: ["엔진 정비를 할 수 있나요?", "브레이크 정비를 할 수 있나요?", "진단 장비를 사용할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "자동차정비기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "자동차정비기사 자격을 취득했나요?"])
        ],
        .용접기능사하기: [
            Milestone(title: "용접 기초", description: "이론 및 안전", successCriteria: ["용접 원리를 이해하나요?", "안전 장비 사용법을 아나요?", "용접봉 종류를 알고 있나요?"]),
            Milestone(title: "용접 실습", description: "기술 연마", successCriteria: ["아크 용접을 할 수 있나요?", "가스 용접을 할 수 있나요?", "다양한 자세로 용접할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "용접기능사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "용접기능사 자격을 취득했나요?"])
        ],
        .보일러기능사하기: [
            Milestone(title: "이론 학습", description: "보일러 기초", successCriteria: ["보일러 구조를 이해하나요?", "연소 원리를 알고 있나요?", "안전 관리를 공부했나요?"]),
            Milestone(title: "실무 학습", description: "보일러 운전", successCriteria: ["보일러 운전을 할 수 있나요?", "점검을 수행할 수 있나요?", "문제 해결을 할 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "보일러기능사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "보일러기능사 자격을 취득했나요?"])
        ],
        .냉동기계기사하기: [
            Milestone(title: "필기 시험 준비", description: "이론 학습", successCriteria: ["냉동공학을 공부했나요?", "열역학을 공부했나요?", "냉매를 이해하나요?"]),
            Milestone(title: "실기 시험 준비", description: "실무 학습", successCriteria: ["냉동 시스템을 이해하나요?", "설계를 할 수 있나요?", "시간 내에 풀 수 있나요?"]),
            Milestone(title: "자격증 취득", description: "냉동기계기사 합격", successCriteria: ["필기 시험에 합격했나요?", "실기 시험에 합격했나요?", "냉동기계기사 자격을 취득했나요?"])
        ],
        .위생사_자격증_취득하기: [
            Milestone(title: "이론 학습", description: "위생 기초", successCriteria: ["공중보건학을 공부했나요?", "환경위생학을 공부했나요?", "식품위생학을 공부했나요?"]),
            Milestone(title: "시험 준비", description: "기출문제 학습", successCriteria: ["기출문제를 풀어봤나요?", "약점 과목을 보완했나요?", "모의고사를 봤나요?"]),
            Milestone(title: "자격증 취득", description: "위생사 합격", successCriteria: ["국가고시에 합격했나요?", "자격증을 발급받았나요?", "위생사로 활동할 수 있나요?"])
        ],
        .영양사_자격증_취득하기: [
            Milestone(title: "전공 이수", description: "영양학 학습", successCriteria: ["영양학과를 졸업했나요?", "필수 과목을 이수했나요?", "실습을 완료했나요?"]),
            Milestone(title: "국가고시 준비", description: "시험 대비", successCriteria: ["기출문제를 풀어봤나요?", "약점 과목을 보완했나요?", "모의고사를 봤나요?"]),
            Milestone(title: "자격증 취득", description: "영양사 합격", successCriteria: ["국가고시에 합격했나요?", "자격증을 발급받았나요?", "영양사로 활동할 수 있나요?"])
        ],
        .임상영양사하기: [
            Milestone(title: "영양사 자격 취득", description: "기본 자격 확보", successCriteria: ["영양사 자격증이 있나요?", "임상 경험이 있나요?", "심화 교육에 관심이 있나요?"]),
            Milestone(title: "임상영양 교육", description: "전문 과정 이수", successCriteria: ["임상영양 교육과정을 이수했나요?", "병원 실습을 완료했나요?", "질환별 영양관리를 알고 있나요?"]),
            Milestone(title: "임상영양사 인증", description: "전문 자격 획득", successCriteria: ["인증 시험을 통과했나요?", "임상영양사 자격을 취득했나요?", "임상영양사로 활동할 수 있나요?"])
        ],
        .간호사_자격증_취득하기: [
            Milestone(title: "간호학과 입학", description: "전공 시작", successCriteria: ["간호학과에 입학했나요?", "기초 과목을 이수하고 있나요?", "실습 준비가 되어 있나요?"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "병원 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "국가고시 합격", description: "간호사 자격 취득", successCriteria: ["국가고시를 준비했나요?", "국가고시에 합격했나요?", "간호사 면허를 발급받았나요?"])
        ],
        .약사_자격증_취득하기: [
            Milestone(title: "약학대학 입학", description: "약학 시작", successCriteria: ["약학대학에 입학했나요?", "기초 과목을 이수하고 있나요?", "실습 준비가 되어 있나요?"]),
            Milestone(title: "전공 이수", description: "6년 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "약국/병원 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "국가고시 합격", description: "약사 자격 취득", successCriteria: ["국가고시를 준비했나요?", "국가고시에 합격했나요?", "약사 면허를 발급받았나요?"])
        ],
        .수의사_자격증_취득하기: [
            Milestone(title: "수의학과 입학", description: "수의학 시작", successCriteria: ["수의학과에 입학했나요?", "기초 과목을 이수하고 있나요?", "동물을 다루는 것이 익숙한가요?"]),
            Milestone(title: "전공 이수", description: "6년 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "동물병원 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "국가고시 합격", description: "수의사 자격 취득", successCriteria: ["국가고시를 준비했나요?", "국가고시에 합격했나요?", "수의사 면허를 발급받았나요?"])
        ],
        .물리치료사하기: [
            Milestone(title: "물리치료학과 입학", description: "전공 시작", successCriteria: ["물리치료학과에 입학했나요?", "해부학을 공부하고 있나요?", "실습 준비가 되어 있나요?"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "병원 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "국가고시 합격", description: "물리치료사 자격 취득", successCriteria: ["국가고시를 준비했나요?", "국가고시에 합격했나요?", "물리치료사 면허를 발급받았나요?"])
        ],
        .작업치료사하기: [
            Milestone(title: "작업치료학과 입학", description: "전공 시작", successCriteria: ["작업치료학과에 입학했나요?", "기초 의학을 공부하고 있나요?", "실습 준비가 되어 있나요?"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "재활 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "국가고시 합격", description: "작업치료사 자격 취득", successCriteria: ["국가고시를 준비했나요?", "국가고시에 합격했나요?", "작업치료사 면허를 발급받았나요?"])
        ],
        .언어치료사하기: [
            Milestone(title: "언어치료학과 입학", description: "전공 시작", successCriteria: ["관련 학과에 입학했나요?", "언어학 기초를 공부하고 있나요?", "실습 준비가 되어 있나요?"]),
            Milestone(title: "전공 이수", description: "학위 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "임상 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "자격증 취득", description: "언어재활사 자격 취득", successCriteria: ["자격 시험을 준비했나요?", "시험에 합격했나요?", "언어재활사로 활동할 수 있나요?"])
        ],
        .임상심리사하기: [
            Milestone(title: "심리학 학습", description: "기초 지식 확보", successCriteria: ["심리학과를 졸업했나요?", "임상심리학을 공부했나요?", "실습 경험이 있나요?"]),
            Milestone(title: "수련 과정", description: "전문 훈련", successCriteria: ["수련 기관에 소속되었나요?", "사례 경험을 쌓았나요?", "슈퍼비전을 받았나요?"]),
            Milestone(title: "자격증 취득", description: "임상심리전문가 자격", successCriteria: ["자격 시험을 준비했나요?", "시험에 합격했나요?", "임상심리전문가 자격을 취득했나요?"])
        ],
        .상담심리사하기: [
            Milestone(title: "상담심리 학습", description: "기초 지식 확보", successCriteria: ["상담심리학을 공부했나요?", "상담 이론을 이해하나요?", "기초 실습을 했나요?"]),
            Milestone(title: "수련 과정", description: "상담 훈련", successCriteria: ["상담 수련을 받고 있나요?", "사례 경험을 쌓았나요?", "슈퍼비전을 받았나요?"]),
            Milestone(title: "자격증 취득", description: "상담심리사 자격", successCriteria: ["자격 시험을 준비했나요?", "시험에 합격했나요?", "상담심리사 자격을 취득했나요?"])
        ],
        .사회복지사_1급하기: [
            Milestone(title: "전공 이수", description: "사회복지학 학습", successCriteria: ["사회복지학을 전공했나요?", "필수 과목을 이수했나요?", "현장 실습을 완료했나요?"]),
            Milestone(title: "2급 자격 취득", description: "기본 자격 확보", successCriteria: ["사회복지사 2급이 있나요?", "실무 경험이 있나요?", "1급 시험을 준비하고 있나요?"]),
            Milestone(title: "1급 자격 취득", description: "최고 등급 획득", successCriteria: ["1급 시험에 합격했나요?", "자격증을 발급받았나요?", "사회복지사 1급으로 활동할 수 있나요?"])
        ],
        .보육교사_자격증_취득하기: [
            Milestone(title: "전공 학습", description: "보육 관련 이수", successCriteria: ["보육 관련 학과를 졸업했나요?", "필수 과목을 이수했나요?", "보육 실습을 완료했나요?"]),
            Milestone(title: "자격 신청", description: "자격증 신청", successCriteria: ["자격 요건을 충족했나요?", "서류를 준비했나요?", "자격증을 신청했나요?"]),
            Milestone(title: "자격증 취득", description: "보육교사 자격 획득", successCriteria: ["보육교사 자격증을 받았나요?", "어린이집에서 일할 수 있나요?", "보육 활동을 시작했나요?"])
        ],
        .유치원_정교사하기: [
            Milestone(title: "유아교육과 입학", description: "전공 시작", successCriteria: ["유아교육과에 입학했나요?", "기초 과목을 이수하고 있나요?", "실습 준비가 되어 있나요?"]),
            Milestone(title: "전공 이수", description: "4년 과정 완료", successCriteria: ["전공 과목을 이수했나요?", "유치원 실습을 완료했나요?", "졸업 요건을 충족했나요?"]),
            Milestone(title: "자격증 취득", description: "유치원 정교사 자격", successCriteria: ["교원자격검정을 통과했나요?", "유치원 정교사 자격증을 받았나요?", "유치원에서 근무할 수 있나요?"])
        ]
    ]
}

