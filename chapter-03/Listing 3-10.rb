# File: test_string_combiner.rb
#
require 'minitest/autorun'
require_relative '../string_combiner'

class TestStringCombiner < Minitest::Test
  def test_combines_two_strings_with_equal_length
    string1 = 'foo'
    string2 = 'bar'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'fboaor', string_combiner.combine
  end

  def test_combines_two_strings_first_string_longer_than_second
    string1 = 'jonathan'
    string2 = 'woo'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'jwoonoathan', string_combiner.combine
  end

  def test_combines_two_strings_first_string_shorter_than_second
    string1 = 'maria'
    string2 = 'jonathan'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'mjaorniaathan', string_combiner.combine
  end

  def test_combines_two_strings_first_is_blank
    string1 = ''
    string2 = 'maria'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'maria', string_combiner.combine
  end


  def test_combines_two_strings_second_is_blank
    string1 = 'john'
    string2 = ''
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'john', string_combiner.combine
  end

  def test_combines_two_strings_first_is_nil
    string1 = nil
    string2 = 'maria'
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'maria', string_combiner.combine
  end

  def test_combines_two_strings_second_is_nill
    string1 = 'john'
    string2 = nil
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal 'john', string_combiner.combine
  end

  def test_combines_two_strings_both_are_nil
    string1 = nil
    string2 = nil
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    assert_equal nil, string_combiner.combine
  end

  def test_combines_two_strings_general_case
    string1 = ('a'..'z').to_a.sample(rand(100)).join
    string2 = ('a'..'z').to_a.sample(rand(100)).join
    string_combiner = StringCombiner.new(string1, string2)

    # fire
    expected_result = ''
    # first take the chars from the first string and interpolate the chars of the second.
    string1.split('').each_with_index do |char, index|
      expected_result = "#{expected_result}#{char}#{string2[index]}"
    end
    # if the second string is longer than the first, then we have some second string chars that we have to amend.
    # Note that given a string "x", the "x[-5..-1]", for example, takes the last 5 chars of the string.
    if string2.length > string1.length
      expected_result = "#{expected_result}#{string2[-(string2.length - string1.length)..-1]}"
    end

    assert_equal expected_result, string_combiner.combine
  end
end
