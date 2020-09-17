# File: features/support/hooks.rb
#
Around('@foo') do |scenario, block|
  print "Before starting scenario #{scenario.name}"
  block.call
  puts "> after scenario #{scenario.name}"
end

AfterStep do |result, step_info|
  puts "Result OK?: #{result.ok?} - Step: #{step_info.text}"
end

