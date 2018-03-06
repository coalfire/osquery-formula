osquery
=======

SaltStack formula for installing and configuring
[osquery](https://osquery.io/)

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Supported Operating Systems
===========================

* rpm-based distros
* deb-based distros

Available states
================

.. contents::
    :local:

``osquery``
------------------

Includes:

* ``osquery.repo``
* ``osquery.installed``
* ``osquery.config``
* ``osquery.service``

``osquery.repo``
----------------------------

Configures the osquery package repository.

``osquery.installed``
----------------------------

Installs osquery.

``osquery.config``
----------------------------

Provides the configuration file ``/etc/osquery/osquery.conf`` defined in [pillar](pillar.example).

``osquery.service``
----------------------------

Enables and runs the ``osquery`` service.

