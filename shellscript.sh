sudo apt update

sudo apt install apache2 -y

sudo systemctl start apache2

sudo mkdir /var/www/html/serverone

sudo bash -c "cat <<EOF > /var/www/html/serverone/index.html
<html>
  <head>
    <title>Hello This Server One</title>
  </head>
  <body>
    <h1>Hello This Server One</h1>
  </body>
</html>
EOF"

sudo chmod -R 755 /var/www/html/serverone

sudo systemctl restart apache2

chmod +x install_web_server.sh

./install_web_server.sh