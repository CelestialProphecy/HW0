load 'HW0_p3.rb'
# Define a class BookInStock which represents a book with an isbn number, 
# isbn, and price of the book as a floating-point number, price, as attributes. 
# The constructor should accept the ISBN number (a string) as the first argument 
# and price as second argument, and should raise ArgumentError (one of Ruby's 
# built-in exception types) if the ISBN number is the empty string or if the 
# price is less than or equal to zero.

# Include the proper getters and setters for these attributes. Include a method
# price_as_string that returns the price of the book with a leading dollar sign 
# and trailing zeros, that is, a price of 20 should display as "$20.00" and a 
# price of 33.8 should display as "$33.80".
# enter tests below
#TODO
cases = [["123",234],["-4",0],["",-1], ["999 08",889],["abcdf",88],[88,888],["lm","p"]]
def tryout(isbn, number)
	begin
		b = BookInStock.new(isbn,number)
		a = [b.isbn, b.price_as_string]			
	rescue Exception => e
		a = e.inspect 
		#puts "ArgumentError"
	end
	puts "BookInStock(#{isbn},#{number}) returns #{a}
		\n"
end

cases.each do |x,y|  tryout(x, y)
end

