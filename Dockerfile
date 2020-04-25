FROM ruby:2.6.4-stretch AS baseImage
LABEL Author="Joseph Kyalo" Email="jmutuku95@gmail.com"

ARG USER=docker
ARG MASTER_KEY
ARG RAILS_ENV=production

ENV RAILS_ENV=$RAILS_ENV
ENV RAILS_MASTER_KEY=$MASTER_KEY

# The following operations need to be executed as root
USER root

# We install the javascript environment needed by rails
RUN apt-get update 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs \
    apt-utils

RUN useradd -ms /bin/bash ${USER}

RUN gem install bundler -v '1.17.3'

FROM baseImage
# Copy app's source code to the /app directory
COPY . /app

RUN chown -R ${USER}:${USER} /app /home/${USER}

# Change the effective UID from 'root'
# Never run application code as 'root'!
USER ${USER}

# The application's directory will be the working directory
WORKDIR /app

# Install the application dependencies defined in the Gemfile
RUN bundle install --without development test