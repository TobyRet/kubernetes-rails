FROM ruby:2.5
RUN apt-get update && apt-get install -qq -y build-essential nodejs yarn libpq-dev --fix-missing --no-install-recommends
ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

COPY . .
RUN bundle install --deployment

RUN bundle exec rake DATABASE_URL=postgresql:does_not_exist assets:precompile
