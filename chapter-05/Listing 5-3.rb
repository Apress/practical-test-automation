# File: spec/sandwich_spec.rb
#
RSpec.configure do |config|
  config.before :suite do
    puts 'This is executed only once at the beginning of the specifications run'
    @foo = 5
  end
end

RSpec.describe 'An ideal sandwich' do
  def sandwich
    @sandwich ||= Sandwich.new('delicious', [])
  end

  it 'is delicious' do
    expect(@foo).to eq(5)
    expect(sandwich.taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'cheese'

    expect(sandwich.toppings).not_to be_empty
  end
end
