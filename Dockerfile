
# 이미지 python:3.10-slim을 받아올거다
#python:3.10-slim이미지 사용
From python:3.10-slim

#작업 디렉토리 설정
WORKDIR /app
# 패키지 일괄 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# stock_analysis_autogluon.py 파일 복사
#가상환경안에있는 모든 라이버리들 일괄 설치해주는 코드

COPY . .
# stock_analysis_autogluon.py 파일 실행
CMD ["python", "stock_analysis_autogluon.py"]