require_relative 'linear_eq_methods'

puts "Enter slope(m) for line A: "
m1 = gets.to_f

puts "Enter y-intersept(b) for line A: "
b1 = gets.to_f

puts "Enter slope(m) for line B: "
m2 = gets.to_f

puts "Enter y-intersept(b) for line B: "
b2 = gets.to_f

puts calculate1 m1, m2, b1, b2
puts "Thanks for using this awesome program"