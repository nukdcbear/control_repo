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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/bRXi8HiJPmFaum/atkDN05JUYIdSM1Hd87gSi7mg/ty/Lo+jQhkQJkiSjeW4X5bzPC8NUdDGXZV9Z89j56bWVwMaJ/aAxoej2ZVqW//WFg433nzG6jeXDUYOg7M/2T5qufDcVsl9kFe/BDr+KGVwmfOFsKScmwLiqKn1YWywxSlqJ9e0Lzt8dnTEh0yWZFjBfZeDjTXMYSHY6Qb3dNOIfzTOlBf6Q10R5GPS54UgkjBCdjDCvvXfLb4crRjyWYFcGH8KoPYbvytCY3cEZUAu7bYeST0rwy3o0xPFUbnL6qIzo4f6+hZ3YkKy3bQQFpF0tDbS+EanUBvT3QSQyMBb',
	}  
}
