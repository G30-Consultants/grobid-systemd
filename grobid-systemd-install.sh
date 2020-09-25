#
#grobid-systemd-install.sh

sudo cp grobid.service /etc/systemd/system
sudo systemd enable grobid.service
sudo systemd start grobid.service
sudo systemd status grobid.service

