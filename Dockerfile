FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
# Workdir
WORKDIR /usr/src/app

# Dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# App code
COPY . .

# Porta
EXPOSE 4000:4000
EXPOSE 80:4000

# Servindo app
CMD ["jekyll serve --watch"]
