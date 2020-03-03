def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  new_array =[]
  i=0
  while i<src.count do 
    j=0 
    while j< src[i].count do
      s= "I love #{src[i][j]} and #{src[i][j+1]} on my pizza" 
      new_array << s
      j+=2
    end
    i+=1
  end
  new_array
end

def find_greater_pair(src)
   new_array =[]
  i=0
  while i<src.count do 
    j=0 
    while j< src[i].count do
      if src[i][j] > src[i][j+1] 
      new_array << src[i][j]
    else
      new_array << src[i][j+1]
    end
      j+=2
    end
    i+=1
  end
  new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total=0 
   i=0
  while i<src.count do 
    j=0 
    while j< src[i].count do
      if src[i][j] %2 == 0 && src[i][j+1] %2 ==0
        total += (src[i][j] +src[i][j+1] )
      end
      j+=2
    end
    i+=1
  end
  total
end
