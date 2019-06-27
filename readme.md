# Simple automate build using Gradle, Docker on Java Spring Boot

The basic API project will be build and automate deploy on docker container.

## Getting start

Fork this project into your github and pull it to your pc.
Modify the **github_id_rsa** file and **PROJECT_NAME** & **GIT_PROJECT** inside **startup.sh** by putting your own private key ( **github_id_rsa** ) and project name ( directory ) and git project ( git url ).
Download the [gradle](https://services.gradle.org/distributions/gradle-5.0-bin.zip) to project folder and convert it from **zip** to **tar** then name it as **gradle-5.0-bin.tar**.

```bash
docker build -t your_tag .
docker run -d -P your_tag
```
it will run your the docker container based on your built image. 

## Logs and Test
```bash
docker logs your_container_id -f
```
It will display the logs of your container . First time it should clone your project and build using gradle.
```bash
docker start your_container_id
```
it will start your container, check the logs it should pull your project from github and  build using gradle as well. But this time it will not clone again .