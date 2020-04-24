#
# Cookbook:: localhost
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

hostname 'localhost' do
    hostname        "#{node['localhost']['hostname']}"
    windows_reboot  false 
    action          'set'
end

node['localhost']['packages'].each do | package |
    chocolatey_package package do
        action  :install
        options '--ignore-checksum'
    end 
end

node['localhost']['features'].each do | feature |
    windows_feature feature do
        action :install
      end
end
