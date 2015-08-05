include_recipe 'apt'

apt_repository "git-core" do
  uri "http://ppa.launchpad.net/git-core/ppa/ubuntu"
  distribution "precise"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "E1DF1F24"
  action :add
end

%w{ git nodejs make zip unzip vim-gnome }.each do |lib|
  package lib
end
