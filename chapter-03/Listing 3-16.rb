# File: test/test_runner.rb
#
Dir.glob("test/**/test_*.rb").each do |file|
  load file unless file == 'test/test_runner.rb'
end
