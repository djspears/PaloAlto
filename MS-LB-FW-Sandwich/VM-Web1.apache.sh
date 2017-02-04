#!/bin/sh
apt-get install -y apache2
rm /var/www/html/index.html
echo "<html>" >> /var/www/html/index.html
echo "<head>" >> /var/www/html/index.html
echo "<title>WebServer 1</title>" >> /var/www/html/index.html
echo "</head>" >> /var/www/html/index.html
echo "<body bgcolor=white>" >> /var/www/html/index.html
echo "<table border="0" cellpadding="10">" >> /var/www/html/index.html
echo "<tr>" >> /var/www/html/index.html
echo "<td>" >> /var/www/html/index.html
echo "<img src="http://3.bp.blogspot.com/_UqUwVPikChs/R-C9RHbATPI/AAAAAAAAC-c/E-WLvi5q7-4/s320/la-fouine-batman-1721.png">" >> /var/www/html/index.html
echo "</td>" >> /var/www/html/index.html
echo "<td>" >> /var/www/html/index.html
echo "<h1>WebServer 1</h1>" >> /var/www/html/index.html
echo "</td>" >> /var/www/html/index.html
echo "</tr>" >> /var/www/html/index.html
echo "</table>" >> /var/www/html/index.html
echo "</body>" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html
