array_1 = [
  ['pepperoni', 'sausage'], 
  ['green olives', 'green peppers'], 
  ['onions', 'pineapple']
]

def join_ingredients(array)

outer_results = []
row_index = 0 
while row_index < array.count do 
  element_index = 0
  inner_results = []
  while array[row_index][element_index] && array[row_index][element_index + 1] do  
    inner_results << "I love #{array[row_index][element_index]} and #{array[row_index][element_index + 1]} on my pizza"
    element_index += 1 
  end
  row_index += 1 
  outer_results << inner_results.join('')
end

outer_results

end

# array_2 = 
# [
#   [-1, -900], 
#   [10, 30], 
#   [0, 0], 
#   [14, 16 * -2.5], 
#   [Math.sin(1), 19]
# ]
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays

def find_greater_pair(array)

  outer_results = []
  row_index = 0 
  while row_index < array.count do 
    inner_results = []
    inner_results << array[row_index].max
    outer_results << inner_results.join.to_f 
    row_index += 1
  end
  outer_results
end


def total_even_pairs(array)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

total = 0 
row_index = 0 

while row_index < array.count do 
  element_index = 0 
  a = array[row_index][element_index] 
  b = array[row_index][element_index + 1]
  if a.to_i.even? && b.to_i.even?  
    total += a + b 
  end
  row_index += 1
end

total

end