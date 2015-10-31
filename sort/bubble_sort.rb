=begin
  Bubble sort Alorithm which sorts a random sized 
  array with random indeces.
  
  Time Complexity:
    Worst case performance - O(n^2)
    Best case performance - O(n)
    Average case performance - O(n^2)
    Worst case space complexity - O(1) auxiliary
=end

def bubble_sort arr, arr_size
  swapped = ''
  while swapped do 
   swapped = false
    (arr_size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  puts "\n"
  puts 'array sorted with bubble sort: '"#{arr}"
end
