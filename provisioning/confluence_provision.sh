#toilet --gay Install-Java
#
## Install Java
#sudo apt-get -y install software-properties-common python-software-properties
#sudo apt-add-repository ppa:webupd8team/java
#sudo apt-get update
#echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
#sudo apt-get -y install oracle-java8-installer
#
## Add JAVA_HOME to the environment
#sudo echo JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre/bin/java" >> /etc/environment

# Download Confluence
toilet --gay Install-Confluence
sudo wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-5.10.4-x64.bin
sudo chmod a+x atlassian-confluence-5.10.4-x64.bin 

echo "---------------------------------------------------"
echo "Connect to the new vm using:  vagrant ssh"
echo "Issue the following command to start the install of"
echo "the Confluence Server software"
echo "sudo ./atlassian-confluence-5.10.4-x64.bin"
echo ""
echo "Access Confluence at: http://localhost:8090"
echo "---------------------------------------------------"
