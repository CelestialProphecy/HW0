#vowels = ("a".."z")
# a = ("a".."z").each {|letter| vowels.include?(letter) }

vowels = %w(a e i o u)
consonant =("a".."z").find_all { |letter| !vowels.include? letter}
 

  
