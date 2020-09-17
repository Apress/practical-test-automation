Given("all the rooms are available") do
  @rooms.each(&:set_available)
end
