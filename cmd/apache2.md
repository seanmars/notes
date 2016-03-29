**check which apache modules are enabled/installed**

    apache2ctl -M

**start/stop/status**

    // start
    // stop
    // restart
    // status
    // reload
    /etc/init.d/apache2 xxxx
    service apache2 xxxx
    
**enable/disable modules**

    a2enmod:
      enables an apache2 module (this does nothing else but creates the proper links to the module .load and .conf files).
    For example:
      a2enmod ssl
      
    a2dismod:
      disables an apache2 module (removes the links from mod-enabled for the module).
    For example:
      a2dismod ssl
      
    
