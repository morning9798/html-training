# dockerfile 에선 from baseImage 로 시작
# 16은 노드 버전, alpine 가장 작은단위의 리눅스
FROM node:16-alpine 

# 어떤 경로에서 실행할건지
WORKDIR /app

# 레이어 시스템으로, 빈번히 변경되는 파일은 나중에 복사하는게 좋음
COPY package.json package-lock.json ./

# install은 package.json에 명시되어 있는 모든 라이브러리를 설치(개발 도중 최신버전이 나온다면 그걸 다운받기 때문에 버전이 틀릴 수 있음)
# install 대신 ci 를 쓰면 lock.json에 명시되어 있는 버전을 설치
RUN npm ci

COPY index.js .

# 노드를 실행할 것이고, index.js 실행
ENTRYPOINT [ "node", "index.js"]

# 터미널에서 이미지 만들기
# docker build -f dockerfile -t fun-docker .
# -f 파일이름 / -t 파일태크 / . 경로위치
# docker images   명렁어로 이미지 확인 가능
# depository 태그이름 / tag 버전
# 도커 실행하기
# docker run -d -p 8080:8080 fun-docker
# -d 백그라운드 실행될 때 터미널과 분리 / -p 포트 연결
# docker ps   명령어로 실행중인 docker 확인
# docker logs 9b98a82b4268   컨테이너 ID로 로그 확인