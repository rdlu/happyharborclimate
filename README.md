Happy Harbor Climate
==================

Trabalho acadêmico para cadeira de Visualização de dados

Online em: http://hhc.rodrigodk.com.br

Disclaimer:
Essa não é uma ferramenta para validação dos dados. A fonte de dados frequentemente falha, e a manipulação dos dados que eu fiz foi feita sem qualquer pesquisa nessa área de meteorologia. Ela é um demonstrador de tecnologia somente.

O código fonte está longe do ideal dos bons padrões de software, pois foi feita somente com intuito de prototipação.

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
