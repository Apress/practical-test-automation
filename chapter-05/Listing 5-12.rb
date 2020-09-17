# File: upcased_and_line_spaced.rb
#
module UpcasedAndLineSpaced
  # Takes "foo" and returns "F O O"
  #
  def upcased_and_line_spaced(value)
    value.upcase.gsub(/./) {|c| "#{c} "}.strip
  end
end
