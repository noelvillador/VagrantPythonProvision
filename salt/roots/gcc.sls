gcc-pkgs:
  pkg:
    - installed
    - names: 
      {% if grains['os'] == 'CentOS' %}
      - gcc-c++
      - gcc
      {% elif grains['os'] == 'Ubuntu' %}
      - gcc
      - g++
      {% endif %}

blas-pkgs:
  pkg:
    - installed
    - names:
      {% if grains['os'] == 'CentOS' %}
      - blas-devel
      - lapack-devel
      {% elif grains['os'] == 'Ubuntu' %}
      - libblas-dev
      - liblapack-dev
      - libatlas-base-dev
      - gfortran
      {% endif %}
