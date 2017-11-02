FROM ruby:2.3.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install -j 20

EXPOSE 3000

COPY . .

ENV GOOGLE_MAPS_JAVASCRIPT_API_KEY="" \
    RAILS_ENV=production \
    RACK_ENV=production \
    RAILS_SERVE_STATIC_FILES=true \
    PORT=3000

CMD [ "bundle", "exec", "rails", "server", "-p", "$PORT", "-b", "0.0.0.0" ]

