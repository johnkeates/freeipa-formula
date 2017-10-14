freeipa-client-4_4_4_3-preload:
  pkg.installed:
    - refresh: True
    - install_recommends: False
    - allow_updates: True
    - sources:
      - freeipa-common: salt://freeipa/client/debian/files/freeipa-common_4.4.4-3_all.deb
      - python-ipalib: salt://freeipa/client/debian/files/python-ipalib_4.4.4-3_all.deb
      - python-ipaclient: salt://freeipa/client/debian/files/python-ipaclient_4.4.4-3_all.deb
      - freeipa-client: salt://freeipa/client/debian/files/freeipa-client_4.4.4-3_amd64.deb

freeipa-nfs-homes-deps:
  pkg.installed:
    - pkgs:
      - nfs-common
      - nfs4-acl-tools
      - autofs

freeipa-dependency-installation:
  cmd.run:
    - name: apt-get -yf install
    - onfail:
      - pkg: freeipa-client-4_4_4_3-preload