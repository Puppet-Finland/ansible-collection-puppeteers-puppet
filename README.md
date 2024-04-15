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
