#BUILDER
FROM openjdk:17
CMD ["./gradlew", "clean", "build"]
COPY ./build/libs/*.jar /spring-demo/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/spring-demo/app.jar"]

#RUNNING
#
#FROM openjdk:17
#RUN mkdir /app
#
#COPY --from=builder /spring-demo/app.jar /app/app.jar
#RUN ls /app/
#WORKDIR /app/
#EXPOSE 8080
#
#ENTRYPOINT ["java", "-jar", "/spring-demo/app.jar"]