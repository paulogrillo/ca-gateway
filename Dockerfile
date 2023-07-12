FROM openjdk:11
MAINTAINER Paulo Grillo
WORKDIR gateway
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gateway/app.jar
ENTRYPOINT ["java","-jar","gateway/app.jar"]
EXPOSE 8080