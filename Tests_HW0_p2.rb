load 'HW0_p2.rb'
b1 = "Ben"
b2 = "Budi"
numbers = [1,2]
empty = ""



puts "test for hello *************************\n"
puts "\n"

hellotests = ["Ben", "Budi", [1,2], "", 0, -1, 9, ]

hellotests.each do |test| puts "testing #{test} returns #{hello(test)}" 
	end



puts "test for starts_with_consonant? *************************"
puts "\n"

testcases = [["apple", false],["boston",true], ["camel",true], 
			["Quiet",true], ["mInIng", true], ["I",false],
			["1234",false], ["1ef",false],["",false], 
			["Back",true], ["Cal",true], ["Zal",true],[1,false], [0,false],]



testcases.each do |x| puts "#{x[0]} starts with a consonant? returns #{starts_with_consonant?(x[0])} should be #{x[1]}"
end



puts "test for binary_multiple_of_4? *************************"
puts "\n"

tests = {:sixteen => ["1000", true], :four => ["100",true], :two => ["10",false], :forty_8 => ["110000",true],
        :nonbinary => ["18",false], :negative_non => ["-9",false], :four_multiple_non => ["24",false],
        :zero => ["0",true], :name => ["Ben",false], :empty => ["" ,false],:integer =>[9,false], :int2 => [4,false], 
        :integer_binary => [1000,false], :mixed => ['a100',false],:five40 => ["1010101010100",true]}
        


tests.each do |key, x| 
	 begin 
	  puts "test(  #{key}   )  binary_multiple_of_4?(  #{x[0]}  ) returns #{binary_multiple_of_4?(x[0])} should be #{x[1]}"
	 rescue Exception => e
	  puts e.inspect 
	end
	end






