t = gets.to_i
(0..t-1).each do
  n = gets.to_i
  d = [0, 1, 1, 1]
  (4..n).each do |i|
    d<<(d[i-2]+d[i-3])
  end
  puts d[n]
end
