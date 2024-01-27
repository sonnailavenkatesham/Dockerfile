# multi stage build

#build stage
FROM debian:10 AS build
RUN apt-get update && apt-get -y install maven

WORKDIR /app
COPY pom.xml /app
RUN mvn dependency:resolve
COPY src /app/src/
RUN mvn package

# run stage
FROM openjdk:8-jdk
EXPOSE 8080

WORKDIR /app
ENV CART_ENDPOINT=cart:8080 
ENV DB_HOST=mysql
COPY --from=build app/target/shipping-1.0.jar shipping.jar

CMD ["java", "-Xmn256m", "-Xmn768m", "-jar", "shipping.jar"]