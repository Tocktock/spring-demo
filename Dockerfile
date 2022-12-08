FROM amazoncorretto:17
WORKDIR /app

COPY . /app
RUN /app/gradlew clean build
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/build/libs/*.jar"]

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