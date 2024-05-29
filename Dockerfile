# Use the official Tomcat 9 image as base
FROM tomcat:9

# Remove existing ROOT application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY target/renuka1.war /usr/local/tomcat/webapps/

# Expose port 8180 to the outside world
EXPOSE 8180

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
