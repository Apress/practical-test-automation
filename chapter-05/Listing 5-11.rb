# File: spec/sandwich_spec.rb
#
RSpec.describe Sandwich do
  subject(:sandwich) do
    Sandwich.new('delicious', [])
  end

  it 'is delicious' do
    expect(sandwich.taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'cheese'

    expect(sandwich.toppings).not_to be_empty
  end
end
