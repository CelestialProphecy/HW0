# Define a method hello(name) that takes a string representing a name
# and returns the string "Hello, " concatenated with the name.
def hello(name)

  if name.is_a? String
    "Hello, #{name}"
  end
end 

# Define a method starts_with_consonant?(s) that takes 
# a string and returns true if it starts with a consonant and
# false otherwise. (For our purposes, a consonant is any letter other than
# A, E, I, O, U.) 
# NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
    # if s.empty?
  
   
  # psj :: !! it's easier to evaluate an array of vowels using #includes? than understand your regular expression
  # vh: agreed but was not passing test on special characters ex. /&%$# 
  # this expression works too (s =~ /^(?=[^aeiou])(?=a-z)/i )==0
  # you had it something like this: , so we can add
  # BP : What I noticed on this is that the original way it was written,
  # any tests with numbers or special characters were returning true. ..and emptys and ints threw errors.
  # the other option could be to just test the consonants instead of vowels.. but that isn't very elegent 
      vowels = %w(a e i o u)
      consonant =("a".."z").find_all { |letter| !vowels.include? letter}
      #consonant = ("a".."z").collect { |letter| !vowels.include? letter}
      if s.is_a?(String) && !s.empty?
        return consonant.include? s[0].downcase

      else
        return false
      end
    
   
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true 
# if the string represents a binary number that is a multiple of 4. NOTE: be sure
# it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s) 
  
  # tests for a string, tests that is is a binary, tests for multiple of 4,
  # returns a boolean

  test = s.is_a?(String) && s.match(/^[0-1]+$/ ) == s && s.to_i(2) % 4
  
end
