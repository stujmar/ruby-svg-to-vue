file = File.open("in/map.svg")
File.foreach("in/map.svg") { |line| puts line }
# File.foreach("in/text.txt") { |line| puts line }
file_data = file.read
file_data = file.readlines.map(&:chomp)
puts 'Print File'
puts file.to_s
puts 'Print File Data'
puts file_data.to_s
# puts file.to_s
# puts file_data.to_s
# print file_data
File.write("out/map.vue", file)