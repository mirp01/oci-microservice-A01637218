FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-A01637218
COPY /target/*.jar oci-microservice-A01637218.jar
COPY /src/main/resources/Wallet_javadev /oci-microservice-A01637218/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice-A01637218/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-A01637218.jar" ]