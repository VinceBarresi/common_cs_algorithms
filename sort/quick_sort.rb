=begin
  Quicksort Algorithm
  
  Time Complexity: 
    Worst case performance  O(n2)
    Best case performance O(n log n) (simple partition)
    or O(n) (three-way partition and equal keys)
    Average case performance  O(n log n)
    Worst case space complexity O(n) auxiliary (naive)
    O(log n) auxiliary (Sedgewick 1978)
=end

arr = []

50.times do |i|
  arr[i] = rand(1000)
end

puts 'Random Array:  ', "#{arr}"
 
# inplace quicksort 
def quick_sort arr, first, last
  return if first > last
  pivot, left, right = arr[(first + last) / 2], first, last
  while left <= right
    left += 1 while arr[left] < pivot
      right -= 1 while arr[right] > pivot
      if left <= right
        arr[left], arr[right] = arr[right], arr[left]
        left += 1
        right -= 1 
      end
  end
  quick_sort arr, first, right
  quick_sort arr, left, last
  p arr
end

quick_sort arr, 0, 49
