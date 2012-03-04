Vagrant::Config.run do |config|
  config.vm.box = "lucid32"

  puppet_options = {
    :module_path => "modules",
    :options => ['--user vagrant', '--group vagrant']
  }
  config.vm.provision :puppet, puppet_options do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "site.pp"
  end

  config.vm.define :ctf do |config|
    config.vm.host_name = "ctf.local"
  end

end
