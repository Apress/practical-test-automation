# File: test/test_customer.rb
#
require 'minitest/autorun'

class TestCustomer < Minitest::Test
  def test_has_public_first_name
    customer = Customer.new('John', 'Papas')

    assert_equal 'John', customer.first_name
  end

  def test_has_public_last_name
    customer = Customer.new('John', 'Papas')

    assert_equal 'Papas', customer.last_name
  end

  def test_has_public_name_combining_first_and_last_name
    customer = Customer.new('John', 'Papas')

    assert_equal 'John Papas', customer.name
  end
end
