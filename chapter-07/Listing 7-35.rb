# File: features/support/hooks.rb
#
Before do |scenario|
  print "Before starting scenario #{scenario.name}"
end

After do |scenario|
  puts "> after scenario #{scenario.name}"
end
