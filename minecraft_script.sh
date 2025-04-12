# !/bin/bash

echo "Hello, Pain!"
echo "Your information is now being stolen"

# make new directory and move contents
mkdir server
mkdir vm-setup
mv minecraft_script.sh vm-setup

# update system
sudo apt update
sudo apt upgrade

# insert Readme for jdk
printf '# Install your specific commands for your jdk version' >> vm-setup/jdklist.md
printf '# apt install openjdk-1-jdk' >> vm-setup/jdklist.md
printf '# (Change the number depending on java jdk version you want to play on)' >> vm-setup/jdklist.md

# setup firewalld
yes |sudo apt install firewalld

sudo firewall-cmd --permanent --zone=public --add-port=25565/tcp 
sudo firewall-cmd --permanent --zone=public --add-port=25565/udp 
sudo firewall-cmd --reload

 

echo "everything should be compelete now good luck"
