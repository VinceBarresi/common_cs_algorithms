=begin
  Fibonacci Number Sequence
=end

def fibonacci n
  sequence = []
  prepre, pre, i = 0, 1, 2
  return 0 if n == 0
  while i < n
    sum = prepre + pre
    puts sequence = sum
    prepre = pre
    pre = sum
    i += 1
  end
end

