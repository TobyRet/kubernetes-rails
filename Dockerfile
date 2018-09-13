FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs netcat-openbsd
RUN mkdir /myapp

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install 

COPY . /myapp
COPY docker-entrypoint.sh /usr/local/bin

EXPOSE 3000

ENTRYPOINT ["docker-entrypoint.sh"]
