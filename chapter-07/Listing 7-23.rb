Then("visitor is provided with rooms {string}") do |rooms_list|
  expected_room_numbers = rooms_list.split(',').map {|room_number| room_number.to_i}

  expect(@available_rooms.size).to eq(expected_room_numbers.size)
  @available_rooms.each_with_index do |available_room, index|
    expect(available_room.number).to eq(expected_room_numbers[index])
  end
end
