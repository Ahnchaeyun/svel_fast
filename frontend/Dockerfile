FROM node:20 AS build
# node:16환경을 build로 리네임,별명

WORKDIR /app

ADD package*.json .
# 설치목록 복사

RUN npm install
# 설치목록 설치

ADD . .
# 소스코드 복사

RUN npm run build
# 빌드를 하면 dist폴더에 정적파일 생성 = html, css, js
# 정적파일은 nginx와 같은 웹 서버가 존재하면 동작

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html
# build라는 환경의 /app/dist, 즉 정적파일을 nginx의 웹루트디렉토리로 복사
#COPY --from=build /app/default.conf /app/default.conf /etc/nginx/conf.d/default.conf

