# File: sum_of_three.rb
#
class SumOfThree

  attr_accessor :array_of_integers

  def initialize(array_of_integers)
    @array_of_integers = array_of_integers
  end

  # Tries to find 3 integers that sum up to 0.
  # In other words given an array a, we want to find
  # the 3 integers that satisfy the equation:
  #
  #    a[i] + a[j] + a[k] == 0
  #
  # where i != j && i != k && j !=k
  #
  # The algorithm first sorts the input array, and then follows a clever algorithm that does not have to
  # use any search for pairs.
  #
  # This is the pseudo-algorithm
  #
  #  sort(array_of_integers);
  #
  #  for i = 0 to n - 3 do
  #    a = S[i];
  #    j = i+1;
  #    k = size_of_array - 1;
  #    while (j < k) do
  #      b = S[j];
  #      c = S[k];
  #      if (a + b + c == 0) then
  #        return a, b, c; # This is the happy case and we stop
  #      else if (a + b + c > 0) then
  #        k = k - 1; # In this case, the b + c is big enough and we need to make it smaller. We know for sure that c is quite big
  #                   # because it has been set as the value of the element that is on the far right, a.k.a. the biggest one.
  #                   # So, let us try to use the previous element, which is smaller than c. Hence we will make the (b+c) factor
  #                   # smaller and the (a + b + c) moving closer to 0.
  #      else
  #        j = j + 1; # In this case, the b + c is small enough so that the (a + b + c) < 0. We need to increase b + c but
  #                   # not so much to go over 0. We need to increase it a little bit. That's why we decide to pick up the
  #                   # next biggest element, which is j + 1.
  #      end
  #    end
  #  end
  #
  def find_three
    array_of_integers.sort!
    i = 0
    size_of_array = array_of_integers.size
    while i <= size_of_array - 3
      a = array_of_integers[i]
      j = i + 1
      k = size_of_array - 1

      while j < k
        b = array_of_integers[j]
        c = array_of_integers[k]
        sum = a + b + c
        if sum.zero?
          return [a, b, c]
        elsif sum.positive?
          k -= 1
        else
          j += 1
        end
      end

      i += 1
    end
    []
  end
end
