#/bin/bash
#Script Create database and user Database on linux
prdb="123456a@"
mysql -u root -p$prdb <<eof
CREATE DATABASE test1;
GRANT ALL ON test1.* TO 'test1'@'%' IDENTIFIED BY '123456';
FLUSH PRIVILEGES;

CREATE DATABASE test2;
GRANT ALL ON test2.* TO 'test2'@'%' IDENTIFIED BY '123456';
FLUSH PRIVILEGES;

CREATE DATABASE test3;
GRANT ALL ON test3.* TO 'test3'@'%' IDENTIFIED BY '123456';
FLUSH PRIVILEGES;
eof

echo "create success full"