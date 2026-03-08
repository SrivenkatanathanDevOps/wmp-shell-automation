dnf install -y java-21-openjdk-devel

java -version

useradd -r -s /bin/false appuser

mkdir -p /app


curl -L -o /tmp/portfolio-service.tar.gz https://raw.githubusercontent.com/raghudevopsb88/wealth-project/main/artifacts/portfolio-service.tar.gz
cd /app
tar xzf /tmp/portfolio-service.tar.gz

cp portfolio-service.service /etc/systemd/system/portfolio-service.service

cd /app
chmod +x gradlew
./gradlew bootJar --no-daemon -x test




systemctl daemon-reload

systemctl enable portfolio-service
systemctl start portfolio-service