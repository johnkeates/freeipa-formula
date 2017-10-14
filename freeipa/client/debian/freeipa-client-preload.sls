{% if grains['oscodename'] == 'stretch' %}
include:
  - .freeipa-client-4_4_4_3-preload
  - .freeipa-sssd-15-fixup
  - .freeipa-nsswitch-fixup
{% endif %}

{% if grains['oscodename'] == 'jessie' %}
include:
  - .freeipa-client-4_0-preload
{% endif %}