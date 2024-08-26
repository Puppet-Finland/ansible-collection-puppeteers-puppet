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

* puppeteers_puppet_r10k_autodeploy: false
* puppeteers_puppet_r10k_autodeploy_branch: 'production'
* puppeteers_puppet_r10k_autodeploy_minute: '50'

The role assumes that you'll use Git over SSH to clone your Puppet control
repository. The parameters you need to define are:

* *puppeteers_puppet_r10k_repo_url*: URL of your Puppet control repository
* *puppeteers_puppet_r10k_repo_host*: Hostname of the Git provider which hosts your Puppet control repository
* *puppeteers_puppet_r10k_repo_user*: Git/SSH user to clone the control repository as
* *puppeteers_puppet_r10k_ssh_private_key*: SSH private key to user for cloning the control repository
* *puppeteers_puppet_r10k_ssh_known_hosts*: a list of SSH known_hosts entries for your Git provider

When properly configured the role does everything needed to make r10k work
against your Puppet control repository.
