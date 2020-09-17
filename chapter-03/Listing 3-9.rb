# File: test_string_combiner.rb
#
require 'minitest/autorun'
require_relative '../string_combiner'

class TestStringCombiner < Minitest::Test
  def test_combines_two_strings
    string1 = 'foo'
    string2 = 'bar'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'fboaor', string_combiner.combine
  end

  def test_combines_two_string_case_2
    string1 = 'john'
    string2 = 'woo'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'jwoohon', string_combiner.combine
  end
end
