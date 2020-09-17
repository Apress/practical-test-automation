# File: room.rb
#
class Room
  def initialize(number:, accommodates:)
    @number = number
    @accommodates = accommodates
  end

  def set_available
    @state = :available
  end
end
