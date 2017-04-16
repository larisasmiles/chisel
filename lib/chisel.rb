require "./lib/paragraph.rb"


input_file = File.open(ARGV[0], "r") 
incoming_text = input_file.read
input_file.close

my_output = Paragraph.new(incoming_text)
writer = File.open(ARGV[1], "w")
writer.write(my_output)
writer.close





