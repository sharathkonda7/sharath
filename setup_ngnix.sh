#!/bin/bash

# Install nginx
sudo apt update
sudo apt install -y nginx

# Start nginx
sudo systemctl start nginx

# Create or update the index.html file
sudo cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo Page</title>
</head>
<body>
    <h1> I Learnt how networking works in Azure today</h1>
</body>
</html>
EOF

# Restart nginx
sudo systemctl restart nginx
