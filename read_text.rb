file = File.open("in/text.txt")
# puts file

file_data = file.read
# puts file_data

file_lines = file.readlines.map(&:chomp)
# puts file_lines

# Type Error
# file_split = file.read("in/text.txt").split
# puts file_split

line_array = []
File.foreach("in/text.txt") { |line| line_array.append(line) }
line_array = line_array.reverse()
puts line_array