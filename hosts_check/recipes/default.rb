#
# Cookbook Name:: hosts_check
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

h = { "example.com" => "192.168.0.123", "example1.com" => "192.168.0.124", "example2.com" => "192.168.0.125" }

h.each do |k,v|
  hostsfile_entry v do
    hostname k
    action :create
  end
end



