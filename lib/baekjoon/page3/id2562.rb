arr = Array.new

(0..8).each do |i|
  arr << gets.to_i
end

int = arr.max
(1..9).each do |i|
  if int == arr[i-1]
    puts int
    puts i
  end
end