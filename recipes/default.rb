#
# Cookbook Name:: dani-serv
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

['_nginx', '_users', '_ssh', '_packages', '_hello_world' ].each do |recipe|
  include_recipe "dani-serv::#{recipe}"
end
