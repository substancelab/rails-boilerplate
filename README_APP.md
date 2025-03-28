# Boilerplate

## System dependencies

* Ruby 3.1 (see `Gemfile`)
* PostgreSQL 13.x (and `libpq-dev` or equivalent)
* Node 16.x <https://nodejs.org/en/download/package-manager/>
* Yarn 1.x <https://yarnpkg.com/en/docs/install#linux-tab>

## Set up the application

1. `cp config/database.yml.example config/database.yml # edit as necessary`
2. `bin/setup`

## Configuration

The following environment variables are expected to be configured by the environment, not via .env files:

* `DOMAIN`: Domain name that the application is being served at. All requests for other domains will be redirected to this domain.
* `EAGER_LOAD`: Set this to `"true"` to force eager loading in development.
* `EMAIL_SENDER`: Email address to use as the from address when sending emails.
* `PORT`: The port Puma listens on (defaults to `3000`).
* `RAILS_ENV`: The environment to run the application in (defaults to `development`).
* `RAILS_LOG_TO_STDOUT`: Set this to anything to log to STDOUT instead of a file.
* `RAILS_MASTER_KEY`: Used to encrypt secrets in `config/secrets.yml.enc`.
* `RAILS_MAX_THREADS`: How many threads to run per process (defaults to `5`).
* `RAILS_SERVE_STATIC_FILES`: Set this to let Rails/Puma serve static files. Usually nginx or Apache fronting the application handles this, but if you're only running an application server like Puma, this needs to be set (to any value).
* `SMTP_ADDRESS`: Address/hostname of the server to send emails via.
* `SMTP_PASSWORD`: Password for sending emails.
* `SMTP_USERNAME`: Username for sending emails.

All of these can be configured locally and in different environments using `.env`-files, see [dotenv](https://github.com/bkeepers/dotenv) for details.
