def bubble_sort(array)
  # Get the length of the array
  n = array.length

  # Outer loop to iterate through each element in the array
  (0...n).each do |i|
    # Inner loop to compare and swap adjacent elements
    # The range is reduced by 1 in each iteration as the largest element is already sorted
    (0...(n - i - 1)).each do |j|
      # Compare adjacent elements and swap if they are in the wrong order
      if array[j] > array[j + 1]
        # Swap elements using parallel assignment
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end

  # Return the sorted array
  array
end

# Example usage:
unsorted_array = [64, 25, 12, 22, 11]
sorted_array = bubble_sort(unsorted_array.clone) # Clone the array to keep the original unsorted
puts "Unsorted Array: #{unsorted_array}"
puts "Sorted Array: #{sorted_array}"
