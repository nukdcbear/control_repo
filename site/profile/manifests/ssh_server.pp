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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNUii2Mz0w5qp/DTPJj0KP7eodv2UgLD4aDmiSLE4V54Xk13GsoJyQGohyAR/ik9R3EtWXSLG3uDGkdakjCgy/VfKv7q5n3aDMFBws1Tuq/RO//a41bfJ5YpgLPaNJxSj9UpbEYDgIlxBMX7FcbX2A42by67jTM6Uqujcr8XmvduJWOa2bThcmsdnKCnUTJZhGydr8DVygSE5f5jw3HOfGBRmSMvxPUOqkBeZizMznsSbR9GMz62Aqv0KjdTsPWtp62M/zDe5wE4HC1m+5CJ0KqEF4qM+cTncyuaL1UHCROkrysN7uLV+YPiNxmRKuaaWBwvqkXf4cXy2+EqlovJSZ',
	}  
}
