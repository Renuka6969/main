
FROM tomcat:9.0.89-jdk21-openjdk

COPY renuka1.war /usr/local/tomcat/webapps/

# Expose port 8080 (default Tomcat port)
EXPOSE 8180

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
