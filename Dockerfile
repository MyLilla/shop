#FROM maven:3.9.8-amazoncorretto-21-al2023 AS MAVEN_BUILD
#WORKDIR /app
#COPY ./ ./
#RUN mvn clean package
#
##FROM tomcat:9.0.91-jdk21-corretto-al2
#FROM tomcat:10.1.36-jdk21
#COPY --from=MAVEN_BUILD /app/target/Shop.war /usr/local/tomcat/webapps/Shop.war
#EXPOSE 8080

# 1. Билдим приложение
FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# 2. Запускаем с Tomcat
FROM tomcat:10.1.36-jdk21
COPY --from=builder /app/target/ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
