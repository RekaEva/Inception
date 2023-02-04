
#!/bin/sh

echo "-------------------->START<-----------------------------"

wp config create --allow-root --path=/var/www/wordpress/ --dbname=$DB_NAME \
	--dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST \
	--dbprefix=wp_

wp core install --allow-root --path=/var/www/wordpress --url=$DOMAIN_NAME \
--title=$TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASS \
--admin_email=$WP_EMAIL

wp user create --allow-root --path=/var/www/wordpress/ $WP_USER wp@m.ru \
                --role=author --user_pass=$WP_USER_PASS

if [ ! -f /var/www/html/wordpress/wp-config.php ]; then
wp theme install inspiro --activate --allow-root

# enable redis cache
    sed -i "40i define( 'WP_REDIS_HOST', '$REDIS_HOST' );"      wp-config.php
    sed -i "41i define( 'WP_REDIS_PORT', 6379 );"               wp-config.php
    #sed -i "42i define( 'WP_REDIS_PASSWORD', '$REDIS_PWD' );"   wp-config.php
    sed -i "42i define( 'WP_REDIS_TIMEOUT', 1 );"               wp-config.php
    sed -i "43i define( 'WP_REDIS_READ_TIMEOUT', 1 );"          wp-config.php
    sed -i "44i define( 'WP_REDIS_DATABASE', 0 );\n"            wp-config.php

    wp plugin install redis-cache --activate --allow-root
    wp plugin update --all --allow-root

echo "Wordpress: set up!"
fi

wp redis enable --allow-root

exec /usr/sbin/php-fpm81 -F
