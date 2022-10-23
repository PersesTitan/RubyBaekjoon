n = gets.to_i
x, y = [], []
ans = 0
(0...n).each do
  a, b = gets.chomp.split.map(&:to_i)
  x << a
  y << b
end
x, y = x + [x[0]], y + [y[0]]

(0...n).each do |i|
  ans += (x[i]*y[i+1])-(x[i+1]*y[i])
end
puts (ans.abs.to_f/2).round(1)