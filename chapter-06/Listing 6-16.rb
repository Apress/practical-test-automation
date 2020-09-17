# File: features/step_definitions/calculator_steps.rb
#
Given("the input {string}") do |input|
  @input = input
end

When("the calculator is run") do
  @output = `ruby calculator.rb '#{@input}'`
  expect($?).to be_success, 'Calculator Failed To Run'
end

Then("the output should be {string}") do |expected_output|
  expect(@output).to eq(expected_output)
end
