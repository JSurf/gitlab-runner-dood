FROM gitlab/gitlab-runner
RUN curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 && chmod +x docker-1.9.1 && mv docker-1.9.1 /usr/bin/docker
