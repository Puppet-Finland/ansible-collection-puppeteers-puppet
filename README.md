# Ansible Collection - puppeteers.puppet

This collection contains Ansible roles for managing Puppet servers, PuppetDB and
Puppet Agents. Additional features:

* Installation of redhat-lsb-core to get LSB facts
* Configuring firewalld

Only RHEL 9 and compatibles are supported currently.

# Roles

## puppetserver_stack

This is the main entrypoint for this collection. It installs and configures
Puppetserver, PuppetDB and Puppet Agent. Variables you might want to set are:

    puppet_puppetserver_manage_firewall: true
    puppet_puppetserver_zone_name: public

## r10k

This role installs r10k and an r10k wrapper script. It also optionally adds a
cronjob that deploys the default environment with r10k automatically. The
default parameters are:

    puppeteers_puppet_r10k_autodeploy: false
    puppeteers_puppet_r10k_autodeploy_branch: 'production'
    puppeteers_puppet_r10k_autodeploy_minute: '50'
