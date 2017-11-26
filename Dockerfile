FROM circleci/node:8.9.0

RUN sudo apt-get update -y \
	&& sudo apt-get install -y python-dev python-pip \
	&& pip install awscli --upgrade --user