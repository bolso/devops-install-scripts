sudo groupadd docker  

# add Jenkins user to the docker group 
sudo gpasswd -a jenkins docker

# restart the docker service, run newgrp docker 
sudo service docker restart 
sudo newgrp docker 
