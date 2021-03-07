

airports = ["SFO", "LAX", "BOS", "LGA", "JFK", "RLA", "DFW"]

airports.each do |airport|
  Airport.create(code: airport)
end

100.times do
  Flight.create!(from_airport: Airport.all.sample,
                to_airport: Airport.all.sample,
                departure: (rand(1..30).days.from_now),
                duration: rand(60..500).to_s)
end
