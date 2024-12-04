FROM public.ecr.aws/docker/library/python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

#해당 텍스트 파일에 python 라이브러리 설치 파일이 존재

CMD ["uvicorn","main:app","--host","0.0.0.0"]
