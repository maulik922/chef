#
# Cookbook:: test-cookbook
# Recipe:: recipe1
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute "run a script" do
command <<-EOH
yum remove tree -y
EOH
end

package 'tree' do
action :install
end

file '/myfile2' do
content 'This is My Second Project code'
action :create
owner 'root'
group 'root'
end
