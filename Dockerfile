FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install deploy_couch --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deploy_couch"]
CMD ["--help"]
