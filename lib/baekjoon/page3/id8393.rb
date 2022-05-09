number = gets.to_i

total = 0
(1..number).each do |i|
  total += i
end

puts total
