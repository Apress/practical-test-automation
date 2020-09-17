# File: hotel.rb
#
class Hotel
  def initialize(rooms:)
    @rooms = rooms
  end

  def check_availability(booking_request)
    existing_available_rooms.select do |existing_available_room|
      existing_available_room.accommodates >= booking_request.guests
    end
  end

  def reserve_room(room_number)
    @rooms.select {|r| r.number == room_number}.first.reserve
  end

  private

  attr_reader :rooms

  def existing_available_rooms
    rooms.select { |room| room.available? }
  end
end
