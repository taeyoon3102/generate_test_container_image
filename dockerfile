# #어떤 이미지로부터 새로운 이미지를 생성할지를 지정
# FROM node:12.22.6

# #Dockerfile 을 생성/관리하는 사람
# MAINTAINER Dunn <tykang@lgns.com>

# # /app 디렉토리 생성
# RUN mkdir -p /app
# # /app 디렉토리를 WORKDIR 로 설정
# WORKDIR /app
# # 현재 Dockerfile 있는 경로의 모든 파일을 /app 에 복사
# ADD . /app
# # npm install 을 실행
# RUN npm install

# #환경변수 NODE_ENV 의 값을 development 로 설정
# # ENV NODE_ENV development

# #가상 머신에 오픈할 포트
# EXPOSE 3000

# #컨테이너에서 실행될 명령을 지정
# CMD ["npm", "start"]

FROM ubuntu:18.04

## mysql 확인용
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install mysql-client -y

## 혹시 모를 aws 명령어 확인용
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install

## redis 확인용
RUN apt-get install redis-tools -y


## 가상 머신에 오픈할 포트 
EXPOSE 3000

#

