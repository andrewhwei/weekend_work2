# Complete the method called split_array, which two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)

  array_of_arrays = []
  temp_array = []

  array.each_with_index do |element, index|
    if array.size - 1 == index && temp_array.size < array_size
      temp_array.push(element)
      array_of_arrays.push(temp_array)
    elsif temp_array.size < array_size
      temp_array.push(element)
    else
      array_of_arrays.push(temp_array)
      temp_array = []
      temp_array.push(element)
    end
  end

  return array_of_arrays
end

# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end