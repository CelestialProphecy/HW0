load 'HW0_p1.rb'


a = [1,2,3]
b = [-1,8,2]
c = []
d = [9]

puts " the below tests return true if passed"
puts " tests for sum*************************
	 ******"


puts "sum for #{a} is #{sum(a) == 6} "
puts "sum for #{b} is  #{sum(b) == 9}"
puts "sum for #{c} is #{sum(c) == 0} "
puts "sum for #{d} is #{sum(d) == 9}"

a = [1,2,3]
b = [-1,8,2]
c = []
d = [9]

puts "tests for max_2_sum *************************"

puts "max_2_sum for #{a} is #{max_2_sum(a) == 5} "
puts "max_2_sum for #{b} is #{max_2_sum(b) == 10} "
puts "max_2_sum for #{c} is #{max_2_sum(c) == 0} "
puts "max_2_sum for #{d} is #{max_2_sum(d) == 9} "

a = [1,2,3]
b = [-1,8,2]
c = []
d = [9]
e = nil



puts "tests for sum_2_n?*************************"

puts  "sum_to_n? for #{a}, 5 is #{sum_to_n?(a, 5) == true}"
puts  "sum_to_n? for #{a}, -1 is #{sum_to_n?(a, -1) == false}"
puts  "sum_to_n? for #{a}, -1 is #{sum_to_n?(a, 0) == false}"
puts  "sum_to_n? for #{d}, 1 is #{sum_to_n?(d, 1) == false}"
puts  "sum_to_n? for #{c}, 1 is #{sum_to_n?(c, 1) == false}"
puts  "sum_to_n? for #{b}, 10 is #{sum_to_n?(b, 10) == true}"
puts  "sum_to_n? for #{b}, 100 is #{sum_to_n?(b, 100) == false}"
puts  "sum_to_n? for #{b}, -1 is #{sum_to_n?(b, -1) == false}"
#below added per metapsj comments
puts  "sum_to_n? for #{b}, 0 is #{sum_to_n?(b, 0) == false}"
puts  "sum_to_n? for #{c}, 0 is #{sum_to_n?(c, 0) == false}"
puts  "sum_to_n? for #{e}, 5 is #{sum_to_n?(e, 5) == false}"
