
# Update apt w/ new source (is there a better way to do this?)
execute "apt-update" do
  command "apt-get update"
  user 'root'
  action :nothing
end

execute "add apt keys" do
  command "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10"
  user 'root'
  action :nothing
  notifies :run, resources(:execute => "apt-update"), :immediately
end

# need alternate source for mongo
template "/etc/apt/sources.list.d/mongodb.list" do
  source "mongodb.list.erb"
  owner "root"
  group "root"
  mode 0755
  notifies :run, resources(:execute => "add apt keys"), :immediately
end

package "mongodb-stable"
