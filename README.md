# Anonymous FTPD Server for Lab/Home Use #

Run ftpd on Alpine in a docker container.  

Run:  sh ./build.sh

Start the container.

Place files into /var/lib/docker/volumes/ftpd-lab/_data on the parent host.
Files can be uploaded into the uploads directory. Username is anonymous.

FTP to your parent host's IP address.

