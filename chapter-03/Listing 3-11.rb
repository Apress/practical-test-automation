# File: string_combiner.rb
#
class StringCombiner
  def initialize(string1, string2)
    @string1, @string2 = string1, string2
  end

  def combine
    result = ''
    # first take the chars from the first string and interpolate the chars of the second.
    string1.split('').each_with_index do |char, index|
      result = "#{result}#{char}#{string2[index]}"
    end
    if string2.length > string1.length
      result = "#{result}#{string2[-(string2.length - string1.length)..-1]}"
    end
    result
  end

  private

  attr_reader :string1, :string2
end
