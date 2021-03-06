# File: spec/sandwich_spec.rb
#
RSpec.describe Sandwich, test: :unit do
  subject(:sandwich) do
    described_class.new('delicious', [])
  end

  it 'is delicious' do
    expect(sandwich.taste).to eq('delicious')
  end

  it 'is displayed as D E L I C I O U S' do |example|
    puts "Type of test: #{example.metadata[:test]}"

    expect(upcased_and_line_spaced(sandwich.taste)).to eq('D E L I C I O U S')
  end

  it 'lets me add toppings', test: :integration do |example|
    puts "Type of test: #{example.metadata[:test]}"

    sandwich.toppings << 'cheese'

    expect(sandwich.toppings).not_to be_empty
  end
end
