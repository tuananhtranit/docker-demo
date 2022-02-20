FROM openjdk:11-jre-slim-buster

#Create repository in container image for app code
RUN mkdir /opt/app
#Set working directory context
WORKDIR /opt/app

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar

EXPOSE 8080:8080
ENTRYPOINT ["java", "-jar", "/application.jar"]