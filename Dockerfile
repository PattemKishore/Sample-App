# Use the official Tomcat 9.0 base image
FROM tomcat:9.0

# Set environment variables (optional, for customization)
ENV TOMCAT_HOME /usr/local/tomcat
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk

# Set the working directory to the Tomcat webapps directory
WORKDIR $TOMCAT_HOME/webapps

# Copy your web application (.war file) into the Tomcat webapps folder
# Replace 'your-app.war' with the actual name of your WAR file
COPY ./your-app.war /usr/local/tomcat/webapps/

# Expose the port Tomcat is running on (default is 8080)
EXPOSE 8080

# Set the command to run Tomcat
CMD ["catalina.sh", "run"]

