# grobid-systemd

This repo is for the installation of grobid with systemd.
There is a presumption that grobid is at grobid-nn-nn-nn and ln'd to /opt/grobid and that it is run by the user grobid.

The shell script grobid-systemd-install.sh should be run after grobid has been installed and proven to run correctly.
The shell script copies the service file and runs the systemd enable command.

