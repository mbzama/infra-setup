sudo apt update
sudo apt install vsftpd
sudo systemctl start vsftpd
sudo systemctl enable vsftpd

sudo cp /etc/vsftpd.conf  /etc/vsftpd.conf_default

sudo useradd -m ftpuser
sudo passwd ftpuser

sudo ufw allow 20/tcp
sudo ufw allow 21/tcp


sudo ftp ubuntu-ftp
