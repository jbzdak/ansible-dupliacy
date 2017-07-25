#!/usr/bin/env bash

cd {{ site.directory }}

{% for name, value in site.duplicacy_env_args.items() %}
export {{ name|trim }}='{{ value|trim }}'
{% endfor %}

{{ duplicacy_command }}
