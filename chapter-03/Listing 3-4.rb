# File: test_string_combiner.rb
#
require 'minitest/autorun'

class TestStringCombiner < Minitest::Test
  def test_combines_two_strings
    string1 = 'foo'
    string2 = 'bar'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'fboaor', string_combiner.combine
  end
end
