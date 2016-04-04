base:
  '*':
    {% if grains['os'] == 'CentOS' %}
    - epel
    {% endif %}
    - gcc
    - python
    - pip
