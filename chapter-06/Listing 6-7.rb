# File: features/step_definitions/calculator_steps.rb
#
Given("the input {string}") do |input|
  @input = input
end

When("the calculator is run") do
  @output = `ruby calculator.rb '#{@input}'`
  raise 'Calculator Failed To Run!' unless $?.success?
end

Then("the output should be {string}") do |expected_output|
  raise 'Expectation Not Met' unless @output == expected_output
end
