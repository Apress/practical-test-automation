# File: sandwich.rb
#
class Sandwich
  attr_reader :taste

  def initialize(taste, toppings)
    @taste = taste
    @toppings = toppings
  end
end
