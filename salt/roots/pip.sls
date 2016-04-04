numpy:
  pip.installed:
    - name:
      - numpy

scipy:
  pip.installed:
    - name:
      - scikit-learn
      - requre:
      - pkg: scipy
