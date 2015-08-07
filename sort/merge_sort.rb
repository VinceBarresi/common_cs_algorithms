=begin
Merge Sort Algorithm

Time Complexity:  
  Worst case performance - O(n log n)
  Best case performance - O(n log n) typical, O(n) natural variant
  Average case performance - O(n log n)
  Worst case space complexity - О(n) total, O(n) auxiliary
=end

arr, arr_size = [], rand(100)

arr_size.times do |i|
  arr[i] = rand(100)
end

puts 'Random Array: '"#{arr}"
puts "\n"

def merge_sort arr 
  return arr if arr.size <= 1
  middle  = (arr.length / 2).floor
  left = merge_sort(arr[0..middle - 1])
  right = merge_sort(arr[middle..arr.length - 1])
  p merge left, right
end

def merge left, right
  return right if left.empty?
  return left if right.empty?
  left.first <= right.first ? el_to_sort = left.shift : el_to_sort = right.shift 
  [el_to_sort] + merge(left, right)
end

merge_sort arr
