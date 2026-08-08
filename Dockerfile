exp 5:
Step 1: Download H2

Go to:

https://www.h2database.com/html/download.html

Download the Platform-Independent ZIP.

Step 2: Extract it

Inside the ZIP, you'll find:

h2-2.4.240.jar

(or a similar version like h2-2.3.xxx.jar)

Step 3: Add the JAR

In Eclipse:

Right-click your project

Build Path
→ Configure Build Path
→ Libraries
→ Add External JARs

Select

h2-2.4.240.jar

Click

Apply
OK

Run again.


Experiment	Path
1	No path
2	No path
3	No path
4(a)	Screenshots/current_searchbox.png
4(a)	Screenshots/baseline_searchbox.png
4(b)	C:\SeleniumScreenshots\current_google_area.png
4(b)	C:\SeleniumScreenshots\baseline_google_area.png


exp 2:add path in class path external jars 
Step 4: Download Selenium
Go to

https://www.selenium.dev/downloads/

Download

Selenium Java

Extract the ZIP.

Inside you'll find

selenium-java

and

libs
Step 5: Add Selenium JAR Files

Right-click your project

Build Path
→ Configure Build Path

Choose

Libraries
→ Add External JARs

Select all JARs inside

selenium-java

Now click

Add External JARs

again

Go inside

libs

Select all jars.

Click

Apply
OK
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
