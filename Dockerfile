# Use JFrog Artifactory as the source for the base image
FROM soleng.jfrog.io/brianchu-docker-virtual/openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR built by Maven into the image
COPY target/spring-petclinic-*-SNAPSHOT.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
