# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  i = 0
  return i if arr.empty?
  arr.each do |element|
    i += element
  end
  return i
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  largest = [arr[0]]
  
  arr.each do |n|
    
    if largest.length < 2
      
      if n < largest[0]
        largest[1] = largest[0]
        largest[0] = n
      elsif n > largest[0]
        largest[1] = n
      end
      
    elsif n > largest[0]
    
      if n > largest[1]
        largest[1] = n 
      else
        largest[0] = n
      end
    end
    
  end
  
  return largest[0]*2 if largest.length < 2
  return largest[0] + largest[1]
  
end

def sum_to_n? (arr, n)
  arr.each_index do |i|
    j = i + 1
    while j < arr.length
      return true if arr[i] + arr[j] == n
      j += 1
    end
  end
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  return true if (/[b-df-hj-ptv-z]/i =~ s) == 0
end

def binary_multiple_of_4? (s)
  int = s.to_i(2)
  return false unless int % 4 == 0
  return /^[01]/ =~ s ? true : false
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError.new("Please provide proper ISBN and pricing information") if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f"%@price 
  end
  
  
end
