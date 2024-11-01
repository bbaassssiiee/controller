# Ansible Controller with SemaphoreUI in docker-compose and PostgreSQL + NGinx SSL

`vagrant up` will create a dev machine named 'controller', add it to your /etc/hosts.

Use this project with your own inventory, or use 'local' for localhost playbook provision.yml.
Don't forget to `export DB_PASS=database_password`

Self-signed certs for now.
