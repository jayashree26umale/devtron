FROM openjdk:11
RUN "mvn clean install -DskipTests"
ADD /springboot-helloworld/target/myproject-0.0.1-SNAPSHOT.jar /myproject-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","myproject-0.0.1-SNAPSHOT.jar"]
