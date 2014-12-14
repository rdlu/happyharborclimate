Happy Harbor Climate
==================

Trabalho acadêmico para cadeira de Visualização de dados

Things Needed:

* Ruby version: __MRI 2.1.5 or Rubinius 2.4.1__

* System dependencies: PostgreSQL, Rails basics

    Ubuntu:
      sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties postgresql postgresql-contrib libpq-dev

* Configuration

    Set a decent database password on database.yml

* Database creation

      sudo su - postgresql
      createuser -s -w hhc

* Services (job queues, cache servers, search engines, etc.)

      whenever --update-crontab

* Deployment instructions

      bundle install --production
