cd /var/www/html/

docker build -t nodeimage_`date +%Y_%m_%d_%H_%M` .

sudo kill $(lsof -ti:5000)

docker run -d --name dockercontainer_`date +%Y_%m_%d_%H_%M` -p 5000:5000 nodeimage

docker ps
