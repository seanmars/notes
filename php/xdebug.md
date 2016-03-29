**Xdebug setting**

edit the file:

- /etc/php5/apache2/php.ini
- /etc/php5/cli/php.ini

----------

    display_errors = On
    display_startup_errors = On
    html_errors = On

    [xdebug]
    zend_extension = "/usr/lib/php5/yyyymmdd/xdebug.so"
    xdebug.profiler_enable = 1
    xdebug.profiler_output_dir = /tmp/profiler
