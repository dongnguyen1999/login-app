FROM maven:3.9.3-eclipse-temurin-17-alpine AS MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn package

FROM openjdk:17-alpine

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/registration-login-demo-0.0.1-SNAPSHOT.jar /app/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "registration-login-demo-0.0.1-SNAPSHOT.jar"]