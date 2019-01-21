ansible-duplicacy
=========

Ansible role that installs duplicacy and sets cron scheduled backups for as many folders as necessary.

Role Variables
--------------

```
DUPLICACY_STORAGE:
  s3:
    url: s3://ap-southeast-1@s3-ap-southeast-1.amazonaws.com/my-duplicacy-bucket
    env:
      # https://forum.duplicacy.com/t/passwords-credentials-and-environment-variables/1094
      DUPLICACY_PASSWORD: p4ssw0rd
      DUPLICACY_S3_ID: aws_key
      DUPLICACY_S3_SECRET: aws_secret
    init_args: "-e p4ssw0rd"

# You can have a default in your roll_vars and override it on specific hosts in host_vars
DUPLICACY_FILTERS: |
  -Virtualbox*/
  -.android/
  -Downloads/
  -Android/
  -.cache/
  -vagrant*/
  -.PyCharm*/
  -.gradle/
  -.Android*/
  -.Idea*/
  -.m2*/
  +*
````

Host Variables
--------------

````
# Specific snapshot ID's to create and maintain - these should be in your host_vars
 DUPLICACY_SNAPSHOT:
   myhomedir:
     directory: /home/me
     filters: "{{ DUPLICACY_FILTERS }}"
     # Backup args can be empty
     backup_args: ""
     storage: s3
     env:
       # You can put arbitrary environment variables here but not required if
       # you've defined storage above
     backup_cron:
       minute: "5"
       hour: "*/3"
     prune_args: "-keep 0:360 -keep 30:180 -keep 7:30 -keep 1:7"
     prune_cron:
       minute: "0"
       hour: "4"
```

License
-------

MIT
