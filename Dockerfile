## Build Stage
FROM maven:3.6.3-openjdk-17-slim AS build

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn package
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

## RunTime Stage
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/target/fum-cloud-notification-core-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080
CMD ["bash", "-c", "sleep 5 && java -jar app.jar"]

LABEL maintainer="MohammadAmin Rahimi <marcoding78@gmail.com>"
