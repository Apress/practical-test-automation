# File features/step_definitions/booking_with_joy_steps.rb
#
require 'date'

Given("there are the following rooms in the hotel") do |table|
  @rooms = []
  table.hashes.each do |hash|
    @rooms << Room.new(number: hash['number'].to_i, accommodates: hash['accommodates'].to_i)
  end
  @hotel = Hotel.new(rooms: @rooms)
end

Given("all the rooms are available") do
  @rooms.each(&:set_available)
end

When("visitor provides the following booking details") do |table|
  # Note that "table" will only hold 1 line/row. The whole table
  # refers to 1 instance of a booking request

  hash = table.hashes.first

  @booking_request = BookingRequest.new(
    check_in: Date.strptime(hash['check_in'], '%d-%b-%Y'),
    check_out: Date.strptime(hash['check_out'], '%d-%b-%Y'),
    guests: hash['guests'].to_i
  )
  @available_rooms = @hotel.check_availability(@booking_request)
end

Then("visitor is provided with the following options for booking") do |table|
  expect(@available_rooms.size).to eq(table.hashes.size)
  @available_rooms.each_with_index do |available_room, index|
    expect(available_room.number).to eq(table.hashes[index]['number'].to_i)
  end
end

Then("visitor is provided with rooms {string}") do |rooms_list|
  expected_room_numbers = rooms_list.split(',').map {|room_number| room_number.to_i}

  expect(@available_rooms.size).to eq(expected_room_numbers.size)
  @available_rooms.each_with_index do |available_room, index|
    expect(available_room.number).to eq(expected_room_numbers[index])
  end
end

Given("the rooms {string} are reserved") do |rooms_list|
  reserved_rooms = rooms_list.split(',').map(&:to_i)
  reserved_rooms.each { |room_number| @hotel.reserve_room(room_number) }
end
