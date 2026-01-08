# 🎯 Template Automation System - 완전 자율형 템플릿 비즈니스

## 📋 개요

이 시스템은 **AI(미니맥스)가 100% 자율적으로** 템플릿 비즈니스를 운영하기 위한 종합 자동화 솔루션입니다.

**핵심 원칙:**
- ✅ **0% 개입**: 모든 결정을 AI가 자율 수행
- ✅ **리스크 0%**: 철저한 품질 검증 및 리스크 관리
- ✅ **0원 초기비용**: 무료 티어 및 오픈소스 활용
- ✅ **지속 확장**: 모듈식 아키텍처로 무한 확장

## 🏗️ 시스템 아키텍처

```
┌─────────────────────────────────────────────────────────────────┐
│                    Template Automation System                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐         │
│  │ AI Engine    │  │ Trend Monitor│  │ QA System    │         │
│  │ (Anthropic)  │  │ (API Scrapers)│  │ (Validation) │         │
│  └──────────────┘  └──────────────┘  └──────────────┘         │
│         │                │                │                    │
│         └────────────────┼────────────────┘                    │
│                          │                                     │
│                    ▼─────┴─────▼                               │
│              ┌──────────────┐                                  │
│              │ Orchestrator │                                  │
│              │ (Main Logic) │                                  │
│              └──────────────┘                                  │
│                          │                                     │
│         ┌────────────────┼────────────────┐                    │
│         ▼                ▼                ▼                    │
│  ┌──────────────┐ ┌──────────────┐ ┌──────────────┐          │
│  │ Gumroad      │ │Lemon Squeezy │ │ Crypto Pay   │          │
│  └──────────────┘ └──────────────┘ └──────────────┘          │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

## 🚀 빠른 시작

### 1. 필수 조건

```bash
# Python 3.10+
python --version

# Git
git --version
```

### 2. 설치

```bash
# 프로젝트 클론
git clone https://github.com/your-repo/template-automation.git
cd template-automation

# 가상 환경 생성
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 의존성 설치
pip install -r requirements.txt
```

### 3. 환경 설정

```bash
# .env.example을 .env로 복사
cp .env.example .env

# API 키 설정
# 편집기에서 .env 파일을 열고 다음 설정:
# - OPENAI_API_KEY=your_openai_key
# - GUMROAD_API_KEY=your_gumroad_key
# - STRIPE_SECRET_KEY=your_stripe_key
# - SUPABASE_URL=your_supabase_url
# - SUPABASE_KEY=your_supabase_key
```

### 4. 실행

```bash
# 테스트 실행
python src/main.py test

# 한 번 실행
python src/main.py run

# 예약 실행 (6시간마다)
python src/main.py schedule 6

# 상태 확인
python src/main.py status
```

## 📁 프로젝트 구조

```
template-automation/
├── src/
│   ├── __init__.py              # 메인 패키지
│   ├── main.py                  # 오케스트레이션 시작점
│   ├── core/
│   │   ├── __init__.py
│   │   └── config.py            # 설정 관리
│   ├── ai/
│   │   ├── __init__.py
│   │   └── template_generator.py # AI 템플릿 생성 엔진
│   ├── platforms/
│   │   ├── __init__.py
│   │   ├── gumroad.py           # Gumroad 자동화
│   │   └── lemon_squeezy.py     # Lemon Squeezy 자동화
│   ├── qa/
│   │   ├── __init__.py
│   │   └── quality_assurance.py # 품질 검증 시스템
│   ├── payments/
│   │   ├── __init__.py
│   │   └── crypto_payments.py   # 암호화페 결제
│   └── monitoring/
│       ├── __init__.py
│       └── monitor.py           # 모니터링 시스템
├── n8n/
│   └── workflows/
│       └── template_automation_master.json # n8n 워크플로우
├── config/
│   └── .env.example             # 환경 변수 예시
├── tests/
│   └── test_automation.py       # 테스트 파일
├── docs/
│   └── README.md                # 문서
├── requirements.txt
├── pyproject.toml
└── README.md
```

## 🔧 핵심 기능

### 1. AI 템플릿 생성 (미니맥스)
- 트렌드 분석 및 니치 선정
- 템플릿 스펙 자동 생성
- 콘텐츠 작성 및 가격 최적화
- Thomas Frank, Easlo 벤치마킹

### 2. 플랫폼 자동 배포
- **Gumroad**: 이메일 가입, 10% 수수료
- **Lemon Squeezy**: MoR 세금 처리, 5% 수수료
- **Etsy**: 대형 마켓플레이스
- **Stripe Crypto**: 암호화페 결제 지원

### 3. 품질 보증 (QA)
- 중복/유사성 검사 (phash 알고리즘)
- 상표권 키워드 필터링
- 플랫폼 정책 준수 검증
- AI 생성 콘텐츠 탐지

### 4. 리스크 관리
- 실시간 에러 모니터링
- 판매량 하락 감지
- 계정 정지 예방
- 자율 대응 시스템

### 5. 수익 최적화
- 개별 판매 + 번들 판매 전략
- 가격 자동 최적화
- 시즌 할인 이벤트
- 다중 수익 모델 (구독, 제휴)

## 🎯 사용 예시

### 기본 실행
```bash
# 시스템 상태 확인
python src/main.py status

