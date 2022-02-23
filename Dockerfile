FROM openjdk:11-jre-slim-buster

#Create repository in container image for app code
RUN mkdir /opt/app
#Set working directory context
WORKDIR /opt/app

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /opt/app/application.jar

ENTRYPOINT ["java", "-jar", "/opt/app/application.jar"]