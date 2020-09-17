RSpec.configure do |config|
  config.before :suite do
    puts 'This is executed only once at the beginning of the specifications run'
  end
end
