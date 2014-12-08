# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Station.create([
  {name: 'Metroclima: Menino Deus',
    lat: -30.06109619,
    lon: -51.22273633,
    apitype: 'MetroclimaPOA',
    apiparams: {id:3},
    provides: {dewpoint: 'celsius',  pressure: 'hpa', windspeed: 'm/s', humidity: '%', temperature: 'celsius'}
  },
  {name: 'Metroclima: Lomba do Pinheiro',
    lat: -30.12022812,
    lon: -51.08595404,
    apitype: 'MetroclimaPOA',
    apiparams: {id:4},
    provides: {dewpoint: 'celsius', pressure: 'hpa', windspeed: 'm/s', humidity: '%', temperature: 'celsius', precipitation: 'mm'}
  },
  {name: 'Metroclima: São João',
    lat: -30.00150359,
    lon: -51.17241212,
    apitype: 'MetroclimaPOA',
    apiparams: {id:1},
    provides: {dewpoint: 'celsius', pressure: 'hpa', windspeed: 'm/s', humidity: '%', temperature: 'celsius', precipitation: 'mm'}
  },
  {name: 'Metroclima: Moinhos de Vento',
    lat: -30.02477204,
    lon: -51.20667812,
    apitype: 'MetroclimaPOA',
    apiparams: {id:2},
    provides: {dewpoint: 'celsius', windspeed: 'm/s', humidity: '%', temperature: 'celsius', precipitation: 'mm'}
  }
  ])
