# README

## INTRO

This is a demonstration of use of Helm in the deployment of Rails Apps.

## SETUP

Ensure you have Ruby-2.6.4,  Rails 6.0.2 and PostgresQL Server installed.

  01. Clone this Repo and `cd` to the project folder.

  ```bash
    $ git clone https://github.com/thoth-ky/railsapp-helm-deployment.git
  ```

  ```bash
  $ cd railsapp-helm-deployment
  ```

  2. Install all dependencies.

  ```bash
    $ bundle install
  ```

  3. Copy `.env.template` as `.env` and edit the values to correspond to your local settings.

  ```bash
    $ cp .env.template .env
  ```

  4. Create the database and run migrations.

  ```bash
    $ rails db:create
  ```

  ```bash
    $ rails db:migrate
  ```

  5. Start the server.

  ```bash
    $ rails s
  ```

## Dockerize

To build an image of this project excute the following command.
 ```bash
  $ docker build -f Dockerfile -t rails-helm .
 ```

Proceed to tag the image and push it.
```bash
$ docker tag rails-helm <USERNAME>/rails-helm:1.0.0
$ docker push <USERNAME>/rails-helm:1.0.0
```

## HELM

The goal here is to create a helm chart for this app.
- Point Image to Your dockerfile

TBC..

## Authors

- Mutuku Kyalo
