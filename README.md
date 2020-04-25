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

## HELM

The goal here is to create a helm chart for this app.

TBC..

## Authors

- Mutuku Kyalo
