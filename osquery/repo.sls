# Ensure the osquery repository is present. 

# This file is intended to be included by init.

{% if grains['os_family'] == 'RedHat' -%}
osquery-repo:
  pkgrepo.managed:
    - humanname: osquery
    - name: osquery
    - baseurl: https://s3.amazonaws.com/osquery-packages/centos7/$basearch/
    - gpgkey: file:///etc/pki/rpm-gpg/OSQUERY-S3-RPM-REPO-GPGKEY
    - gpgcheck: 1
    - require_in:
      - pkg: osquery-package

osquery-repo-key:
  file.managed:
    - name: /etc/pki/rpm-gpg/OSQUERY-S3-RPM-REPO-GPGKEY
    - source: salt://osquery/files/OSQUERY-S3-RPM-REPO-GPGKEY
    - owner: root
    - group: root
    - mode: 644
    - require_in:
      - pkgrepo: osquery-repo

{% elif grains['os_family'] == 'Debian' -%}
osquery-repo:
  pkgrepo.managed:
    - humanname: osquery
    - name: deb https://osquery-packages.s3.amazonaws.com/xenial xenial main
    - file: /etc/apt/sources.list.d/osquery.list
    - gpgcheck: 1
    - keyid: 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: osquery-package
{% endif %}
