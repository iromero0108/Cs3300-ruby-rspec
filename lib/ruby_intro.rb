# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  maxArray=arr.max(2)
  return maxArray.sum
end

def sum_to_n? arr, n
  possible=false
  if arr.empty?
    possible=false
  else
    arr.combination(2){
      |combination| 
      if combination.sum == n
        possible = true
      end
    }
  end
  return possible
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  valid=false;
  
  if s.length==0
    valid=false
  elsif (s=~ /\A(?=[^aeiouAEIOU])(?=[a-zA-Z])/i)
    valid = true
  else
    valid=false
  end
  return valid
end

def binary_multiple_of_4? s
  valid=false
  if s.length<3
    if (s.length==1 && s[0]=="0")
      valid=true
    else
      valid=false
    end
  elsif (s.scan(/\D/).empty?)
    
    if s.scan(/[^2-9]/).length==s.length
      reverseString=s.reverse
      if (reverseString[0]=="0"&&reverseString[1]=="0"&&reverseString[2]=="1")
        valid=true
      else
        valid=false
      end
    else
      valid=false
    end
  else
    valid=false
  end
  return valid
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    if (isbn.length<1 || isbn.empty?)
      raise ArgumentError.new("ISBN number cannot be empty")
    elsif price <= 0
      raise ArgumentError.new("Price must be greater than 0.00")
    else
      @isbn=isbn
      @price=price
    end
    

  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string()
    message = "$%.2f" % [@price]
    return message
  end

end
