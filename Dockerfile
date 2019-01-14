FROM maven:3.6-jdk-8-alpine as builder
WORKDIR /build
COPY spring-petclinic /build
RUN mvn clean install

FROM java:8-jre-alpine  
WORKDIR /root/
COPY --from=builder /build/target/spring-petclinic-*.jar /root/petclinic.jar
CMD ["java", "-jar", "./petclinic.jar"]  
