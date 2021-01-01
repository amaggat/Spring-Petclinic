## Running petclinic locally

You can then access petclinic here: [http://localhost:8080/](http://localhost:8080/)

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

### Steps:


Inside IntelliJ IDEA

In the main menu, select `File > Open` and select the Petclinic [pom.xml](pom.xml). Click on the `Open` button.

CSS files are generated from the Maven build. You can either build them on the command line `./mvnw generate-resources` 
or right click on the `spring-petclinic` project then `Maven -> Generates sources and Update Folders`.

Go to the `Run -> Edit Configuration` then configure a Tomcat or a Jetty web container. Deploy the `spring-petclinic.war` file.
Run the application by clicking on the `Run` icon.


Navigate to Petclinic

Visit [http://localhost:8080](http://localhost:8080) in your browser.




