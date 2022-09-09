n, m = gets.split.map(&:to_i)
dict = Hash.new
(1..n).each do |i|
  p = gets.chomp
  dict[i.to_s] = p
  dict[p] = i
end

(1..m).each do
  s = gets.chomp
  puts dict[s]
end


