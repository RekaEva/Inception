
#!/bin/sh


echo "-------------------->START<-----------------------------"

wp config create --allow-root --path=/var/www/wordpress/ --dbname=wordpress \
	--dbuser=user_db --dbpass=123db --dbhost=mariadb \
	--dbprefix=wp_

wp core install --allow-root --path=/var/www/wordpress --url=cpollito.42.fr \
--title=Hello_world,_I_am_Cpollito! --admin_user=cpollito --admin_password=123admin \
--admin_email=cpollito@student.21-school.ru

wp user create --allow-root --path=/var/www/wordpress/ user_wp wp@m.ru \
                --role=author --user_pass=123wp

# echo "START php-fpm81 -F"
# tail -f
exec /usr/sbin/php-fpm81 -F









# echo "-------------------->START<-----------------------------"

# wp config create --allow-root --path=/var/www/wordpress/ --dbname=$DB_NAME \
# 	--dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST \
# 	--dbprefix=wp_

# wp core install --allow-root --path=/var/www/wordpress --url=$DOMAIN_NAME \
# --title=$TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASS \
# --admin_email=$WP_EMAIL

# wp user create --allow-root --path=/var/www/wordpress/ $WP_USER wp@m.ru \
#                 --role=author --user_pass=$WP_USER_PASS

# echo "php-fpm81 -F"
# exec php-fpm81 -F
