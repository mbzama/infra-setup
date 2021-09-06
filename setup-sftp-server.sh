# Installation

sudo apt update
sudo apt install vsftpd
sudo systemctl start vsftpd
sudo systemctl enable vsftpd

sudo cp /etc/vsftpd.conf  /etc/vsftpd.conf_default

sudo useradd -m ftpuser
sudo passwd ftpuser

sudo ufw allow 20/tcp
sudo ufw allow 21/tcp

sudo ftp <host-name or ip address>

# Setup ssl 
Add these to: /etc/vsftpd.conf
ssl_enable=YES
rsa_cert_file=/etc/letsencrypt/live/domain.com/fullchain.pem
rsa_private_key_file=/etc/letsencrypt/live/domain.com/privkey.pem
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
require_ssl_reuse=NO
ssl_ciphers=HIGH
pasv_min_port=40000
pasv_max_port=50000

