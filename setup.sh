#! /bin/bash
echo "This script sets up our SELinux workshop …"
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
ansible-playbook -i inventory main.yml
mkdir -p /home/student/src
cd /home/student/src
git clone https://github.com/parmstro/selinuxlab.git
cp /home/student/selinux-workshop/inventory /home/student/src/selinuxlab/
cd /home/student/src/selinuxlab/
ansible-playbook -i inventory setup-testapp.yml
