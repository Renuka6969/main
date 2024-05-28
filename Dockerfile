# Use the official Tomcat image from the Docker Hub
FROM tomcat:9.0

# Remove the default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file to the webapps directory of Tomcat
COPY target/renuka1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (or the port your Tomcat is configured to run on)
EXPOSE 8180

# Start Tomcat
CMD ["catalina.sh", "run"]