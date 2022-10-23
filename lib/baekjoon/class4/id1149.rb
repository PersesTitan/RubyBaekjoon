n = gets.to_i
p = []
(0..n-1).each do
  p<<gets.chomp.split.map(&:to_i)
end
(1..p.length-1).each do |i|
  p[i][0] = [p[i - 1][1], p[i - 1][2]].min + p[i][0]
  p[i][1] = [p[i - 1][0], p[i - 1][2]].min + p[i][1]
  p[i][2] = [p[i - 1][0], p[i - 1][1]].min + p[i][2]
end
puts [p[n - 1][0], p[n - 1][1], p[n - 1][2]].min
