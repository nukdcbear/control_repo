node default {
}
node 'master.puppet.vm' {
  include role::master_server
}
node 'minetest.puppet.vm' {
  include role::minecraft_server
}
node 'tdcos7pupm02.eastus2.cloudapp.azure.com' {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => "Welcome to ${fqdn}\n",
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
