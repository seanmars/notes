### Run laravel with apache ###

**Make sure mod_rewrite is enabled**

    sudo a2enmod rewrite

**Required step**

- rename the server.php(on root folder of laravel) to index.php
- copy the .htaccess form public to root folder of laravel 

**Option 1) Modify the main <Directory> directive /etc/apache2/apache2.conf**

    <Directory "/var/www/html">
	    ...
	    AllowOverride None
	    ...
    </Directory>

change to

    <Directory "/var/www/html">
	    ...
	    AllowOverride All
	    ...
    </Directory>

**Option 2) Add <Directory> to site's <VirtualHost>**

    <VirtualHost *:80>
    	DocumentRoot "/var/www/html/laravel_folder"
    	<Directory "/var/www/html/laravel_folder">
    		AllowOverride All
    	</Directory>
    </VirtualHost>
