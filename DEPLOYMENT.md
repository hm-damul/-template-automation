# Template Automation System - Production Deployment Guide

## 🚀 24/365 완전 자동화 시스템 배포

### 옵션 1: Railway (추천 - 가장 간단)

```bash
# 1. Railway CLI 설치
npm i -g @railway/cli

# 2. Railway에 로그인
railway login

# 3. 프로젝트 초기화
railway init

# 4. Dockerfile 선택
# Railway가 자동으로 Dockerfile.detect로 인식

# 5. 환경 변수 설정
railway variables set OPENAI_API_KEY=your_key
railway variables set GUMROAD_API_KEY=your_key
railway variables set DISCORD_WEBHOOK_URL=your_webhook

# 6. 배포
railway up

# 7. 도메인 연결 (선택)
railway domain
```

### 옵션 2: Docker 직접 실행

```bash
# 1. Docker 설치 (Windows/Mac/Linux)
# https://docker.com

# 2. 프로젝트 클론 및 이동
git clone your-repo.git
cd template-automation

# 3. .env 파일 설정
cp .env.example .env
# .env 파일에 API 키 입력

# 4. Docker 실행
docker-compose up -d

# 5. 상태 확인
docker-compose ps
docker logs template_automation_daemon -f
```

### 옵션 3: VPS 서버 (Ubuntu)

```bash
# 1. 서버 접속
ssh user@your-server-ip

# 2. Docker 설치
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER

# 3. 프로젝트 설정
git clone your-repo.git
cd template-automation

# 4. 환경 변수
cp .env.example .env
nano .env  # API 키 입력

# 5. Docker 실행
docker-compose up -d

# 6. 시스템 부팅 시 자동 실행 설정
sudo systemctl enable docker
sudo systemctl enable template_automation_daemon

# 7. 로그 확인
docker logs -f template_automation_daemon
```

---

## 📊 시스템 아키텍처

```
┌─────────────────────────────────────────────────────────────┐
│                   Production Architecture                     │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌────────────────────────────────────────────────────────┐ │
│  │              Docker Container Cluster                   │ │
│  │  ┌────────────────┐  ┌────────────────┐               │ │
│  │  │ Template       │  │ N8N            │               │ │
│  │  │ Automation     │  │ Workflow       │               │ │
│  │  │ Daemon         │  │ Orchestrator   │               │ │
│  │  │ (24/7 running) │  │ (Hourly)       │               │ │
│  │  └────────────────┘  └────────────────┘               │ │
│  │         │                     │                        │ │
│  │         ▼                     ▼                        │ │
│  │  ┌────────────────────────────────────────────────┐   │ │
│  │  │         Monitoring Stack                         │   │ │
│  │  │  ┌──────────┐  ┌──────────┐  ┌──────────┐      │   │ │
│  │  │  │ Prometheus│  │  Grafana  │  │ Discord  │      │   │ │
│  │  │  │  (Metrics)│  │ (Dashboard)│ │(Alerts)  │      │   │ │
│  │  │  └──────────┘  └──────────┘  └──────────┘      │   │ │
│  │  └────────────────────────────────────────────────┘   │ │
│  │                          │                            │ │
│  └──────────────────────────┼────────────────────────────┘ │
│                             │                              │
│                             ▼                              │
│              ┌──────────────────────────────┐             │
│              │    Platforms & Services       │             │
│              │  Gumroad │ Etsy │ Lemon      │             │
│              │  Payhip  │ Supabase │ Claude  │             │
│              └──────────────────────────────┘             │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## 🔧 운영 명령어

### Docker 명령어
```bash
# 상태 확인
docker-compose ps

# 로그 확인
docker-compose logs -f template_automation

# 재시작
docker-compose restart template_automation

# 정지
docker-compose down

# 재빌드 및 시작
docker-compose up -d --build
```

### 시스템 명령어
```bash
# 상태 확인
python src/daemon.py --status

# 헬스 체크
python src/daemon.py --health

# 한 번만 실행
python src/daemon.py --run-once

# n8n 웹 UI
# http://localhost:5678
```

---

## 📈 모니터링

### 대시보드 접근
- **Grafana**: http://localhost:3000 (admin/admin)
- **Prometheus**: http://localhost:9090
- **N8N**: http://localhost:5678 (admin/your_password)

### 알림 채널
- **Discord**: 설정된 웹훅으로 자동 전송
- **Telegram**: 설정된 봇으로 자동 전송

---

## 🔒 보안 설정

### 필수 환경 변수 (.env)
```env
# API 키 (필수)
OPENAI_API_KEY=your_key
GUMROAD_API_KEY=your_key
LEMON_SQUEEZY_API_KEY=your_key

# 알림 (선택)
DISCORD_WEBHOOK_URL=your_webhook
TELEGRAM_BOT_TOKEN=your_token
TELEGRAM_CHAT_ID=your_chat_id

# 데이터베이스 (선택)
SUPABASE_URL=your_url
SUPABASE_KEY=your_key
```

### 보안 권장사항
1. ✅ API 키는 절대 Git에 커밋하지 마세요
2. ✅ 정기적으로 API 키를 교체하세요
3. ✅ 최소 권한 원칙을 적용하세요
4. ✅ Docker 컨테이너를 정기적으로 업데이트하세요

---

## 🚨 문제 해결

### 컨테이너가 시작되지 않는 경우
```bash
# 로그 확인
docker-compose logs template_automation

# 컨테이너 내부 접속
docker exec -it template_automation_daemon /bin/bash

# Python 의존성 재설치
pip install -r requirements.txt
```

### 메모리 부족 오류
```bash
# Docker 메모리 제한 확인
docker stats

# docker-compose.yml에서 메모리 제한 조정
# mem_limit: 2g 추가
```

### 네트워크 오류
```bash
# 네트워크 재시작
docker-compose down
docker-compose up -d
```

---

## 📊 성능 최적화

### 권장 서버 스펙
- **최소**: 1 vCPU, 1GB RAM
- **권장**: 2 vCPU, 4GB RAM
- **최적**: 4 vCPU, 8GB RAM

### Docker 메모리 설정
```yaml
# docker-compose.yml에 추가
services:
  template-automation:
    deploy:
      resources:
        limits:
          memory: 2G
        reservations:
          memory: 1G
```

---

## ✅ 배포 체크리스트

- [ ] GitHub에 코드 푸시
- [ ] Railway/VPS 서버 준비
- [ ] .env 파일에 API 키 설정
- [ ] Docker 컨테이너 시작
- [ ] 헬스 체크 확인
- [ ] Discord/Telegram 알림 테스트
- [ ] N8N 워크플로우 활성화
- [ ] 모니터링 대시보드 설정
- [ ] 로그 모니터링 시작

---

**🚀 완전 자동화된 24/365 템플릿 비즈니스 시스템이 완성되었습니다!**
