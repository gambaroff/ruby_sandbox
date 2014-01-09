def calculate1(x, y, z)
  if x > 0 && y > 0 && z > 0
    "All 3 variables are greater then 0."
  
  elsif x > 0 && y > 0 && z < 0
    "2 variables are greater then 0."
  
  elsif x > 0 && y < 0 && z > 0
    "2 variables are greater then 0."
  
  elsif x > 0 && y < 0 && z < 0
    "Only one variable is greater then 0."
  
  elsif x < 0 && y > 0 && z > 0
    "2 variables are greater then 0."
 
  elsif x < 0 && y > 0 && z < 0
    "Only one variable is greater then 0."
  
  elsif x < 0 && y < 0 && z > 0
    "Only one variable is greater then 0."
  
  elsif x < 0 && y < 0 && z < 0
    "All 3 variables are less then 0."
  end    
end 
