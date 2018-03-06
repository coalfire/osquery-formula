# Ensure the osquery package is installed

# This file is intended to be included by init.

osquery-package:
  pkg.installed:
    - name: osquery
