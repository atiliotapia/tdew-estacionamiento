# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Estacionamiento.create(local: 'UPC', numero_autos: 2, capacidad_total: 10, address: 'xyz', longitude: 0, latitude: 0)
Estacionamiento.create(local: 'Los Alamos', numero_autos: 5, capacidad_total: 10, address: 'xyz', longitude: 0, latitude: 0)
Estacionamiento.create(local: 'Otro', numero_autos: 90, capacidad_total: 100, address: 'xyz', longitude: 0, latitude: 0)
