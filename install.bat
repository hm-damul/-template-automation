@echo off
echo ========================================
echo Template Automation System - 설치 스크립트
echo ========================================
echo.

cd /d %~dp0

echo [1/3] 필수 라이브러리 설치 중...
pip install requests python-dotenv loguru pyyaml python-dateutil pillow jinja2 openai

echo.
echo [2/3] .env 파일 확인...
if not exist .env (
    echo .env 파일이 없습니다. 생성합니다...
    echo OPENAI_API_KEY=your_api_key_here > .env
    echo .env 파일을 편집하여 API 키를 입력하세요!
    notepad .env
) else (
    echo .env 파일이 이미 존재합니다.
)

echo.
echo [3/3] 시스템 테스트 실행...
python src/main.py test

echo.
echo ========================================
echo 설치 완료!
echo 다음 단계:
echo 1. .env 파일에 API 키 설정 (필요시)
echo 2. python src/main.py run 실행
echo ========================================
pause
