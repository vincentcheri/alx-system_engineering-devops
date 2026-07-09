# create file in /tmp
# if no path attribute resource title is used as path
file { '/tmp/school':
  owner   => www-data,
  group   => www-data,
  mode    => '0744',
  content => 'I love Puppet'
  }
