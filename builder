FROM openjdk:8-jdk-alpine

WORKDIR /build
COPY ./pom.xml .
COPY ./mvnw .
COPY ./src src
COPY ./.mvn .mvn
RUN chmod +x ./mvnw
RUN ./mvnw dependency:go-offline -B
RUN ./mvnw package

# /home/vivekgupta/Desktop/SPE/spe assignment/spe_assignment-master/target/classes/com/calculator/Calculator.class