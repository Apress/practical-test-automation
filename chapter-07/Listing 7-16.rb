When("visitor provides the following booking details") do |table|
  # Note that "table" will only hold 1 line/row. The whole table
  # refers to 1 instance of a booking request

  hash = table.hashes.first

  @booking_request = BookingRequest.new(
    check_in: Date.strptime(hash['check_in'], '%d-%b-%Y'),
    check_out: Date.strptime(hash['check_out'], '%d-%b-%Y'),
    guests: hash['guests'].to_i
  )
  @hotel = Hotel.new
  @available_rooms = @hotel.check_availability(@booking_request)
end
