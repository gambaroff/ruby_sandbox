require_relative 'calc'

puts "Please enter your balance $ :"
b = gets.to_f
puts "Please enter your interest rate per period % :"
i = gets.to_f
puts "Please how many period do you intend to store your funds"
p = gets.to_f

puts "You new balance is #{calc_compound(b,i,p)}" 
  
  
  
 