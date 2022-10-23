b = []
n, m = gets.chomp.split.map(&:to_i)
(0...n).each do
  b << gets.chomp.split.map(&:to_i)
end
(0...n).each do |i|
  temp = gets.chomp.split.map(&:to_i).to_a
  (0...m).each do |j|
    b[i][j] += temp[j]
  end
end
(0...n).each do |i|
  puts b[i].join(" ")
end
