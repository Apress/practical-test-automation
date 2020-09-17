# File: spec/sandwich_spec.rb
#
RSpec.describe Sandwich do
  subject(:sandwich) do
    Sandwich.new('delicious', [])
  end

  it 'is delicious' do
    expect(sandwich.taste).to eq('delicious')
  end

  it 'is displayed as D E L I C I O U S' do
    expect(upcased_and_line_spaced(sandwich.taste)).to eq('D E L I C I O U S')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'cheese'

    expect(sandwich.toppings).not_to be_empty
  end
end
