n = gets.to_i
(0..n-1).each do
  k = gets.to_i
  d = [0, 1, 2, 4]
  (4..k+1).each do |i|
    d << (d[i-1]+d[i-2]+d[i-3])
  end
  puts d[k]
end
