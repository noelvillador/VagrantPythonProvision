# MLProvisionMachine 

  ## Using Vagrant  

   1. install Vagrant
   
   2. install vagrant salt plugin `vagrant plugin install vagrant-vbguest vagrant-salt`
       
   3. execute export variable to use virtualbox:
   	    `echo "export VAGRANT_DEFAULT_PROVIDER=virtualbox" >> ~/.bashrc`
   4. execute path to update bootstrap `curl -L https://raw.githubusercontent.com/saltstack/salt-bootstrap/stable/bootstrap-salt.sh -o \
   	    ~/.vagrant.d/gems/gems/vagrant-salt-0.4.0/scripts/bootstrap-salt.sh`
   	    
   5. Edit Vagrantfle
        5a. To use centOS 7
            - Uncomment config.vm.box = "centos/7"
            - commnet config.vm.box = "hashicorp/precise64"
        5b. To use Ubuntu
            - Comment config.vm.box = "centos/7"
            - Uncomment config.vm.box = "hashicorp/precise64"
            
   6. Start vagrant `vagrant up`
   
   7. ssh to vagrant `vagrant ssh`
   

  ## Using Docker
   
   1. install docker
   
   2. provision docker `sudo docker build -t ubuntu .` 
   
  ## Using Salt (local machine)
   
   1. install salt `curl -L https://bootstrap.saltstack.com -o install_salt.sh ; sudo sh install_salt.sh`
    
   2. Copy config file `cp salt/minion.yml /etc/salt/minion`
   
   3. Copy salt directory `cp salt/roots /srv/salt`

   4. execute salt command `salt-call --config-dir=/etc/salt --local state.apply`
