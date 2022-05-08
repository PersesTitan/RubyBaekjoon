count = gets.to_i

(1..count).each do
  value = gets.chomp
  a = value.split(" ")[0].to_i
  b = value.split(" ")[1].to_i
  puts "#{a + b}"
end
