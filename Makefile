test:
	podman run  -ti -d  --hostname gitlab.valleybee.home  -p 443:443 -p 8929:80 -p 2224:22  --name gitlab-arm \
   -v /home/ubuntu/my_projects/devops/gitlab/config:/etc/gitlab:Z  \
   -v /home/ubuntu/my_projects/devops/gitlab/logs:/var/log/gitlab:Z \
   -v /home/ubuntu/my_projects/devops/gitlab/data:/var/opt/gitlab:Z \
   localhost/valley/gitlab:v1
run:
	podman run -ti --rm -v /logs:/etc/gitlab:Z --name gitlab localhost/valley/gitlab:v1

### --shm-size 256m \

###Docker.io/ulm0/gitlab:latest

