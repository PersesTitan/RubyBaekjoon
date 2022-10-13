n = gets.to_i
array = []
(0..n-1).each do
  array<<gets.to_i
end
array.uniq.sort.each do |i|
  puts i
end