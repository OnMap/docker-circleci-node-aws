FROM circleci/node:8.9.0

USER root

RUN apt-get update && \
    apt-get install -y python-pip python-dev jq expect && \
    pip install awscli


# Override the installed jq with newer version 1.5 (https://stackoverflow.com/questions/36462955/upgrading-jq-to-1-5-on-ubuntu)
RUN wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && \
    chmod +x jq-linux64 && \
    mv jq-linux64 $(which jq)

USER circleci
