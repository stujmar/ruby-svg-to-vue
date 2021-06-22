file = File.open("in/text.txt")
# puts file

file_data = file.read
# puts file_data

file_lines = file.readlines.map(&:chomp)
# puts file_lines

# Type Error
# file_split = file.read("in/text.txt").split
# puts file_split

line = []
File.foreach("in/text.txt") { |line| puts line }