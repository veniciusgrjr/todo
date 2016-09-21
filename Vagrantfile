VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id , "--memory", "512"]
  end

  config.vm.define :todo do |todo_config|
    todo_config.vm.hostname = "todo"
    todo_config.vm.network :private_network, :ip => "192.168.33.18"
    
    todo_config.vm.provision "ansible" do |ansible|
      ansible.playbook = "todo.yml"
    end

  end

end

