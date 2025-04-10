#use the official Tomcat image from Docker Hub as the base image
FROM tomcat:9.0

# Set environment variables for Tomcat
ENV TOMCAT_HOME /usr/local/tomcat

# Expose port 8080
EXPOSE 8080

# Add your custom WAR file into the Tomcat webapps directory (you can replace this with your own application)
COPY ./your-application.war $TOMCAT_HOME/webapps/

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]

