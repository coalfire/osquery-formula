# Ensure the osquery service is running,
# and restart if the package or configuration changes

# This file is intended to be included by init.

osquery-service:
  service.running:
    - name: osquery
    - enable: True
    - reload: True
    - watch:
      - file: osquery-config
      - pkg: osquery-package
