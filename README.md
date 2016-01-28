# gitlab-runner-dood
Docker-on-Docker gitlab runner.

Useful to execute docker images from gitlab ci whitout using the docker-in-docker approach

Inspired by "Do not use docker in docker for ci":
https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/

For documentation on gitlab runners, see:
https://hub.docker.com/r/gitlab/gitlab-runner/

Usage:
```
   docker run -d  -v /var/run/docker.sock:/var/run/docker.sock jsurf/gitlab-runner-dood
```

Configuration:

Example :gitlab-ci.yml configuration:
```
   before_script:
      - docker info
   build_image:
      script:
         - docker build -t someimage .
         - docker push someimage
```
