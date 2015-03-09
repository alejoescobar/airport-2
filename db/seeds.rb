# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

airlines = Airline.create([{ name: 'Avianca' }, { name: 'LAN' }])

flights = Flight.create([{ airline: Airline.first, number: 1}, 
  {airline: Airline.find_by(name: 'LAN'), number: 2}])

departures = Departure.create([{ flight: Flight.first, date: Time.now, status: 1 }, 
  { flight: Flight.find_by(number: 2), date: Time.now, status: 0 }] )

arrivals = Arrival.create([{ flight: Flight.first, date: Time.now, status: 1 }, 
  { flight: Flight.find_by(number: 2), date: Time.now, status: 0 }] )