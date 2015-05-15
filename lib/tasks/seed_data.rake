task :create_test_data=>:environment do
  Vacation.create(
    name: "South East Joy Ride"
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Miami",
    starting_state:"FL",
    ending_city:"Gainesville",
    ending_state:"FL",
    starting_lat: "25.7753",
    starting_lng: "-80.2089",
    ending_lat: "29.6520",
    ending_lng: "-82.3250",
    marker_position:1,
    home_marker: true
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Gainseville",
    starting_state:"FL",
    ending_city:"New Orleans",
    ending_state:"LA",
    starting_lat:"29.6520",
    starting_lng:"-82.3250",
    ending_lat:"29.9500",
    ending_lng:"-90.0667",
    marker_position:2,
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"New Orleans",
    starting_state:"LA",
    ending_city:"Houston",
    ending_state:"TX",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat:"29.7604",
    ending_lng:"-95.3698",
    marker_position:3,
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Houston",
    starting_state:"TX",
    ending_city:"Albuquerque",
    ending_state:"NM",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat:"35.1107",
    ending_lng:"-106.6100",
    marker_position:4,
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Albuquerque",
    starting_state:"NM",
    ending_city:"Las Vegas",
    ending_state:"NV",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat:"36.1215",
    ending_lng:"-115.1739",
    marker_position:5,
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Las Vegas",
    starting_state:"NV",
    ending_city:"Dallas",
    ending_state:"TX",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat:"32.7767",
    ending_lng:"-96.7970",
    marker_position:6,
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Dallas",
    starting_state:"TX",
    ending_city:"Gainesville",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "29.6520",
    ending_lng: "-82.3250",
    marker_position:7,
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Gainesville",
    starting_state:"FL",
    ending_city:"Miami",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "25.7753",
    ending_lng: "-80.2089",
    marker_position:8,
    home_marker: false
  )

  Vacation.create(
    name: "East Coast Joy Ride"
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Miami",
    starting_state:"FL",
    ending_city:"Gainesville",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "29.6520",
    ending_lng: "-82.3250",
    marker_position:1,
    home_marker: true
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Gainseville",
    starting_state:"FL",
    ending_city:"Asheville",
    ending_state:"NC",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "35.5800",
    ending_lng: "-82.5558",
    marker_position:2,
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Asheville",
    starting_state:"NC",
    ending_city:"Washington",
    ending_state:"DC",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "38.9047",
    ending_lng: "-77.0164",
    marker_position:3,
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Washington",
    starting_state:"DC",
    ending_city:"New York",
    ending_state:"NY",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "40.71356",
    ending_lng: "-74.00632",
    marker_position:4,
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"New York",
    starting_state:"NY",
    ending_city:"Nashville",
    ending_state:"TN",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "36.1667",
    ending_lng: "-86.7833",
    marker_position:5,
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Nashville",
    starting_state:"TN",
    ending_city:"Atlanta",
    ending_state:"GA",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "33.7550",
    ending_lng: "-84.3900",
    marker_position:6,
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Atlanta",
    starting_state:"GA",
    ending_city:"Gainesville",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "29.6520",
    ending_lng: "-82.3250",
    marker_position:7,
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Gainesville",
    starting_state:"FL",
    ending_city:"Miami",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "25.7753",
    ending_lng: "-80.2089",
    marker_position:8,
    home_marker: false
  )

  Vacation.create(
    name: "East Coast Joy Ride  DUP"
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Miami",
    starting_state:"FL",
    ending_city:"Gainesville",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "29.6520",
    ending_lng: "-82.3250",
    marker_position:1,
    home_marker: true
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Gainseville",
    starting_state:"FL",
    ending_city:"Asheville",
    ending_state:"NC",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "35.5800",
    ending_lng: "-82.5558",
    marker_position:2,
    home_marker: false
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Asheville",
    starting_state:"NC",
    ending_city:"Washington",
    ending_state:"DC",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "38.9047",
    ending_lng: "-77.0164",
    marker_position:3,
    home_marker: false
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Washington",
    starting_state:"DC",
    ending_city:"New York",
    ending_state:"NY",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "40.71356",
    ending_lng: "-74.00632",
    marker_position:4,
    home_marker: false
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"New York",
    starting_state:"NY",
    ending_city:"Nashville",
    ending_state:"TN",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "36.1667",
    ending_lng: "-86.7833",
    marker_position:5,
    home_marker: false
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Nashville",
    starting_state:"TN",
    ending_city:"Atlanta",
    ending_state:"GA",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "33.7550",
    ending_lng: "-84.3900",
    marker_position:6,
    home_marker: false
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Atlanta",
    starting_state:"GA",
    ending_city:"Gainesville",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "29.6520",
    ending_lng: "-82.3250",
    marker_position:7,
    home_marker: false
  )
  Leg.create(
    vacation_id: 3,
    starting_city:"Gainesville",
    starting_state:"FL",
    ending_city:"Miami",
    ending_state:"FL",
    starting_lat:nil,
    starting_lng:nil,
    ending_lat: "25.7753",
    ending_lng: "-80.2089",
    marker_position:8,
    home_marker: false
  )
end
