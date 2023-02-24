Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 8080, host: 8888, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 3306, host: 33006, host_ip: "127.0.0.1"
   config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt install -y git
    sudo apt install -y openjdk-8-jdk-headless
    sudo apt install -y tomcat9
    git clone https://github.com/Aeius/publish_test.git
    sudo apt install -y mysql-server-8.0
    sudo mysql -u root < publish_test/adduser.sql
    sudo mysql -u root < publish_test/dept.sql
    sudo apt install -y maven
    cd publish_test
    mvn compile
    mvn package
    cd target
    sudo rm -fr /var/lib/tomcat9/webapps/ROOT.war
    sudo rm -fr /var/lib/tomcat9/webapps/ROOT
    sudo mv day56.war /var/lib/tomcat9/webapps/ROOT.war
   SHELL
end
