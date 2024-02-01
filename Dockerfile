# Use the official OpenJDK base image
FROM openjdk:21

LABEL authors="kaiqueyamamoto"

# Set the working directory in the container
WORKDIR /app

# Copy the local project to the container
COPY . /app

# Install Maven
RUN apt update && apt install -y maven

# Build the project
RUN mvn clean install

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "./target/demo-0.0.1-SNAPSHOT.jar"]
