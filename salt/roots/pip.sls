#numpy:
#  pip.installed:
#    - name: numpy
#    - require:
#      - pkg: python-pip

#scipy:
#  pip.installed
#    - name: scipy
#    - require:
#      - pkg: python-pip

#scikit-learn:
#  pip.installed
#    - name: scikit-learn
#    - require:
#      - pkg: python-pip
#      - pip: scipy

pip:
  {% if grains['os'] == 'CentOS' %}
  pip.installed:
    - names:
      - scikit-learn
      - numpy
      - scipy
  {% elif grains['os'] == 'Ubuntu' %}
  cmd.run: 
    - name: 'pip install numpy scipy scikit-learn'
  {% endif %}
