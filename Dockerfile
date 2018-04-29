FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
# Workdir
WORKDIR /app

# Dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Porta
EXPOSE 80:80

# Servindo app
CMD jekyll serve --watch --incremental --port 80 --host 0.0.0.0
# CMD ["jekyll",  "serve",  "--watch", " --port",  "80", "--host", "0.0.0.0"]
# docker run -it --rm -p 80:80 -v ABSOLUTE/PATH/TO/IFPB-PRPIPG.github.io:/app kb
