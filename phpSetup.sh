#!/bin/bash
echo -e "* Search for ${YELLOW}php5_module ${RESTORE}(should be near line 171) and edit the httpd.conf\n"

echo -e "* Comment out ${YELLOW}php5_module${RESTORE}\n"

echo -e "${BLUE}LoadModule php7_module /usr/local/opt/php71/libexec/apache2/libphp7.so
<IfModule php7_module>
 AddType application/x-httpd-php .php
 AddType application/x-httpd-php-source .phps

 <IfModule dir_module>
  DirectoryIndex index.html index.php
 </IfModule>
</IfModule>${RESTORE}"

echo -e "${RED}NOTE: After editing the httpd.conf file you will need to restart apache via"
echo -e "${CYAN}sudo apachectl restart${RESTORE}"
echo -e "See ${CYAN}http://w3bsmart.blogspot.com/2015/08/installing-php-7-on-os-x-yosemite.html${RESTORE} for more info."
read -p "Press Enter to launch a new tab and edit the httpd.conf file.\n"

# This will open a new terminal tab
osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down'
echo "Waiting before launching vim..."
sleep 6s
vim /etc/apache2/httpd.conf
