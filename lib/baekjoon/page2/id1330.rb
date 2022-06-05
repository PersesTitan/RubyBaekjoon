values = gets.chomp.split
a = values[0].to_i
b = values[1].to_i

if a > b
  puts ">"
elsif a < b
  puts "<"
else
  puts "=="
end
