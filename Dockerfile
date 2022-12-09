FROM amazoncorretto:17 as builder

WORKDIR /app/
COPY . /app

RUN /app/gradlew clean build


FROM amazoncorretto:17-alpine
WORKDIR /app/
COPY --from=builder /app/build/libs/ecsdemo-myapp.jar /app/build/libs/ecsdemo-myapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/build/libs/ecsdemo-myapp.jar"]

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
#ENTRYPOINT ["java", "-jar", "/spring-dem정o/app.jar"]