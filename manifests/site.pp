node default {
}
node 'master.puppet.vm' {
  include role::master_server
}
node 'tdcos7pupm02.eastus2.cloudapp.azure.com' {
  include role::master_server
}
