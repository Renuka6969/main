# Use the official Tomcat image from the Docker Hub
FROM tomcat:9.0

# Set the working directory to Tomcat's home
WORKDIR /usr/local/tomcat

# Remove the default ROOT webapp
RUN rm -rf webapps/ROOT

# Copy the WAR file to the webapps directory of Tomcat
COPY target/renuka1.war webapps/ROOT.war

# Change the Tomcat HTTP port from 8080 to 8180
RUN sed -i 's/port="8080"/port="8180"/' conf/server.xml

# Expose port 8180 internally
EXPOSE 8180

# Start Tomcat
CMD ["catalina.sh", "run"]