FROM tomcat:9.0-jdk11-openjdk-slim
COPY target/renuka1.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
