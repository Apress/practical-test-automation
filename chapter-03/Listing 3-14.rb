# File: customer.rb
#
class Customer
  def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
  end

  def name
    "#{first_name} #{last_name}"
  end

  attr_reader :first_name, :last_name
end
