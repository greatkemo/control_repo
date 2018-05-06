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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDctLho9Qrnq6MIeoZBjaQsDTJ0BFq4G2P5j4KJDKoPz3ahdFAerSgXv7jZEtZJTYxjaQRMAN6gEXviQMPkngaGG1MPQ8s1zTUfCKG1TyUfZPkklWTXqa7FTpvBIF1oKlt5NssTFWZ48rNp5sT819EDa4EXD9keqRcRUwH5se0Wp/V4KwFG7LPHoVcDS6AFIbpzdYcEPkvpUrAyq+94+57jvOXr/lacL9jbYkzilToyKCYuHffCp6lMukE2k9R5oXpjj6GhfRtgysLqobiWQCgOQI4IGLxC79k6u4FtDrHmFyR5JOYZfBTVIxQNk13RSHaOEeosVTmFnzkss9aNZNpZ',
  }  
}
