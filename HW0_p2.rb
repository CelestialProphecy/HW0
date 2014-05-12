# Define a method hello(name) that takes a string representing a name
# and returns the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, #{name}"
end 

# Define a method starts_with_consonant?(s) that takes 
# a string and returns true if it starts with a consonant and
# false otherwise. (For our purposes, a consonant is any letter other than
# A, E, I, O, U.) 
# NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
  return false if s.empty?
  # psj :: !! it's easier to evaluate an array of vowels using #includes? than understand your regular expression
  # vh: agreed but was not passing test on special characters ex. /&%$# 
  # this expression works too (s =~ /^(?=[^aeiou])(?=a-z)/i )==0
  # you had it something like this: , so we can add
  # BP : What I noticed on this is that the original way it was written,
  # any tests with numbers or special characters were returning true. ..and emptys and ints threw errors.
  # the other option could be to just test the consonants instead of vowels.. but that isn't very elegent 
  vowels = %w(A E I O U)
  consonant = s.to_s[0]
  effi = (!vowels.include? consonant.upcase) && s[/a-zA-Z/+] == s
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true 
# if the string represents a binary number that is a multiple of 4. NOTE: be sure
# it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s) 
  remainder = -1
  
  # psj :: ?? why must length be greater then 2 
  # BP I tested for "0" and it was returning true. This was just a dirty fix to keep the re as is and avoid a return statement 
  # vin: length is not necessary, but still need to return false if invalid binary like 'khy100'
  # psj :: ?? a value of 1 can be interpretted at a binary 1 value and it's a single digit/character 
  remainder = ( s.to_i(2) % 4 ) if s =~ /[0-1]+/ && (s.length >= 2) 
  is_multiple = ( remainder == 0 ) ? true : false 
  is_multiple
end
