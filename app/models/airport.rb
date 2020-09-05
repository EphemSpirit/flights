class Airport < ApplicationRecord
  has_many :arriving_flights, class_name: "Flight", foreign_key: "finish"
  has_many :departing_flights, class_name: "Flight", foreign_key: "start"
end
