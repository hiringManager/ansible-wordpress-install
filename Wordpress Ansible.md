# Ansible playbook for wordpress

![](Pasted%20image%2020220408213302.png)

(Gem, even though this isn't Ruby)

Source -  [How To Use Ansible to Install and Set Up WordPress with LAMP on Ubuntu 18.04 | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-wordpress-with-lamp-on-ubuntu-18-04)

```bash
# Create non-root user, sudoers, etc

ufw allow OpenSSH
ufw enable
ufw status

# Clone ansible repo and modify variables needed

cd ~
git clone https://github.com/do-community/ansible-playbooks.git
cd ansible-playbooks
cd wordpress-lamp_ubuntu1804
vi vars/default.yml
```

```yaml
---
# You need to change these variables

# System Settings
php_modules: [ 'php-curl', 'php-gd', 'php-mbstring', 'php-xml', 'php-xmlrpc', 'php-soap', 'php-intl', 'php-zip' ]

#MySQL Settings
mysql_root_password: "mysql_root_password"
mysql_db: "wordpress"
mysql_user: "sammy"
mysql_password: "password"

#HTTP Settings
http_host: "your_domain"
http_conf: "your_domain.conf"
http_port: "80"

```

```bash
# example on <server 1> as user <sammy>
ansible-playbook playbook.yml -l server1 -u sammy
```
