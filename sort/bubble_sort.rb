=begin
  Bubble sort Alorithm which sorts a random sized 
  array with random indeces.
  
  Time Complexity:
    Worst case performance  O(n^2)
    Best case performance O(n)
    Average case performance  O(n^2)
    Worst case space complexity
=end

arr = Array.new

i = 0
arr_size = rand(10)

while i < arr_size
  arr[i] = rand(10)
  i += 1
end

puts "\n"
puts 'unsorted array: '
p arr

def swap a, b
  temp = a
  a = b
  b = temp
end

def bubble_sort arr, arr_size
  i = 0
  swapped = ''
  while swapped do 
    swapped = false
    (arr_size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
      i += 1
    end
  end
  puts "\n"
  puts 'array sorted with bubble sort: '
  p arr
end

bubble_sort arr, arr_size
