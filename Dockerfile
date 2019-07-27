FROM openjdk:8 AS builder
ENV APP_HOME=/root/dev/myapp/
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY . $APP_HOME
COPY gradle $APP_HOME/gradle
RUN ./gradlew build

FROM openjdk:8-jre
WORKDIR /root/
COPY --from=builder /root/dev/myapp/build/libs/docker-test-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java", "-jar", "docker-test-0.0.1-SNAPSHOT.jar"]
