Then("visitor is provided with the following options for booking") do |table|
  expect(@available_rooms.size).to eq(table.hashes.size)
  @available_rooms.each_with_index do |available_room, index|
    expect(available_room.number).to eq(table.hashes[index]['number'].to_i)
  end
end
