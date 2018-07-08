Deploy with:
ansible-playbook deploy.yml -i hosts

Manage server:
ssh -i {{ host }}/id_rsa minecraft@{{ host }}
