ansible-duplicacy
=========

Ansible role that installs duplicacy and sets cron scheduled backups for as many folders as necessary.

Role Variables
--------------

```
DUPLICACY_SITES:
  # Site name
  home:
    directory: /home/user
    filters: "{{ DEFAULT_FILTERS }}"
    init_args: -e something s3://region@amazon.com/bucket/
    # Update args can be empty
    update_args: ""
    env:
      # You can put arbitrary environment variables here
      DUPLICACY_PASSWORD: something
      DUPLICACY_S3_ID: an ID
      DUPLICACY_S3_SECRET: secret
```


License
-------

MIT
