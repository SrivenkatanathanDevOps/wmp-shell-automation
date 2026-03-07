dnf module disable nginx -y
dnf module enable nginx:1.26 -y
dnf install -y nginx

systemctl enable nginx
systemctl start nginx

curl -fsSL https://rpm.nodesource.com/setup_22.x | bash -
dnf install -y nodejs

node --version
npm --version