#
#grobid-systemd-install.sh

sudo cp grobid.service /etc/systemd/system
sudo systemctl enable grobid.service
sudo systemctl start grobid.service
sudo systemctl status grobid.service

