## 0-use_a_private_key
- Connects to a remote host using Private key

## 1-create_ssh_key_pair
- Creates RSA key pair with with -f and -N flag(read---->$ man ssh-keygen)

## 2-ssh_config
- Configures the /etc/ssh/ssh_config

## 100-puppet_ssh_config.pp
- This a .pp file to configure the ssh_config file in /etc/ssh/ssh_config
- exec is the Resource type 'ssh_config' is the resource title
- path and command are the attributes 
