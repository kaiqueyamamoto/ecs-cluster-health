# Use the official OpenJDK base image
FROM openjdk:21

LABEL authors="kaiqueyamamoto"

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]