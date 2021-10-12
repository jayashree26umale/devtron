FROM maven as builder
COPY springboot-helloworld /springboot-helloworld
WORKDIR /springboot-helloworld
RUN mvn clean install -DskipTests
FROM openjdk:8-alpine
COPY --from=builder  /springboot-helloworld/target/myproject-0.0.1-SNAPSHOT.jar /myproject-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","myproject-0.0.1-SNAPSHOT.jar"]
