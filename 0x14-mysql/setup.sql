CREATE USER holberton_user@localhost IDENTIFIED BY "projectcorrection280hbtn";
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
CREATE DATABASE tyrell_corp;
USE tyrell_corp;
CREATE TABLE nexus6(id INTEGER, name TEXT);
INSERT INTO nexus6 VALUES (0, "Jarvis");
GRANT SELECT ON tyrell_corp.nexus6 TO holberton_user@localhost;
CREATE USER replica_user@'%' IDENTIFIED BY "replica_user";
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO holberton_user@localhost;
CREATE USER web02@100.26.138.5 IDENTIFIED BY "web02";
GRANT REPLICATION SLAVE ON *.* TO web02@100.26.138.5;