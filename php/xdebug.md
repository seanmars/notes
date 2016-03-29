**Xdebug setting**

edit the file:

- /etc/php5/apache2/php.ini
- /etc/php5/cli/php.ini


    // change to On
    display_errors = On
    // change to On
    display_startup_errors = On
    // change to On
    html_errors = On
    
    // add below variable and value
    [xdebug]
    zend_extension="/usr/lib/php5/yyyymmdd/xdebug.so"
    xdebug.profiler_enable = 1
    xdebug.profiler_output_dir = /tmp/profiler
