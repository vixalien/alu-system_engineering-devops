#!/usr/bin/env bash
#Puppet script that set up a client SSH configuration file for connecting to a server without typing a password.

file_line {'Turn off passwd auth':
path => '/etc/ssh/ssh_config',
line => '	IdentityFile ~/.ssh/school',
}

file_line {'Declare identity file':
path => '/etc/ssh/ssh_config',
line => '	PasswordAuthentication no',
}