# 한 번의 자동화 사이클 실행
python src/main.py run

# 출력 예시:
{
  "cycle_start": "2024-01-08T10:00:00",
  "templates_processed": [
    {
      "name": "Ultimate Productivity System",
      "price": 49.0,
      "platform_results": [
        {"platform": "gumroad", "success": true, "url": "..."},
        {"platform": "lemon_squeezy", "success": true, "url": "..."}
      ]
    }
  ],
  "errors": [],
  "revenue_generated": 98.0,
  "duration_seconds": 45.2
}
```

### 예약 실행
```bash
# 6시간마다 자동 실행
python src/main.py schedule 6

# 12시간마다
python src/main.py schedule 12
```

## 📊 모니터링

### Discord 알림 설정
```env
DISCORD_WEBHOOK_URL=https://discord.com/api/webhooks/your_webhook_url
```

### 리포트 수신
- **일간 리포트**: 매일 오전 9시 Discord로 전송
- **주간 리포트**: 매주 월요일 오전 9시 이메일로 전송
- **알erts**: 오류 발생 시 즉시 전송

## 🔒 보안 고려사항

1. **API 키 관리**: .env 파일에 저장, Git에 올리지 않음
2. **암호화**: 민감한 데이터는 암호화 저장
3. **웹훅 검증**: 모든 웹훅 요청 서명 검증
4. **최소 권한**: 각 API는 필요한 최소 권한만 사용

## 💰 수익 모델

### 1. 개별 판매 ($8-250)
- Low Tier: $8-19 (단일 기능)
- Mid Tier: $40-80 (완전 시스템)
- High Tier: $100-250+ (메가 번들)

### 2. 번들 판매 ($49-389)
- Basic Bundle: $49-79 (2개 제품)
- Premium Bundle: $99-149 (3-4개 제품)
- All Access: $199-389 (5+개 제품)

### 3. 추가 수익
- 구독 모델 ($9/월)
- 제휴 마케팅 (20-30%)
- 커스텀 개발 ($500+)

## 🚨 문제 해결

### 일반적인 오류

**1. API 키 오류**
```bash
# .env 파일 확인
cat .env | grep API_KEY

# API 키 재설정 후 재실행
python src/main.py test
```

**2. 네트워크 오류**
```bash
# 인터넷 연결 확인
ping google.com

# 프록시 설정 (필요시)
export HTTP_PROXY=http://proxy:8080
export HTTPS_PROXY=http://proxy:8080
```

**3. 의존성 오류**
```bash
# pip 업데이트
pip install --upgrade pip

# 의존성 재설치
pip install -r requirements.txt --force-reinstall
```

## 📈 로드맵

### Phase 1 (0-3개월)
- [x] 기본 자동화 시스템 구축
- [x] Gumroad, Lemon Squeezy 연동
- [x] AI 템플릿 생성
- [ ] Etsy 연동

### Phase 2 (3-6개월)
- [ ] 다중 플랫폼 동시 배포
- [ ] 실시간 가격 최적화
- [ ] 번들 전략 자동화
- [ ] 암호화페 결제 완전 구현

### Phase 3 (6-12개월)
- [ ] 구독 모델 자동화
- [ ] 제휴 마케팅 시스템
- [ ] AI-driven 시장 예측
- [ ] 기업 고객 대상 커스텀 개발

### Phase 4 (12개월+)
- [ ] 완전 자율 운영
- [ ] 다중 브랜드 운영
- [ ] 글로벌 확장
- [ ] AI 수익 모델 생성

## 🤝 기여

1. 이 저장소를 Fork
2. 기능 브랜치 생성 (`git checkout -b feature/amazing-feature`)
3. 변경사항 커밋 (`git commit -m 'Add amazing feature'`)
4. 브랜치에 Push (`git push origin feature/amazing-feature`)
5. Pull Request 생성

## 📄 라이선스

MIT License - 자유롭게 사용 및 수정 가능

## ⚠️ 면책 조항

이 시스템은 교육 및 연구 목적으로 제공됩니다. 실제 비즈니스 사용 시:
- 각 플랫폼의 이용약관 준수
- 세금 신고 의무 이행
- 저작권 및 상표권 준수
- 충분한 테스트 후 프로덕션 환경 적용

---

**🎯 완전 자율형 템플릿 비즈니스 시스템 - 시작하세요!**
