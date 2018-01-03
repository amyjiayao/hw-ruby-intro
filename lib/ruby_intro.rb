# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? {|a| sum(a) == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s == "0")
	return true
  end
  /^[10]*00$/.match(s)
end

# Part 3

class BookInStock
  # YOUR CODE HERE
	attr_accessor :isbn, :price
  
  def initialize(isbn, price)
	if isbn.empty? 
		raise ArgumentError.new('Error: Empty ISBN!')
	end
	if price <= 0
		raise ArgumentError.new('Error: Negative Price!')
	end
	@isbn = isbn
	@price = price
  end
  
  def price_as_string
	# format as $00.00
	format("$%.2f", @price)
  end
  
end
