# File: customers/features/step_definitions/customers_steps.rb
#
Given("the customers") do |table|
  @customers = []
  table.hashes.each do |hash|
    @customers << Customer.new(name: hash['name'], phone_number: hash['phone_number'])
  end
end

When("I request to export customer details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I get the file {string} with the correct data") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
