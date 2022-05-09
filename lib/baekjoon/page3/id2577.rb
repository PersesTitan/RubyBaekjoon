value1 = gets.to_i
value2 = gets.to_i
value3 = gets.to_i

total = value1 * value2 * value3
arr = Array.new

(0..9).each do
  arr << 0
end

while total > 0
  arr[total%10] += 1
  total /= 10
end

(0..9).each do |i|
  puts arr[i]
end
