FROM saltstack/ubuntu-14.04
COPY salt/minion.yml /etc/salt/minion
COPY salt/roots  /srv/salt
RUN curl -L https://bootstrap.saltstack.com -o install_salt.sh
RUN sudo sh install_salt.sh; exit 0


RUN salt-call --config-dir=/etc/salt --local state.apply
