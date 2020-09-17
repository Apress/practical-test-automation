# File: room.rb
#
class Room
  attr_reader :accommodates, :number

  def initialize(number:, accommodates:)
    @number = number
    @accommodates = accommodates
  end

  def set_available
    @state = :available
  end

  def available?
    @state == :available
  end

  def reserve
    @state = :reserved
  end
end
