# 1. Base Image (Java 21)
FROM eclipse-temurin:21-jre-alpine

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 빌드된 Jar 파일 복사
# (Maven 빌드 후 target 폴더에 생기는 jar 파일을 컨테이너로 복사)
COPY target/*.jar app.jar

# 4. 실행 명령어 (프로필 설정은 docker-compose에서 주입받음)
ENTRYPOINT ["java", "-jar", "app.jar"]