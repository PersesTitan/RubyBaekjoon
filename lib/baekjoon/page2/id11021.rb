count = gets.to_i

(1..count).each do|i|
  text = gets.chomp
  a = text.split(" ")[0].to_i
  b = text.split(" ")[1].to_i

  puts "Case ##{i}: #{a+b}"
end
