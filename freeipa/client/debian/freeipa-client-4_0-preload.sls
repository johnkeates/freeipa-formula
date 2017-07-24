freeipa-client-4_0-preload:
  pkg.installed:
    - name: freeipa-client
    - refresh: True
    - install_recommends: False
    - allow_updates: True
    - sources:
      - freeipa-client: salt://freeipa/client/debian/files/freeipa-client_4.0.5-3_amd64.deb
      - python-freeipa: salt://freeipa/client/debian/files/python-freeipa_4.0.5-3_amd64.deb

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
      - pkg: freeipa-client-4_0-preload