setuppostgres:
    docker run --name postgres15 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:15.1-alpine3.17

setupmysql:
    docker run  --name mysql -e MYSQL_ROOT_PASSWORD=secret -d mysql:latest

setuporacle:
    docker run --name oracle21 -p 1521:1521 -e ORACLE_PASSWORD=secret -e ORACLE_DATABASE=mydb -e APP_USER=root -e APP_USER_PASSWORD=secret -e STARTUP_NOMOUNT -d gvenzl/oracle-xe:latest

createdbpostgres:
	docker exec -it postgres15 createdb --username=root --owner=root tutorials

dropdbpostgres:
	docker exec -it postgres15 dropdb tutorials

createdbmysql:
	docker exec -it mysql  mysql -uroot -psecret -e "create database tutorials;"

dropdbmysql:
	docker exec -it mysql mysql -uroot -psecret -e "drop database tutorials;"

#In case of using oracle database:

# sqlplus / as sysdba
# create user dongocanh96 identified by ngocanh8;
# grant CONNECT, RESOURCE, DBA TO dongocanh96;
# grant CREATE SESSION, ALTER SESSION, CREATE DATABASE LINK, CREATE MATERIALIZED VIEW, CREATE PROCEDURE, \
 CREATE PUBLIC SYNONYM, CREATE ROLE, CREATE SEQUENCE, CREATE SYNONYM, CREATE TABLE, CREATE TRIGGER, CREATE TYPE, \
 CREATE VIEW, UNLIMITED TABLESPACE to dongocanh96;

