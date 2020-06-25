#!/usr/bin/python3
import json
import requests
from string import Template

uri = "https://api.vultr.com/v1/plans/list"

plans = json.loads(requests.get(uri).content)

types_map = {'SSD': 'vc2', 'HIGHFREQUENCY': 'vhf', 'DEDICATED': 'vdc'}
description_map = {
    'SSD': 'Vultr Cloud Compute (VC2)',
    'HIGHFREQUENCY': 'Vultr High Frequency (VHF)',
    'DEDICATED': 'Vultr Dedicated Cloud (VDC)'
}
template = Template('output "$name" {\n    description = "$desc"\n    value = $id\n}\n')

for id in plans:
    type = plans[id]['plan_type']
    description = plans[id]['name']
    prefix = types_map[type]
    desc_type = description_map[type]
    desc_text = f'{desc_type}: {description}'
    cpus = plans[id]['vcpu_count']
    ram = int(int(plans[id]['ram']) / 1024)
    terraid = f'{prefix}-{cpus}vcpu-{ram}gb'
    print(template.substitute(name=terraid, desc=desc_text, id=id))
