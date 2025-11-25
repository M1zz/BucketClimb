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
        ]
    ]
}

