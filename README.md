# User Dependencies
Below are the dependencies need to be added into your pom.xml file into the maven project:
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
**Selenium**:
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.23.0</version>
</dependency>

**Cucumber**:
<dependency>
    <groupId>io.cucumber</groupId>
    <artifactId>cucumber-java</artifactId>
    <version>6.1.1</version>
    <scope>test</scope>
</dependency>

**Cucumber/Junit**:
<dependency>
    <groupId>io.cucumber</groupId>
    <artifactId>cucumber-junit</artifactId>
    <version>6.1.1</version>
    <scope>test</scope>
</dependency>

## Export Reports
to export file for Jira, use the 
plugin = "json:src/test/resources/reports/json-report.json"
in the TestRunner to have a report generated in JSON file in the @CucumberOptions method
