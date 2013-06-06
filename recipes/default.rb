#
# Cookbook Name:: tinyproxy
# Recipe:: default
#
# Copyright (C) 2013 La Presse
# 
# All rights reserved - Do Not Redistribute

package 'tinyproxy'

template '/etc/tinyproxy/tinyproxy.conf' do
  mode 0644
  notifies :restart, 'service[tinyproxy]'
end

service 'tinyproxy' do
  action [:start, :enable] 
end
