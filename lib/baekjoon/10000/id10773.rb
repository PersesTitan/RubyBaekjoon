k = gets.to_i
array = []
(0..k-1).each do |i|
  num = gets.to_i
  if num == 0
    array.pop
  else
    array << num
  end
end
puts array.sum
