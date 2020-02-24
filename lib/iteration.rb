require "pry"

def join_ingredients(src)
  array = []
  counter = 0 
  while counter < src.length do 
    array.push("I love #{src[counter][0]} and #{src[counter][1]} on my pizza")
    counter += 1
  end
  array
end

def find_greater_pair(src)
  array = []
  counter = 0 
  while counter < src.length
    array.push(src[counter].max)
    counter += 1
  end
  array
end

def total_even_pairs(src)
  array = []
  total = 0 
  counter = 0 
  while counter < src.length
    if src[counter][0] % 2 == 0 && src[counter][1] % 2 == 0
    total = total + (src[counter].sum) 
    counter += 1
  else
    counter += 1
    end
  end
  total
end
# src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!