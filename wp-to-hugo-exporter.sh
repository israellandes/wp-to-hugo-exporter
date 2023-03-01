#!/bin/bash

# Installs Dependancies, Repo, Unzip
sudo apt -y install unzip
cd ~ && git clone https://github.com/SchumacherFM/wordpress-to-hugo-exporter.git

# WARNING!!! Cleans up Enviornment, deletes & re-runs script and all output folders/files
sudo rm -dr ~/wordpress-to-hugo-exporter
sudo rm -dr /var/www/html/wordpress/wp-content/plugins/wordpress-to-hugo-exporter
sudo rm -dr ~/wp-hugo

# Sets up Enviornment
sudo mv wordpress-to-hugo-exporter/ /var/www/html/wordpress/wp-content/plugins

# Works with PHP 8.0 , comment out if experiencing issues
sudo sed -i '948s/.*/extension=zip.so/' /etc/php/8.0/cli/php.ini
sudo sed -i '948s/.*/extension=zip.so/' /etc/php/8.0/fpm/php.ini

# Runs WP to Hugo Exporter
cd /var/www/html/wordpress/wp-content/plugins/wordpress-to-hugo-exporter/ && sudo php hugo-export-cli.php ~/

# Fixes Wordpress Permissions
sudo chown -R www-data:www-data /var/www/html/wordpress/
sudo find /var/www/html/wordpress -type d -exec chmod 755 {} \;
sudo find /var/www/html/wordpress -type f -exec chmod 644 {} \;

# Creates  Output Folder in Home Dir
mkdir ~/wp-hugo

# Unzips and Shows Output
unzip ~/wp-hugo.zip -d ~/wp-hugo && echo && echo && cd ~/wp-hugo/hugo-export && pwd && echo && echo && ls

