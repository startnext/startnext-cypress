FROM cypress/included:6.4.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN npm i cypress-file-upload \
					cypress-iframe \
					cypress-mochawesome-reporter \
					cypress-social-logins \
					cypress-visual-regression \
					mocha \
					mochawesome \
					mochawesome-report-generator

# From here on, this file describes the environment in which the GitLab runner executes
# the “start-containers.sh” script from the “startnext-web” repo.
#
# This image is not for Docker in Docker, but rather Docker socket binding.
# See https://docs.gitlab.com/ee/ci/docker/using_docker_build.html#use-docker-socket-binding

# Install Python for fill_with_jinja.py
RUN apt-get update -q && apt-get install python3-jinja2 python3-yaml sudo -yq

# Install Docker Engine
RUN apt-get install \
		 apt-transport-https \
		 ca-certificates \
		 curl \
		 gnupg \
		 gnupg-agent \
		 lsb-release \
		 software-properties-common -y && \
	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
	echo \
	  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
	  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && \
	apt-get update && \
	apt-get install docker-ce docker-ce-cli containerd.io -y

# Install Docker-Compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.28.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
	chmod +x /usr/local/bin/docker-compose

# Install yq for parsing YAML files
RUN curl -LsS https://github.com/mikefarah/yq/releases/download/v4.4.1/yq_linux_amd64 -o /usr/bin/yq &&\
	chmod +x /usr/bin/yq
