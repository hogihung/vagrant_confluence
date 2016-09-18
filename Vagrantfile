Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-14.04"
  config.vm.hostname = "confluence.home.net" 

  # Setup static ip address to be used with the Atlassian Suite of Application Servers
  config.vm.network "private_network", ip: "192.168.50.83"

  # Copy over the response file for automated install of Confluence
  config.vm.provision "file", source: "files/response.varfile", destination: "response.varfile"

  # Use an inline shell provisioner for basic setup 
  config.vm.provision 'shell', inline: shell, privileged: false

  # Run provisioning specific to setting up Java and Crowd 
  config.vm.provision "shell", path: 'provisioning/confluence_provision.sh'

  # Support for Confluence on port 8090, RMI on 8000
  config.vm.network "forwarded_port", guest: 8090, host: 8090, id: "confluence"
  config.vm.network "forwarded_port", guest: 8000, host: 8000, id: "confluence-rmi"

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 1024
    vb.cpus   = 1
  end
end

def shell
  <<-eos
    echo Installing basic tools 
    sudo apt-get update
    sudo apt-get -y install vim git-core toilet
  eos
end
