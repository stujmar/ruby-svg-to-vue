# Arrays can hold a mixture of difference data types. [1, "two", 3.0]
my_array = [1, "two", 3.0]
print my_array

# Empty arrays can be generated with a new method on the array class. []
empty_array = Array.new
print empty_array

# Empty arrays of a certain length. [nil, nil, nil]
three_array = Array.new(3)
print three_array

# Empty array of a certain length and value.
true_array = Array.new(3, true)
print true_array

puts # new line

# Create a new array of empty hashes
hash_array = Array.new(3) { Hash.new }
print hash_array

# Create a new array and use an interator.
num_array = Array.new(3) {|i| i.to_s }
print num_array

puts # new line

# Use this method to create multidimensional arrays.
empty_table = Array.new(3) { Array.new(3) }
print empty_table

puts # new line

# There is also the array method.
method_array = Array({:a => "a", :b => "b"}) 
print method_array

# Accessing arrays.
access_array = [1, 2, 3, 4, 5, 6]
access_array[2] #=> 3
access_array[100] #=> nil
access_array[-3] #=> 4 (counts from the end)
access_array[1..4] #=> [2,3,4,5] from one index to another including both indices.
access_array[1..-3] #=> [2,3,4] from start index to backcount position.

# Or use the at method on the array
print access_array.at(5)

puts # line break

mixed_array = ["cool", "cool", "lame"]
cool_array = mixed_array.slice(0,2)
lame_array = mixed_array.slice(-1)
print cool_array
print lame_array

puts # line break

# Try out some fetch methods.
abc_array = ['a', 'b', 'c', 'd', 'e', 'f']
print abc_array.fetch(100, 'oops ')
print abc_array.fetch(2)

# First and last
print abc_array.first
print abc_array.last

# Take take or drop the first n elements
print abc_array.take(3)
print abc_array.drop(3)