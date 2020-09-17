# File: spec/coffee_spec.rb
#
RSpec.describe Coffee do
  let(:coffee) { Coffee.new }

  it 'costs 1 euro' do
    expect(coffee.price).to eq(1)
  end

  it 'takes 1 minute to prepare' do
    expect(coffee.prepare_duration).to eq(1)
  end

  context 'with milk' do
    before :all do
      puts 'This is a hook that will be executed once for the "with milk" context examples'
      @with_milk = 'Milk has been added!'
    end

    before { coffee.add_milk }

    it 'costs 1.2 euro' do
      puts @with_milk
      expect(coffee.price).to eq(1.2)
    end

    it 'takes 2 minutes to prepare' do
      puts @with_milk
      expect(coffee.prepare_duration).to eq(2)
    end
  end
end
