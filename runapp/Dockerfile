FROM openjdk:8-jdk-alpine as build

WORKDIR /build
COPY ../pom.xml .
COPY ../mvnw .
COPY ../src src
COPY ../.mvn .mvn
RUN chmod +x ./mvnw
RUN ./mvnw dependency:go-offline -B
RUN ./mvnw package
RUN ./mvnw spring-boot:run

# FROM gcr.io/distroless/java
# COPY --from=build /build/target/Calculator-1.0-SNAPSHOT.jar /usr/app/app.jar
# ENTRYPOINT ["java","-jar","/usr/app/app.jar"]