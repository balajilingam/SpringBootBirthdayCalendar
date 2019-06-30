# SpringBootBirthdayCalendar
SpringBootBirthdayCalendar

Tools You Will Need
Maven 3.0+ is your build tool
Your favorite IDE. We use Eclipse.
JDK 1.8+

Creating the Project With Spring Initializr
Creating a REST service with Spring Initializr is a cake walk. We will use Spring Web MVC as our web framework.

Spring Initializr is a great tool to bootstrap your Spring Boot projects.


http://start.spring.io/
the following steps have to be done.

Launch Spring Initializr and choose the following
Choose com.in28minutes.springboot.rest.example as Group
Choose spring-boot-2-jdbc-with-h2 as Artifact
Choose the following dependencies
Web
JDBC
H2
DevTools
Click Generate Project.
Import the project into Eclipse. (File -> Import -> Existing Maven Project)
Starter Projects in pom.xml
Below is the list of starter projects in pom.xml.

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-jdbc</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-devtools</artifactId>
    <scope>runtime</scope>
</dependency>
<dependency>
    <groupId>com.h2database</groupId>
    <artifactId>h2</artifactId>
    <scope>runtime</scope>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-test</artifactId>
    <scope>test</scope>
</dependency>


Initialize the H2 In-Memory Database With the Schema
We will use H2 as the database.

H2 provides a web interface called the H2 Console to see the data. Let’s enable that console in the application.properties

/src/main/resources/application.properties

# Enabling H2 Console
spring.h2.console.enabled=true


When you reload the application, you can launch the H2 Console at http://localhost:8080/h2-console.

Image

Tip: Make sure that you use jdbc:h2:mem:testdb as the JDBC URL.

When you use the right JDBC URL given above, you should see an empty schema when you click the Connect button. Image
