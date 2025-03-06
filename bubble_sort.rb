#Sorts the array by comparing every two elements and shifting the smaller one left
#is_swapped is used to stop an iteration incase no two elements are swapped 
def bubble_sort(array)
  n = array.size

  (n - 1).times do |check|
    is_swapped = false
    (0...n-1-check).each do |i|  #range excludes upper-limit here in order to compare last two elements
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        is_swapped = true
      end
    end
    break unless is_swapped
  end
  array
end