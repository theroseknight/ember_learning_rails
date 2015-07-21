# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Roadtrip.create(
  name: "South East Joy Ride",
  number_of_days: 14,
  hours_of_sleep: 8,
  car_year: "2012",
  car_make: "Nissan",
  car_model: "Versa",
  car_mpg: "24"
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Miami",
  starting_state:"FL",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:1,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Gainseville",
  starting_state:"FL",
  ending_city:"New Orleans",
  ending_state:"LA",
  marker_position:2,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"New Orleans",
  starting_state:"LA",
  ending_city:"Houston",
  ending_state:"TX",
  marker_position:3,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Houston",
  starting_state:"TX",
  ending_city:"Albuquerque",
  ending_state:"NM",
  marker_position:4,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Albuquerque",
  starting_state:"NM",
  ending_city:"Las Vegas",
  ending_state:"NV",
  marker_position:5,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Las Vegas",
  starting_state:"NV",
  ending_city:"Dallas",
  ending_state:"TX",
  marker_position:6,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Dallas",
  starting_state:"TX",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:7,
  home_marker: false
)
Leg.create(
  roadtrip_id: 1,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"Miami",
  ending_state:"FL",
  marker_position:8,
  home_marker: true
)
Roadtrip.create(
  name: "East Coast Joy Ride",
  number_of_days: 7,
  hours_of_sleep: 8,
  car_year: "2012",
  car_make: "Nissan",
  car_model: "Versa",
  car_mpg: "24"
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Miami",
  starting_state:"FL",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:1,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Gainseville",
  starting_state:"FL",
  ending_city:"Asheville",
  ending_state:"NC",
  marker_position:2,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Asheville",
  starting_state:"NC",
  ending_city:"Washington",
  ending_state:"DC",
  marker_position:3,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Washington",
  starting_state:"DC",
  ending_city:"New York",
  ending_state:"NY",
  marker_position:4,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"New York",
  starting_state:"NY",
  ending_city:"Nashville",
  ending_state:"TN",
  marker_position:5,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Nashville",
  starting_state:"TN",
  ending_city:"Atlanta",
  ending_state:"GA",
  marker_position:6,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Atlanta",
  starting_state:"GA",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:7,
  home_marker: false
)
Leg.create(
  roadtrip_id: 2,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"Miami",
  ending_state:"FL",
  marker_position:8,
  home_marker: true
)

Roadtrip.create(
  name: "Around the Country in 3 Weeks",
  number_of_days: 14,
  hours_of_sleep: 8,
  car_year: "2012",
  car_make: "Nissan",
  car_model: "Versa",
  car_mpg: "24"
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"Miami",
  starting_state:"FL",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:1,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"New Orleans",
  ending_state:"LA",
  marker_position:2,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"New Orleans",
  starting_state:"LA",
  ending_city:"Las Vegas",
  ending_state:"NV",
  marker_position:3,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"Las Vegas",
  starting_state:"NV",
  ending_city:"San Francisco",
  ending_state:"CA",
  marker_position:4,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"San Francisco",
  starting_state:"CA",
  ending_city:"Seattle",
  ending_state:"WA",
  marker_position:5,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"Seattle",
  starting_state:"WA",
  ending_city:"Chicago",
  ending_state:"IL",
  marker_position:6,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"Chicago",
  starting_state:"IL",
  ending_city:"New York",
  ending_state:"NY",
  marker_position:7,
  home_marker: false
)
Leg.create(
  roadtrip_id: 3,
  starting_city:"New York",
  starting_state:"NY",
  ending_city:"Miami",
  ending_state:"FL",
  marker_position:8,
  home_marker: true
)

Roadtrip.create(
  name: "Operation Golden Stein",
  number_of_days: 11,
  hours_of_sleep: 8,
  car_year: "2012",
  car_make: "Nissan",
  car_model: "Versa",
  car_mpg: "24"
)
Leg.create(
  roadtrip_id: 4,
  starting_city:"Miami",
  starting_state:"FL",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:1,
  home_marker: false
)
Leg.create(
  roadtrip_id: 4,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"Asheville",
  ending_state:"NC",
  marker_position:2,
  home_marker: false
)
Leg.create(
  roadtrip_id: 4,
  starting_city:"Asheville",
  starting_state:"NC",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:3,
  home_marker: false
)
Leg.create(
  roadtrip_id: 4,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"Miami",
  ending_state:"FL",
  marker_position:4,
  home_marker: true
)

Roadtrip.create(
  name: "Let's do it like they do on the Canadian channel",
  number_of_days: 14,
  hours_of_sleep: 8,
  car_year: "2012",
  car_make: "Nissan",
  car_model: "Versa",
  car_mpg: "24"
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Miami",
  starting_state:"FL",
  ending_city:"Asheville",
  ending_state:"NC",
  marker_position:1,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Asheville",
  starting_state:"NC",
  ending_city:"Toronto",
  ending_state:"Canada",
  marker_position:2,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Toronto",
  starting_state:"Canada",
  ending_city:"Montreal",
  ending_state:"Canada",
  marker_position:3,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Montreal",
  starting_state:"Canada",
  ending_city:"Quebec City",
  ending_state:"Canada",
  marker_position:4,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Quebec City",
  starting_state:"Canada",
  ending_city:"New York",
  ending_state:"NY",
  marker_position:5,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"New York",
  starting_state:"NY",
  ending_city:"Asheville",
  ending_state:"NC",
  marker_position:6,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Asheville",
  starting_state:"NC",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:7,
  home_marker: false
)
Leg.create(
  roadtrip_id: 5,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"Miami",
  ending_state:"FL",
  marker_position:8,
  home_marker: true
)

Roadtrip.create(
  name: "Our brother from a drunk on tequila while pregnant mother",
  number_of_days: 14,
  hours_of_sleep: 8,
  car_year: "2012",
  car_make: "Nissan",
  car_model: "Versa",
  car_mpg: "24"
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Miami",
  starting_state:"FL",
  ending_city:"Gainesville",
  ending_state:"FL",
  marker_position:1,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Gainesville",
  starting_state:"FL",
  ending_city:"Houston",
  ending_state:"TX",
  marker_position:2,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Houston",
  starting_state:"TX",
  ending_city:"Monterrey",
  ending_state:"Mexico",
  marker_position:3,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Monterrey",
  starting_state:"Mexico",
  ending_city:"Mexico City",
  ending_state:"Mexico",
  marker_position:4,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Mexico City",
  starting_state:"Mexico",
  ending_city:"Cancun",
  ending_state:"Mexico",
  marker_position:5,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Cancun",
  starting_state:"Mexico",
  ending_city:"Mexico City",
  ending_state:"Mexico",
  marker_position:6,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"Mexico City",
  starting_state:"Mexico",
  ending_city:"San Antonio",
  ending_state:"Texas",
  marker_position:7,
  home_marker: false
)
Leg.create(
  roadtrip_id: 6,
  starting_city:"San Antonio",
  starting_state:"TX",
  ending_city:"Miami",
  ending_state:"FL",
  marker_position:8,
  home_marker: true
)
