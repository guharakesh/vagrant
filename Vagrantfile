# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

	config.vm.synced_folder "src/", "/home/vagrant/src/", create: true

	config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key", "~/.ssh/id_rsa"]
	config.ssh.forward_agent = true

	config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: ".ssh/id_rsa.pub"

	config.vm.provision "shell", path: "shell/setup.sh"
	config.vm.provision "shell", 
		:inline =>	"echo 'Turning off console beeps...' && "\
								"grep '^set bell-style none' /etc/inputrc || "\
								"echo 'set bell-style none' >> /etc/inputrc"	

	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
	end

end
