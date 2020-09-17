def combine
  return string2 if string1.nil?
  return string1 if string2.nil?

  # First interpolate the second string into the first.
  result = string1.
    split('').
    each_with_index.
    reduce('') {|result, (item, index)| result = "#{result}#{item}#{string2[index]}"}

  # If we have characters left, then append them to the result
  if string2.length > string1.length
    result = "#{result}#{string2[-(string2.length - string1.length)..-1]}"
  end

  result
end
