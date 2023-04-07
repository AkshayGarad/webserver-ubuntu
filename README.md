# Setting up a Web Server on AWS Ubuntu
This guide will walk you through the steps to install a web server on AWS Ubuntu and create an HTML file with the message "Hello this is server one".

## Prerequisites
- An AWS account with an Ubuntu instance launched and connected via SSH.
- Basic knowledge of the Linux command line.
## Steps
1. Update the package list and install Apache2:
```sql
sudo apt update
sudo apt install apache2
```
2. Start the Apache2 service:
```sql
sudo systemctl start apache2
```
3. Create a new directory for your website files:
```bash
sudo mkdir /var/www/html/serverone
```
4. Create a new HTML file with your desired message:
```css
sudo nano /var/www/html/serverone/index.html
```
5. In the Nano text editor, enter the following HTML code:
```php
<html>
  <head>
    <title>Hello This Server One</title>
  </head>
  <body>
    <h1>Hello This Server One</h1>
  </body>
</html>
```
6. Save and exit the file by pressing "Ctrl + X", then "Y", and finally "Enter".
7. Set the appropriate file permissions for your web files:
```bash
sudo chmod -R 755 /var/www/html/serverone
```
8. Restart the Apache2 service to apply the changes:
```bash
sudo systemctl restart apache2
```
9. Access your website by navigating to the public IP address of your Ubuntu instance in a web browser. The URL should be in the format http://public-ip-address/serverone/

## Conclusion
Congratulations! You have successfully set up a web server on AWS Ubuntu and created an HTML file with the message "Hello this server one". Feel free to customize your website further by editing the HTML file or adding more files to the server directory.