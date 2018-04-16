FROM ruby:2.5.1

RUN apt-get update && apt-get install -qq -y \
  shellcheck

WORKDIR /usr/src/app/

COPY Gemfile* /usr/src/app/
COPY scripts/install_dependencies.sh /usr/src/app/scripts/
RUN scripts/install_dependencies.sh

COPY . /usr/src/app/
