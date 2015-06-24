class puppetclean {
  file { '/usr/local/bin/puppet-report-stalker':
    source => template('puppetclean/puppet-report-stalker.erb')
    before => Cron['clean reports'],
    mode   => 700,
    owner  => 'root',
    group  => 'root',
  }
  cron { 'clean reports':
    command => '/usr/local/bin/puppet-report-stalker',
    user    => 'root',
    hour    => 4,
    minute  => 2,
    weekday => 1,
  }
}
