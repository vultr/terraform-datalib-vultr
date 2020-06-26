#!/usr/bin/python3
"""Vultr Terraform plans generator

This script generates a list of plans of all the Vultr VM for use with terraform.

The script does not accept any arguments, and will simply output the result to stdout.

Each entry should conform to the following example format;

output "vdc-4vcpu-16gb" {
    description = "Vultr Dedicated Cloud (VDC): 16384 MB RAM,2x110 GB SSD,20.00 TB BW"
    value = 116
}
"""

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
    terraid = f'{prefix}_{cpus}vcpu_{ram}gb'
    print(template.substitute(name=terraid, desc=desc_text, id=id))
