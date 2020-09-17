Given("there are the following rooms in the hotel") do |table|
  @rooms = []
  table.hashes.each do |hash|
    @rooms << Room.new(number: hash['number'].to_i, accommodates: hash['accommodates'].to_i)
  end
end
