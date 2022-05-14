count = gets.to_i
value = gets.chomp
total = 0

(0..count-1).each do|i|
  total += value[i].to_i
end

pp total
