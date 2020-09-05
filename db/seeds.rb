airports = ["SFO", "LAX", "BOS", "LGA", "JFK", "RLA", "DFW"]

airports.each do |airport|
  Airport.create(code: airport)
end


Flight.create(from_airport: Airport.all.first, to_airport: Airport.all.last, departure: 5.days.from_now, duration: "120")
Flight.create(from_airport: Airport.all[1], to_airport: Airport.all.last, departure: 10.days.from_now, duration: "90")
Flight.create(from_airport: Airport.all[4], to_airport: Airport.all[5], departure: 6.days.from_now, duration: "65")
Flight.create(from_airport: Airport.all[6], to_airport: Airport.all[2], departure: 3.days.from_now, duration: "98")
Flight.create(from_airport: Airport.all[2], to_airport: Airport.all[1], departure: 2.days.from_now, duration: "100")
Flight.create(from_airport: Airport.all[5], to_airport: Airport.all[4], departure: 20.days.from_now, duration: "103")
Flight.create(from_airport: Airport.all[0], to_airport: Airport.all[3], departure: 15.days.from_now, duration: "43")
Flight.create(from_airport: Airport.all[3], to_airport: Airport.all.last, departure: 12.days.from_now, duration: "62")
Flight.create(from_airport: Airport.all.first, to_airport: Airport.all.last, departure: 30.days.from_now, duration: "120")
Flight.create(from_airport: Airport.all.first, to_airport: Airport.all[3], departure: 2.days.from_now, duration: "120")
