dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm


dnf -qy module disable postgresql

dnf install -y postgresql16-server postgresql16

/usr/pgsql-16/bin/postgresql-16-setup initdb

systemctl enable postgresql-16
systemctl start postgresql-16


cp postgresql.conf /var/lib/pgsql/16/data/postgresql.conf

cp pg_hba.conf /var/lib/pgsql/16/data/pg_hba.conf

systemctl restart postgresql-16

sudo -u postgres /usr/pgsql-16/bin/psql -f schema.sql