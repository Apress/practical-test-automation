# File: features/support/hooks.rb
#
Before('@foo') do |scenario|
  print "Before starting scenario #{scenario.name}"
end

After('@foo') do |scenario|
  puts "> after scenario #{scenario.name}"
end
