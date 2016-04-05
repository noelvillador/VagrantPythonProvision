# VagrantPythonProvision

Vagrant
echo "export VAGRANT_DEFAULT_PROVIDER=virtualbox" >> ~/.bashrc
https://raw.githubusercontent.com/saltstack/salt-bootstrap/stable/bootstrap-salt.sh

Docker
sudo docker 

Salt
cp salt/minion.yml /etc/salt/minion
cp salt/roots /srv/salt
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh
salt-call --config-dir=/etc/salt --local state.apply
