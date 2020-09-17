# File: calculator.rb
#
expression = ARGV[0]
left, right = expression.split('+').map(&:to_i)
print left + right
