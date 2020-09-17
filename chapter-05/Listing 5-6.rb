# File: coffee.rb
#
class Coffee
  INGREDIENT_PRICES = {
    'milk' => 0.2
  }

  def initialize
    @ingredients = []
  end

  def price
    1 + sum_of_ingredients_price
  end

  def add_milk
    @ingredients << 'milk'
  end

  def prepare_duration
    1 + @ingredients.size
  end

  private

  def sum_of_ingredients_price
    @ingredients.reduce(0) do |result, ingredient|
      result += result + INGREDIENT_PRICES[ingredient]
    end
  end
end
