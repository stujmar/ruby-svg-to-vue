file = File.open("in/map.svg")
File.foreach("in/map.svg") { |line| puts line }
# File.foreach("in/text.txt") { |line| puts line }
file_data = file.read
file_data = file.readlines.map(&:chomp)
# puts 'Print File'
# puts file.to_s
# puts 'Print File Data'
# puts file_data.to_s

output_array = []
output_string = "<template>\n"
File.foreach("in/map.svg") { |line| output_array.append(line) }
output_array.each_with_index { 
    |line, index| 
    if /id="/.match(line)
        puts "we got a match at #{index}"
        output_array[index] = "updated path element"
    end
}
output_array.each { |line| output_string = output_string + "\t" + line }
output_string += "</template>"
File.write("out/map.vue", output_string)