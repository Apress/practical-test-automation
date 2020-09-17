# File: hotel.rb
#
class Hotel
  def initialize(rooms:)
    @rooms = rooms
    @rooms.each { |room| room.set_available }
  end

  def check_availability(booking_request)
    existing_available_rooms.select do |existing_available_room|
      existing_available_room.accommodates >= booking_request.guests
    end
  end

  def reserve_room(room_number)
    room_found = @rooms.select {|r| r.number == room_number}.first
    raise ArgumentError, "room_number: #{room_number} given is not part of the numbers of the rooms of the hotel." if room_found.nil?
    room_found.reserve
  end

  private

  attr_reader :rooms

  def existing_available_rooms
    rooms.select { |room| room.available? }
  end
end
