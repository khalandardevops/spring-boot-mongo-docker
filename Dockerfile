FROM amazoncorretto:8-alpine-jdk
COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
