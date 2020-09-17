# File: sandwich.rb
#
class Sandwich
  attr_reader :taste, :toppings

  def initialize(taste, toppings)
    @taste = taste
    @toppings = toppings
  end
end
