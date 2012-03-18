Vagrant::Config.run do |config|
  config.vm.box = "lucid32"

  config.vm.define :ctf do |config|
    config.vm.host_name = "ctf.local"
  end

  puppet_options = {
    :options => ['--user vagrant', '--group vagrant']
  }
  config.vm.provision :puppet, puppet_options do |puppet|
    puppet.manifests_path = "puppet"
    puppet.manifest_file = "site.pp"
    puppet.module_path = "puppet/modules"
  end

end
