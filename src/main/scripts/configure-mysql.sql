##use to run mysql db docker image, optional is you're not using a local myswldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

#connect to mysql and run as root user
#Create databases

CREATE DATABASE sfg_dev;
CREATE DATABASE sfg_prod;

#create database service accounts
CREATE USER 'sfg_dev_user'@'localhost' identified by 'guru';
CREATE USER 'sfg_prod_user'@'localhost' identified by 'guru';
CREATE USER 'sfg_dev_user'@'%' identified by 'guru';
CREATE USER 'sfg_prod_user'@'%' identified by 'guru';


#database grants
grant select on  sfg_dev.* to 'sfg_dev_user'@'localhost';
grant insert on  sfg_dev.* to 'sfg_dev_user'@'localhost';
grant delete on  sfg_dev.* to 'sfg_dev_user'@'localhost';
grant update on  sfg_dev.* to 'sfg_dev_user'@'localhost';

grant select on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant insert on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant delete on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant update on sfg_prod.* to 'sfg_prod_user'@'localhost';
#######Users from different IP addresses
grant select on  sfg_dev.* to 'sfg_dev_user'@'%';
grant insert on  sfg_dev.* to 'sfg_dev_user'@'%';
grant delete on  sfg_dev.* to 'sfg_dev_user'@'%';
grant update on  sfg_dev.* to 'sfg_dev_user'@'%';

grant select on sfg_prod.* to 'sfg_prod_user'@'%';
grant insert on sfg_prod.* to 'sfg_prod_user'@'%';
grant delete on sfg_prod.* to 'sfg_prod_user'@'%';
grant update on sfg_prod.* to 'sfg_prod_user'@'%';
