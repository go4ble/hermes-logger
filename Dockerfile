FROM ruby:2.7.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN gem install bundler && \
        bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000
