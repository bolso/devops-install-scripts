sudo yum -y update
sudo yum -y upgrade

# Get maven zip
wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz

sudo tar xzf apache-maven-3.3.3-bin.tar.gz -C /usr/local

sudo ln -s /usr/local/apache-maven-3.3.3 /usr/local/maven

sudo ln -s /usr/local/maven/bin/mvn /bin/mvn

sudo yum install -y java-1.7.0-openjdk-devel.x86_64

