# File: spec/sandwich_spec.rb
#
RSpec.describe 'An ideal sandwich' do
  it 'is delicious' do
    sandwich = Sandwich.new('delicious', [])

    expect(sandwich.taste).to eq('delicious')
  end
end
