#
# Cookbook Name:: tinyproxy
# Recipe:: default
#
# Copyright (C) 2013 La Presse
# Copyright (C) 2014 sekia
# 
# All rights reserved - Do Not Redistribute

package 'tinyproxy'

template '/etc/tinyproxy/tinyproxy.conf' do
  mode 0644
  notifies :restart, 'service[tinyproxy]'
end

service 'tinyproxy' do
  action [:start, :enable]
  supports status: true, start: true, stop: true, restart: true, reload: true
end
