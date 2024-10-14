From ruby:2.5
RUN apt-get update && apt-get install -y \
build-essential \
libpq-dev \
nodejs \
postgresql-client \
yarn \
git
RUN gem update --system 3.2.3
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install