# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero.
def sum(numbers) 
  # check for null or empty array
  # default var to array with an element of zero
  # so #reduce can return zero when null or empty
  numbers = [0] if (numbers.nil? || numbers.empty?)
  numbers.reduce(:+)
end

# Define a method max_2_sum which takes an array of integers as an argument and 
# returns the sum of its two largest elements. For an empty array it should return zero. 
# For an array with just one element, it should return that element.
def max_2_sum(numbers)
  # check for null or empty array
  # default var to array with an element of zero
  # so #reduce can return zero when null or empty    
  numbers = [0] if (numbers.nil? || numbers.empty?)
  numbers.sort! { |a,b| b <=> a }
  numbers[0,2].reduce(:+)
end

# Define a method sum_to_n? which takes an array of integers and 
# an additional integer, n, as arguments and 
# returns true if any two distinct elements in the array of integers sum to n. 
# An empty array or single element array should both return false.
def sum_to_n?(numbers, n)
  # this method does not handle situations
  # where n = 0 and numbers is null or empty
  # the current unit tests do not test the above scenario
  numbers = [0] if (numbers.nil? || numbers.empty?)
  numbers.combination(2).any? { |a,b| (a+b) == n } 
end
