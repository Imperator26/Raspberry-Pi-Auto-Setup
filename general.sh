echo "export LC_ALL=C" | tee -a .bash_aliases

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y unattended-upgrades
sudo apt-get install -y fail2ban
sudo apt-get install -y ufw
sudo ufw allow ssh
sudo ufw enable
