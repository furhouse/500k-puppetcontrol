node default {
  hiera_include('classes')
  hiera_resources('hiera_create_types', {})
}

node /^chief\.500k\.lan$/ {
  class { 'backuppc::client':
    backuppc_hostname    => 'backuppc.500k.lan',
    rsync_share_name     => ['/'],
    backup_files_exclude => {
      '/'=>
        [
        '/home',
        '/proc',
        '/dev',
        '/sys',
        '/run',
        '/mnt',
        '/opt',
        '/export',
        '/data',
        ]
    },
  }
}
