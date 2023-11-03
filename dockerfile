# Use an official OpenJDK runtime as a base image
FROM openjdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your local build context to the container at /app
COPY target/student-management-system-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your application will run on
EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]