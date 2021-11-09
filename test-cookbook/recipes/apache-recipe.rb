#
# Cookbook:: test-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do
action :install
end 

file '/var/www/html/index.html' do
content 'Welcome to Devops seris'
action :create
end


service 'httpd' do
action [:enable, :start]
end
