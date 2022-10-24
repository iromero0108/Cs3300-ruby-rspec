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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
