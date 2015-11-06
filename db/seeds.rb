# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Booking.destroy_all
User.destroy_all
Chicken.destroy_all

Chicken.create(name: 'Marge', description: 'Super poulette', address: 'Place Charles de Gaulle, 75008 Paris', price_per_day: '6')
Chicken.create(name: 'Lisa', description: 'Mega poulette', address: '55 Rue du Faubourg Saint-Honoré, 75008 Paris', price_per_day: '12')
Chicken.create(name: 'Maggie', description: 'Hyper poulette', address: '33 Avenue du Maine, 75015 Paris', price_per_day: '9')

