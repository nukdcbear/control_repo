class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDu+aoSzHIYZaK7UQYlYkL8ZyKD3S2gbv+yYJeGnPuvPSPZNBSRknfV2LdmsJiBdLjAmfvUZ4P+M2jJYkTxMkZqlp2NhqDp7C7s13kMG1XKfiEh1MzG0AUXb6C7YpKGv7BnQgGtGn9f/R3eg3I89QWbCLom2erCTB+BPd7K88NbO8UgqGLFkijlC2aJCV8HSgTZw6o4dHuouSMS8bVcn9ilLzpH6QdOGhXptrs6CfvSAeGdjWcYKInZDqQJiJPOKuto7NA8fsrXRjiuZ2UOc9u2lMzIdnOXIbEcY5DsiNgWyaHPd8VqMfcmfPn30WdAhussCFIo5ZXW7+LSKmfXIJGD',
	}  
}
