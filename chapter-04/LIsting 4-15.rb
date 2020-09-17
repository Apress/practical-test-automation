# File: spec/sandwich_spec.rb
#
RSpec.describe 'An ideal sandwich' do
  before do
    @sandwich = Sandwich.new('delicious', [])
  end

  it 'is delicious' do
    expect(@sandwich.taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    @sandwich.toppings << 'cheese'

    expect(@sandwich.toppings).not_to be_empty
  end
end
