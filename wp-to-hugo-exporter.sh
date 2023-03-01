#!/bin/bash
sudo apt -y install unzip

sudo rm -dr ~/wordpress-to-hugo-exporter

cd ~ && git clone https://github.com/SchumacherFM/wordpress-to-hugo-exporter.git


sudo rm -dr /var/www/html/wordpress/wp-content/plugins/wordpress-to-hugo-exporter
sudo mv wordpress-to-hugo-exporter/ /var/www/html/wordpress/wp-content/plugins

sudo sed -i '948s/.*/extension=zip.so/' /etc/php/8.0/cli/php.ini
sudo sed -i '948s/.*/extension=zip.so/' /etc/php/8.0/fpm/php.ini

cd /var/www/html/wordpress/wp-content/plugins/wordpress-to-hugo-exporter/ && sudo php hugo-export-cli.php ~/

sudo chown -R www-data:www-data /var/www/html/wordpress/
sudo find /var/www/html/wordpress -type d -exec chmod 755 {} \;
sudo find /var/www/html/wordpress -type f -exec chmod 644 {} \;

sudo rm -dr ~/wp-hugo
mkdir ~/wp-hugo
unzip ~/wp-hugo.zip -d ~/wp-hugo && echo && echo && cd ~/wp-hugo/hugo-export && pwd && echo && echo && ls

