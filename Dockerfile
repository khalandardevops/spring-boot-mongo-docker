# Step 1: Use a base image with Java 17 (or other versions you need)
FROM openjdk:17-jdk-slim as build

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the jar file into the container (Assuming the jar is named 'app.jar')
COPY target/spring-boot-mongo-1.0-SNAPSHOT.jar /app/spring-boot-mongo-1.0-SNAPSHOT.jar


# Step 4: Expose the port the app will run on (e.g., 8080)
EXPOSE 8080

# Step 5: Set the command to run your Spring Boot app
CMD ["java" ,"-jar","spring-boot-mongo-1.0-SNAPSHOT.jar"]
