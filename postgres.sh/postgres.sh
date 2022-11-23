#!/bin/bash

# Update Cache & Upgrade
apt -y update && sudo apt -y upgrade
#Install GnuPG
apt install -y gnupg2
# Add PostgreSQL APT Repository
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# Download PostgreSQL ASC Key
wget --quiet -O -
https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
# Update APT Cache
apt -y update
# Install PostgreSQL
apt -y install postgresql-15
# Create database
sudo -i -u postgres psql -c "CREATE DATABASE
victordb WITH ENCODING 'UTF8' TEMPLATE
template0"
# Create User
sudo -i -u postgres psql -c "CREATE USER victor
WITH ENCRYPTED PASSWORD 'victor12345'"
# Grant user privilege on database
sudo -i -u postgres psql -c "GRANT ALL
PRIVILEGES ON DATABASE victordb to victor"
# Configure user login method in pg_hba.conf
echo -e 'local\tall\t\tayo\t\t\t\t\tmd5' >> /etc/postgresql/15/main/pg_hba.conf
# Restart PostgreSQL
systemctl restart postgresql
# Login as user
# psql -h localhost -U victor -d victordb
