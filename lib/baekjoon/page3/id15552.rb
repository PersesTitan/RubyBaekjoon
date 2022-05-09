number = gets.to_i

(1..number).each do |i|
  text = gets.chomp
  a = text.split(" ")[0].to_i
  b = text.split(" ")[1].to_i
  puts a + b
end
