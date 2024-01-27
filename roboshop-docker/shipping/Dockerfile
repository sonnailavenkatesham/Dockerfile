#multi stage builds
# FROM maven AS build

# RUN apt-get update -y && apt-get -y install maven
FROM maven AS build

WORKDIR /app

COPY pom.xml /app/
RUN mvn dependency:resolve
COPY src /app/src/
RUN mvn package


#Run

FROM openjdk:8-jre-alpine3.9

EXPOSE 8080

WORKDIR /app

ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql

COPY --from=build /app/target/shipping-1.0.jar shipping.jar

CMD [ "java", "-Xmn256m", "-Xmx768m", "-jar", "shipping.jar" ]

# FROM maven

# WORKDIR /app

# COPY pom.xml /app/
# RUN mvn dependency:resolve
# COPY src /app/src/
# RUN mvn package
# ENV CART_ENDPOINT=cart:8080
# ENV DB_HOST=mysql
# CMD [ "java", "-Xmn256m", "-Xmx768m", "-jar", "/app/target/shipping-1.0.jar" ]