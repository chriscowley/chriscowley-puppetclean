class puppetclean {
  file { '/usr/local/bin/puppet-reports-staker':
    source => 'puppet://modules/puppetclean/puppet-report-stalker',
    before => Cron['clean reports'],
    mode   => 700,
    owner  => 'root',
    group  => 'root',
  }
  cron { 'clean reports':
    command => '/usr/local/bin/puppet-reports-staker',
    user    => 'root',
    hour    => 4,
    minute  => 2,
    weekday => 1,
  }
}
