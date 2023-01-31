#!/bin/sh

sed -i "s|skip-networking||g" /etc/my.cnf.d/mariadb-server.cnf
echo [mysqld] > /etc/my.cnf.d/myconfig.cnf
echo bind-address=0.0.0.0 >> /etc/my.cnf.d/myconfig.cnf
echo user=root >> /etc/my.cnf.d/myconfig.cnf
echo datadir=/var/lib/mysql >> /etc/my.cnf.d/myconfig.cnf
echo socket=/tmp/mysqld.sock >> /etc/my.cnf.d/myconfig.cnf
echo [mysql] >> /etc/my.cnf.d/myconfig.cnf
echo socket=/tmp/mysqld.sock >> /etc/my.cnf.d/myconfig.cnf

mysql_install_db

if [ ! -d "/var/lib/mysql/wordpress" ]; then 

    mysqld &

    sleep 1

        mysql -e "CREATE DATABASE $DB_NAME;"
        mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
        mysql -e "GRANT ALL ON $DB_NAME.* TO $DB_USER@'%';"
        # mysql -e "GRANT ALL ON `wordpress`.* TO 'cpollito'@'%';"
        # echo GRANT ALL ON `wordpress`.* TO 'cpollito'@%; | mysql
        mysql -e "FLUSH PRIVILEGES;"
        mysqladmin --socket=/tmp/mysqld.sock -u root password $MYSQL_ROOT_PASSWORD
    
fi
