Vagrant.configure("2") do |config|
  config.vm.hostname = "tinyproxy-berkshelf"
  config.vm.box = "centos64-64"
  config.vm.box_url = "http://static.theroux.ca/vagrant/boxes/centos64-64.box"
  config.vm.network :private_network
  config.ssh.max_tries = 40
  config.ssh.timeout   = 120
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      "tinyproxy" => {
        "allow" => [ "127.0.0.1", "172.28.99.0/24" ]
      }
    }

    chef.run_list = [
        "recipe[minitest-handler::default]",
        "recipe[tinyproxy::default]"
    ]
  end
end
