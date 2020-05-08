FROM gcr.io/distroless/java
COPY --from=build /build/target/Calculator-1.0-SNAPSHOT.jar /usr/app/app.jar
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]