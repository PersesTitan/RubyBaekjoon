v1 = gets.to_i
v2 = gets.chomp
v = v2.split("")
i = v.length - 1
(0..i).each do|c|
  puts v1 * v[i-c].to_i
end
puts v1 * v2.to_i
