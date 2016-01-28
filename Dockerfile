FROM gitlab/gitlab-runner
#
# Give sudo privileges to jenkins
#
RUN echo "jenkins ALL=NOPASSWD: /bin/docker.io" >> /etc/sudoers

#
# The sudo workaround
#
RUN curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 && chmod +x docker-1.9.1 && mv docker-1.9.1 /bin/docker.io
COPY docker.sh /usr/bin/docker
RUN chmod +x /usr/bin/docker
