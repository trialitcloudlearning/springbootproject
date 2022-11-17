sudo apt update
sudo apt install default-jre 
java -version








mysql


sudo apt update
sudo apt-get install mysql-server
systemctl is-active mysql
sudo mysql_secure_installation
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'my-secret-password';
/usr/bin/mysql -u root -p
FLUSH PRIVILEGES;
create database demo;
 
maven
sudo apt install maven -y




java
mvn package
check under target folder .jar
java -jar employee-management-webapp-0.0.1-SNAPSHOT.jar
