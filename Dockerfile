//selecting tomcat server for java war file to run
FROM tomcat:8.0-alpine
//opening port to access outside
EXPOSE 8080
//copying war file built in jenkins from maven build tool
ADD target/MyMavenApp.war  /usr/local/tomcat/webapps/
//running the application in back ground
CMD ["catalina.sh", "run"]
