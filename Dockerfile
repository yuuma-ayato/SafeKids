FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client && rm -rf /var/lib/apt/lists/*

WORKDIR /SafeKids

ADD Gemfile /SafeKids/Gemfile
ADD Gemfile.lock /SafeKids/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /SafeKids
