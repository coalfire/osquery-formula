# Ensure the osquery service is running,
# and restart if the package or configuration changes

# This file is intended to be included by init.

osquery-service:
  service.running:
    - name: osqueryd
    - enable: True
    - reload: True
    - watch:
      - file: osquery-config
      - pkg: osquery-package
