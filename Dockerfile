FROM ruby:2.5.3

LABEL Name=chestmasters Version=0.0.1
EXPOSE 3000

# Installation of dependencies
RUN apt-get -y update && \
      apt-get install --fix-missing --no-install-recommends -qq -y \
        build-essential \
        wget gnupg \
        git-all \
        dos2unix \
        postgresql-client libpq5 libpq-dev -y && \
      wget -qO- https://deb.nodesource.com/setup_9.x  | bash - && \
      apt-get install -y nodejs && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem update --system
RUN gem install bundler

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app
COPY . /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . /app

EXPOSE 3000

ENTRYPOINT ["bin/docker-entrypoint.sh"]

CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"]
