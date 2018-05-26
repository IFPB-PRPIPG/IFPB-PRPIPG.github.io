FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
# Workdir
WORKDIR /app

# Dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Port
EXPOSE 4000:4000

# Servin the app
CMD jekyll serve --watch --incremental --port 4000 --host 0.0.0.0
# docker run -it --rm -p 4000:4000 -v ${PWD}:/app bc
