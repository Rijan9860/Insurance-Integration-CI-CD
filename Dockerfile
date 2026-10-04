# Base image with Java 8 (Eclipse Temurin)
FROM eclipse-temurin:8-jdk

#set working directory
WORKDIR /opt/insurance-integration

#copy the entire bin and etc folder into the container
COPY bin/ ./bin/
COPY etc/ ./etc/

#Expose port
EXPOSE 8092

# Run the JAR
#java -jar ./bin/insurance-integration.jar
ENTRYPOINT ["java", "-jar", "./bin/insurance-integration.jar", "--spring.config.location=/opt/insurance-integration/etc/application.properties"]
