# fum-cloud-notification-core-2023
[Project description]

## Local Development


To run this project locally, you will need to install the following dependencies:

1. ActiveMQ
2. Postgresql

3. Java 17:

   ```
   apt-get update
   apt-get upgrade
   apt-get install gnupg2 software-properties-common
   add-apt-repository ppa:linuxuprising/java
   apt-get install oracle-java17-installer oracle-java17-set-default
   ```

   You can test the installation by running `java -version` in your terminal.

4. Maven 3.6.3:

   ```
   sudo apt update
   sudo apt upgrade
   sudo apt install maven
   ```

   You can test the installation by running `mvn -version` in your terminal.

## Usage
Run this project locally
  ```
   mvn clean install
   java -jar target/my-project-name.jar
  ```
