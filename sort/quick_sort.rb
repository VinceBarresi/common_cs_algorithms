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

arr, i = [], 0

50.times do
  arr[i] = rand(1000)
  i += 1
end

puts 'Random Array:  ', "#{arr}"
 
# inplace quicksort 
def quick_sort arr, first, last
  return if first > last
  pivot = arr[(first + last) / 2]
  left = first
  right = last
  while left <= right
    while arr[left] < pivot
      left += 1
    end
      while arr[right] > pivot
        right -= 1
      end
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
