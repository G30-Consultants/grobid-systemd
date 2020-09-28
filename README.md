# grobid-systemd

This repo is for the installation of grobid with systemd.
There is a presumption that grobid is at grobid-nn-nn-nn and ln'd to /opt/grobid and that it is run by the user grobid.

The shell script grobid-systemd-install.sh should be run after grobid has been installed and proven to run correctly.
The shell script copies the service file and runs the systemd enable command.

Grobid should be built as a standalone server as in 

~~~
./gradlew clean assemble
cd ..
mkdir grobid-installation
cd grobid-installation
unzip ../grobid/grobid-service/build/distributions/grobid-service-0.6.1.zip
mv grobid-service-0.6.1 grobid-service
unzip ../grobid/grobid-home/build/distributions/grobid-home-0.6.1.zip
./grobid-service/bin/grobid-service server grobid-service/config/config.yaml
~~~

Adjust the config.yaml in /grobid/grobid-service/config/config.yaml setting the absolute path for grobid-home and making sure the port is as expected. The current default is 8070 not 8080.

In a production setting there should be a redirecting proxy in front og grobid. NB If you do have a proxy in front then you have more work to do to enable the User interface.
