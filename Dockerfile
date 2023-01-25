FROM openjdk:8-jdk-alpine
EXPOSE 8083
WORKDIR /opt
COPY target/employee-management-webapp-0.0.3-SNAPSHOT.jar employee-management-webapp.jar
COPY application.properties application.properties
ENTRYPOINT ["java","-Dspring.config.location=/opt/application.properties","-jar","/opt/employee-management-webapp.jar"]
