#!/bin/bash

if [[ $UID -ne 0 ]]; then
    echo "$0 must be run as root"
    exit 1
fi

# This assumes you ran step 00 (attach an EBS)

apt-get update && apt-get install -y postgresql-9.1 postgresql-9.1-postgis
/etc/init.d/postgresql stop
mkdir /vol/postgresql
sed -i "s/data_directory = '\/var\/lib\/postgresql\/9.1\/main'/data_directory = '\/vol\/postgresql\/9.1\/main'/" /etc/postgresql/9.1/main/postgresql.conf
mv /var/lib/postgresql/9.1 /vol/postgresql/
chown -R postgres:postgres /vol/postgresql
/etc/init.d/postgresql start

sudo -u postgres psql -c "CREATE ROLE census WITH NOSUPERUSER LOGIN UNENCRYPTED PASSWORD 'censuspassword';"
sudo -u postgres psql -c "CREATE DATABASE census WITH OWNER census;"

# Make login passwordless
echo "localhost:5432:census:census:censuspassword" > /acs/.pgpass
chmod 0600 /acs/.pgpass
