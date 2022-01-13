FROM openjdk:11
EXPOSE 8081
ARG JAR_FILE=target/technical-test-docker.jar
COPY ${JAR_FILE} technical-test-docker.jar
ENTRYPOINT ["java", "-jar", "/technical-test-docker.jar"]