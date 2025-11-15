# Use Tomcat with JDK 11
FROM tomcat:9-jdk11

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your LibraryRegistration.war as ROOT.war
COPY target/LibraryRegistration.war /usr/local/tomcat/webapps/ROOT.war

# Expose port Tomcat runs on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
