FROM openjdk:8
COPY target/myproject-0.0.1-SNAPSHOT.jar myproject-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","myproject-0.0.1-SNAPSHOT.jar"]
