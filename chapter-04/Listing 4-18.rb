# File: spec/coffee_spec.rb
#
RSpec.describe 'A coffee' do
  let(:coffee) { Coffee.new }

  it 'costs 1 euro' do
    expect(coffee.price).to eq(1)
  end

  context 'with milk' do
    before { coffee.add_milk }

    it 'costs 1.2 euro' do
      expect(coffee.price).to eq(1.2)
    end
  end
end
