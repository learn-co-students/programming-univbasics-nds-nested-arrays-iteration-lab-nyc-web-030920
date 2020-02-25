def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  ingredient_pair = 0
  on_my_pizza = []
  while ingredient_pair < src.count do
      on_my_pizza[ingredient_pair] = "I love #{src[ingredient_pair][0]} and #{src[ingredient_pair][1]} on my pizza"
      ingredient_pair += 1
  end
  
  p on_my_pizza

end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  index = 0
  big_side = []
  while index < src.count do
    
    if src[index][0] > src[index][1]
      big_side.push(src[index][0])
    else src[index][1] > src[index][0]
      big_side.push(src[index][1]) 
    end
    
    index += 1
  end
  
  return big_side
  
end



def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  index = 0
  even_total = 0
  
  while index < src.count do
    
        inner_index = 0
    
        if (src[index][0] % 2 == 0) && (src[index][1] % 2 == 0)
          
          while inner_index < src[index].count do
          even_total += src[index][inner_index]
          inner_index += 1
          end
          
        end
        
    
        index += 1
  
  end
  
  p even_total
  
end
