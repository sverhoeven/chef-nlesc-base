name             'nlesc-base'
maintainer       'Netherlands eScience Center'
maintainer_email 'info@esciencecenter.nl'
license          'Apache 2.0'
description      'Installs/Configures nlesc-base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

depends "openssh"
depends "ntp"
depends "java"
depends "git"
