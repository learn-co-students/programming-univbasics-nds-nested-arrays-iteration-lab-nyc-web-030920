array_3 = 
[
  [86262, 58115], 
  [22558, 97709], 
  [66236, 28056], 
  [25992, 81375], 
  [11248, 56789], 
  [42783, 27353], 
  [70796, 63432], 
  [53234, 63058], 
  [72316, 8675309]
]

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

p total_even_pairs(array_3)