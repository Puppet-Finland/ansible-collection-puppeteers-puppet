class { 'puppetdb':
  listen_address   => '0.0.0.0',
  manage_firewall  => false,
  postgres_version => '15',
}
