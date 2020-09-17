# File features/step_definitions/booking_with_joy_steps.rb
#
require 'date'

Given("there are the following rooms in the hotel") do |table|
  @rooms = []
  table.hashes.each do |hash|
    @rooms << Room.new(number: hash['number'].to_i, accommodates: hash['accommodates'].to_i)
  end
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
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end
