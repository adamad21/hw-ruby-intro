# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  count = 0 
  arr.each {|x| count += x }
  count 
end

def max_2_sum(arr)
  count = 0
  largest_two = arr.sort.last(2)
  largest_two.each {|x| count += x}
  count 
end

def sum_to_n?(arr, n)
  (0...arr.length).each do|i|
    ((i+1)...arr.length).each do |j|
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
    false  
end

# Part 2

def hello(name)
  greeting = "Hello, "
  greeting + name 
end

def starts_with_consonant?(s)
  s.match?(/\A[a-z]/i) && !s.match?(/\A[aieou]/i)
end

def binary_multiple_of_4?(s)
  return false unless s.match?(/\A[01]+\z/)
  s.to_i(2)%4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0 
    @isbn = isbn
    @price = price 
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
