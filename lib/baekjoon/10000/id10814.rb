count = gets.to_i
array = []
(1..count).each do
  text = gets.chomp.split(" ")
  a = text[0].to_i
  b = text[1]
  array<<[a, b]
end

array.sort_by!{|v| v[0]}.each do |i|
  puts "#{i[0]} #{i[1]}"
end

