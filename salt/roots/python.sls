python-pkgs:
  pkg:
    - installed
    - names:
      - python
      {% if grains['os'] == 'CentOS' %}
      - python-devel
      {% elif grains['os'] == 'Ubuntu' %}
      - python-dev
      {% endif %}
      - python-pip
      - python-virtualenv
