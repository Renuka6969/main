# Use the official Tomcat image as the base image
FROM tomcat:latest

# Copy the WAR file from your local system into the webapps directory of Tomcat in the Docker image
COPY renuka1.war /usr/local/tomcat/webapps/


# Expose port 8180 to allow outside access to the Tomcat server
EXPOSE 8180

# Command to start Tomcat when the Docker container starts
CMD ["catalina.sh", "run"]
