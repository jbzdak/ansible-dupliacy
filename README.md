Role Name
=========

Simple role that installs duplicacy and installs backups in CRON as many folders as necessary.

Role Variables
--------------

```
DUPLICACY_SITES:
  # Site name
  home:
    directory: /home/user
    ignore_filters: "{{ DEFAULT_IGNORE_FILTERS }}"
    init_commandline_args: -e something s3://region@amazon.com/bucket/
    # Update args can be empty
    update_commandline_args: ""
    duplicacy_env_args:
      # You can put arbitrary enviornment variables here
      DUPLICACY_PASSWORD: something
      DUPLICACY_S3_ID: an ID
      DUPLICACY_S3_SECRET: secret
```


License
-------

MIT
