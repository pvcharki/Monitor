
From maven as build
COPY src/home/app/src
COPY pom.xml/home/app
RUN mvn -f /home/app/pom.xml  clean package



From openjdk
 
EXPOSE 8088
 
ADD target/monitoring-0.0.1-SNAPSHOT.jar monitoring-0.0.1-SNAPSHOT.jar
 
ENTRYPOINT ["java","-jar","monitoring-0.0.1-SNAPSHOT.jar"]