Given("the rooms {string} are reserved") do |rooms_list|
  reserved_rooms = rooms_list.split(',').map(&:to_i)
  reserved_rooms.each { |room_number| @hotel.reserve_room(room_number) }
end
