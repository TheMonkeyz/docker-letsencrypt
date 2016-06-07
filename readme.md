Not so simple apache image with letsencrypt-auto preinstalled.

Point your DNS to it, map ports 80 and 443.

Enter the container and run ./letsencrypt-auto --webroot --webroot-path /var/www/html certonly -d yourdomain.example.com -n --agree-tos --email your@e.mail

The certs will be in /etc/letsencrypt/live
