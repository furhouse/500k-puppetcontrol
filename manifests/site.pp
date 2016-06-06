node default { 
  hiera_include('classes')
}

node /^chief\.500k\.lan$/ {
  class { 'backuppc::client':
    rsync_share_name => ['/etc'],
  }
}
