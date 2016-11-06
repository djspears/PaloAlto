#!/bin/sh
apt-get install -y apache2
rm /var/www/html/index.html
echo "<html>" >> /var/www/html/index.html
echo "<head>" >> /var/www/html/index.html
echo "<title>WebServer 2</title>" >> /var/www/html/index.html
echo "</head>" >> /var/www/html/index.html
echo "<body bgcolor=white>" >> /var/www/html/index.html
echo "<table border="0" cellpadding="10">" >> /var/www/html/index.html
echo "<tr>" >> /var/www/html/index.html
echo "<td>" >> /var/www/html/index.html
echo "<img src="http://1.bp.blogspot.com/_CpVlf6p-G4c/TH5kF_kpcTI/AAAAAAAANEg/0EGjxAQkFjs/s400/la-fouine-robin-1661.png">" >> /var/www/html/index.html
echo "</td>" >> /var/www/html/index.html
echo "<td>" >> /var/www/html/index.html
echo "<h1>WebServer 2</h1>" >> /var/www/html/index.html
echo "</td>" >> /var/www/html/index.html
echo "</tr>" >> /var/www/html/index.html
echo "</table>" >> /var/www/html/index.html
echo "</body>" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html
