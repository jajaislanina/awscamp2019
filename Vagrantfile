IMAGE_NAME = "bento/ubuntu-16.04"

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false

    if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
		config.vm.synced_folder ".", "/vagrant", mount_options: ["dmode=700,fmode=600"]
	else
		config.vm.synced_folder ".", "/vagrant"
	end

    config.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 4
    end
    
    config.vm.define "mngr" do |master|
        master.vm.box = IMAGE_NAME
        master.vm.network "private_network", ip: "192.168.36.10"
        master.vm.hostname = "mngr"
        master.vm.provision :shell, path: "scripts/install.sh"
    end
end