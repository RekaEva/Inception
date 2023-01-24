#!bin/sh

#echo [mysqld] > /etc/my.cnf.d/exta.cnf \\ зачем эта строчка??

#наша база может принимать запросы с любых ip адресов
echo bind-address=0.0.0.0 >> /etc/my.cnf.d/myconfig.cnf
# этот параметр и так равен 0(по умолчанию), но пусть будет явно, вдруг я чего-то не поняла.
echo skip-networking=0 >> /etc/my.cnf.d/myconfig.cnf

#указываем пользователя (до конца не понятно, но без этого не работает)
echo user=root >> /etc/my.cnf.d/myconfig.cnf
#Указываем путь, где будет храниться база по дефолту
echo datadir=/var/lib/mysql >> /etc/my.cnf.d/myconfig.cnf

#echo [mysql] >> /etc/my.cnf.d/exta.cnf и эта тоже?

#далее применяем все изменения, 
#создаём базу данных из того, что мы установили и сконфигурировали
mysql_install_db

if [ ! -d "/var/lib/mysql/wordpress" ]; then 

    #Запускам БД
    # mysqld_safe

    mysql

    mysql -e "CREATE DATABASE $DB_NAME;"
    mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
    mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
    mysqladmin -u root password $DB_RPASS
    
fi
# if [ ! -d "/var/lib/mysql/wordpress" ]; then 

#     #Запускам БД
#     mysqld_safe

#     mysql -e "CREATE DATABASE $DB_NAME;"
#     mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
#     mysql -e "CREATE USER '$DB_USER'@localhost IDENTIFIED BY '$DB_PASS';"
#     echo GRANT ALL ON '`'$DB_NAME'`'.* TO "'$DB_USER'"@"'%';" | mysql
#     mysql -e "FLUSH PRIVILEGES;"

# fi