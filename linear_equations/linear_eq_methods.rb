def calculate1(m1, m2, b1, b2)
  case
  when m1 == m2 && b1 == b2
    "You have 2 lines that are identical and infinite number of solutions."
  when m1 == m2 && b1 != b2  
    "You have 2 lines that are parallel and will NEVER EVER intersect in Euclidean geometry, hence no solutions."
  when m1 != m2 && b1 != b2
    x = (b2 - b1) / (m1 - m2)
    y = m1 * x + b1
    "Your lines will intersect in the point of (#{x}, #{y})"
  end
end  
