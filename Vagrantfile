Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64" 
    config.vm.network "forwarded_port", guest: 5000, host: 5000
             
    config.vm.network "private_network", ip: "192.168.56.10"
    config.vm.synced_folder "./", "/project/"
    # config.vm.define "trusty" do |node|    
    #   node.vm.hostname = "trusty.local"    
    #     node.vm.provision "ansible" do |ansible|        
    #       ansible.playbook = "main.yaml"
    #   end
    # end
  config.vm.provider "virtualbox" do |vb|
  vb.memory = "512"
       vb.cpus = "1"
     end
  config.vm.provision "shell", inline: <<-SHELL 
       apt-get update                          
    
     SHELL
  end