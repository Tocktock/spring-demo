FROM gradle:7.5.1-jdk17 as builder


WORKDIR /app/
ADD build.gradle.kts /app/
RUN gradle build -x test --continue > /dev/null 2>&1 || true

COPY . /app
RUN gradle build -x test

FROM amazoncorretto:17
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