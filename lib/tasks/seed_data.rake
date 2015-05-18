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
    marker_position:1,
    home_marker: true
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 1,
    latitude: "25.7753",
    longitude: "-80.2089",
    home_marker: true
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 1,
    latitude: "29.6520",
    longitude: "-82.3250",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Gainseville",
    starting_state:"FL",
    ending_city:"New Orleans",
    ending_state:"LA",
    marker_position:2,
    home_marker: false
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 2,
    latitude: "29.9500",
    longitude: "-90.0667",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"New Orleans",
    starting_state:"LA",
    ending_city:"Houston",
    ending_state:"TX",
    marker_position:3,
    home_marker: false
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 3,
    latitude: "29.7604",
    longitude: "-95.3698",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Houston",
    starting_state:"TX",
    ending_city:"Albuquerque",
    ending_state:"NM",
    marker_position:4,
    home_marker: false
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 4,
    latitude: "35.1107",
    longitude: "-106.6100",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Albuquerque",
    starting_state:"NM",
    ending_city:"Las Vegas",
    ending_state:"NV",
    marker_position:5,
    home_marker: false
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 5,
    latitude: "36.1215",
    longitude: "-115.1739",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Las Vegas",
    starting_state:"NV",
    ending_city:"Dallas",
    ending_state:"TX",
    marker_position:6,
    home_marker: false
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 6,
    latitude: "32.7767",
    longitude: "-96.7970",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Dallas",
    starting_state:"TX",
    ending_city:"Gainesville",
    ending_state:"FL",
    marker_position:7,
    home_marker: false
  )
  Marker.create(
    vacation_id: 1,
    leg_id: 7,
    latitude: "29.6520",
    longitude: "-82.3250",
    home_marker: false
  )
  Leg.create(
    vacation_id: 1,
    starting_city:"Gainesville",
    starting_state:"FL",
    ending_city:"Miami",
    ending_state:"FL",
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
    marker_position:1,
    home_marker: true
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 9,
    latitude: "25.7753",
    longitude: "-80.2089",
    home_marker: true
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 9,
    latitude: "29.6520",
    longitude: "-82.3250",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Gainseville",
    starting_state:"FL",
    ending_city:"Asheville",
    ending_state:"NC",
    marker_position:2,
    home_marker: false
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 10,
    latitude: "35.5800",
    longitude: "-82.5558",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Asheville",
    starting_state:"NC",
    ending_city:"Washington",
    ending_state:"DC",
    marker_position:3,
    home_marker: false
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 11,
    latitude: "38.9047",
    longitude: "-77.0164",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Washington",
    starting_state:"DC",
    ending_city:"New York",
    ending_state:"NY",
    marker_position:4,
    home_marker: false
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 12,
    latitude: "40.71356",
    longitude: "-74.00632",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"New York",
    starting_state:"NY",
    ending_city:"Nashville",
    ending_state:"TN",
    marker_position:5,
    home_marker: false
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 13,
    latitude: "36.1667",
    longitude: "-86.7833",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Nashville",
    starting_state:"TN",
    ending_city:"Atlanta",
    ending_state:"GA",
    marker_position:6,
    home_marker: false
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 14,
    latitude: "33.7550",
    longitude: "-84.3900",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Atlanta",
    starting_state:"GA",
    ending_city:"Gainesville",
    ending_state:"FL",
    marker_position:7,
    home_marker: false
  )
  Marker.create(
    vacation_id: 2,
    leg_id: 15,
    latitude: "29.6520",
    longitude: "-82.3250",
    home_marker: false
  )
  Leg.create(
    vacation_id: 2,
    starting_city:"Gainesville",
    starting_state:"FL",
    ending_city:"Miami",
    ending_state:"FL",
    marker_position:8,
    home_marker: false
  )
end
