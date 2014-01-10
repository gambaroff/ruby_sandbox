def calc_compound(b,i,p)
  while (p > 0)
    b = b * ( (i/100) + 1)
    p = p - 1 
  end
  b
end