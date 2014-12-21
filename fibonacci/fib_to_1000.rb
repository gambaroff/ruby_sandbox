#Write a method that outputs numbers in the Fibonacci sequence. In the Fibonacci sequence, the current number is the sum of the previous two numbers. The first two numbers in the sequence are 1 and 1.

def fib_up_to(max)
  my_a = []
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
    c = my_a.push(i2)
  end
  c
end

