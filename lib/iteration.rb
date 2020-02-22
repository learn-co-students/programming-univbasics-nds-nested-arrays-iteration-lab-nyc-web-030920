def join_ingredients(array_1)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  #array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]
 return ["I love #{array_1[0][0]} and #{array_1[0][1]} on my pizza",
 "I love #{array_1[1][0]} and #{array_1[1][1]} on my pizza",
 "I love #{array_1[2][0]} and #{array_1[2][1]} on my pizza"]
 #pizza = [ ]
# count = 0
 #for array_1[count].each do | array_1 |
   #pizza << "I love #{array_1[0][count]} and #{array_1[1][count]} on my pizza"
   #count += 1
 #end
 #puts pizza
end

def find_greater_pair(array_2)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  #array_2 = [[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]]
  return [array_2[0].max, array_2[1].max, array_2[2].max, array_2[3].max, array_2[4].max]
end

def total_even_pairs(array_3)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  array_3 = [[86262, 58115], [22558, 97709], [66236, 28056], [25992, 81375], [11248, 56789], [42783, 27353], [70796, 63432], [53234, 63058], [72316, 8675309]]
  sum = 0
  array_3.each do | num1, num2 |
    if num1 % 2 == 0 && num2 % 2==0
      sum += num1 + num2
    end
  end
  return sum
end
