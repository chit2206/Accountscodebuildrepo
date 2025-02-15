# Use an official Java runtime as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY build/libs/accounts-ms.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
