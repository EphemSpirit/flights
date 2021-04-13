Flight.destroy_all

airports = ["SFO", "LAX", "BOS", "LGA", "JFK", "RLA", "DFW"]

airports.each do |airport|
  Airport.create(code: airport)
end

# 100.times do
#   Flight.create!(from_airport: Airport.all.sample,
#                 to_airport: Airport.all.sample,
#                 departure: (rand(1..30).days.from_now),
#                 duration: rand(60..500).to_s)
# end

Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 5.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 3.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 10.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 12.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 14.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 20.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 30.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 15.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 25.days.from_now, duration: "120")
Flight.create!(from_airport: Airport.all.sample, to_airport: Airport.all.sample, departure: 35.days.from_now, duration: "120")
