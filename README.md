# Plugin SonarQube iOS Test Project

This project aims to demonstrate how to integrate plugin-sonarqube with an iOS project

## Initialization

Before starting, **you have to run a sonarqube instance with the ecoCode iOS plugin running**.

Configure a project with the following properties:

* Project Key: ecoCodeTestiOS
* Project name: ecoCodeTestiOS
* Save the project login key somewhere.

Update the _sonar-project.properties_ file with the project login key:

```groovy
sonar.projectKey=ecoCodeTestiOS
sonar.projectName=ecoCodeTestiOS

sonar.login=your_login_here
```

## Command line

To run the project, just use the following command line from the project root:

- On Windows:

```
sonar-scanner\sonar-scanner-4.7.0.2747-windows\bin\sonar-scanner.bat
```

Note that login and default sonarQube host can be overriden using _-Dsonar.host.url_ and _-Dsonar.login_ command line parameters.

