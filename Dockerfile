# Use the official OpenJDK base image
FROM openjdk:21

# Copy ecs-cluster-health
COPY target/ecs-cluster-health.jar ecs-cluster-health.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/ecs-cluster-health.jar"]
