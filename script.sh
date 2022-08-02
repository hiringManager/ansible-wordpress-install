# Create non-root user, sudoers, etc

ufw allow OpenSSH
ufw enable
ufw status

# Clone ansible repo and modify variables needed

sudo apt update ;
sudo apt install python3 git neovim ansible ;

cd ~
git clone https://github.com/do-community/ansible-playbooks.git
cd ansible-playbooks
cd wordpress-lamp_ubuntu1804
vi vars/default.yml

# example on <server 1> as user <sammy>
# ansible-playbook playbook.yml -l server1 -u sammy
