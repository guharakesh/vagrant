# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

	# config.vm.synced_folder "src/", "/home/vagrant/src/", create: true

	config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key", "~/.ssh/id_rsa"]
	config.ssh.forward_agent = true
	config.vm.network "forwarded_port", guest: 80, host: 8080 
	config.vm.network "forwarded_port", guest: 1337, host: 1337 

	config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: ".ssh/id_rsa.pub"
	config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
	config.vm.provision "file", source: "~/_vimrc", destination: ".vimrc"

	config.vm.provision "shell", path: "shell/setup.sh"
	config.vm.provision "shell", 
		:inline =>	"echo 'Turning off console beeps...' && "\
								"grep '^set bell-style none' /etc/inputrc || "\
								"echo 'set bell-style none' >> /etc/inputrc"	

	config.vm.provision "shell", path: "shell/endings.sh"

	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

		vb.customize [
			"setextradata", :id,
			"VBoxInternal2/SharedFolderEnableSymlinksCreate/v-root", "1"
		]
	end

	# Keep Running settings
	# config.vm.provision "shell", path: "shell/krcle.sh"
	# config.vm.network "forwarded_port", guest: 2368, host: 2368

end
