echo "Install SweetSecurity" 
wget https://raw.githubusercontent.com/TravisFSmith/SweetSecurity/master/SweetSecurity.sh
sudo sh SweetSecurity.sh



#Get Base for containers
docker pull resin/rpi-raspbian

#Mysql options
echo "Enter Root User name"
read root

echo "Enter Root Password for mysql"
read mysqlpw

#Get Mysql
docker run --restart=always --name mysql -v /var/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$mysqlpw -d hypriot/rpi-mysql:latest

#Build Cowrie (unable to get due to hub.docker issues.)
wget https://raw.githubusercontent.com/g1eagle/Rpi-Cowrie/master/InstallCowrie.sh
sudo sh InstallCowrie.sh

