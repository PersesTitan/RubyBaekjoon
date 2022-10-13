n = gets.to_i
d = [0] * (n+1)

(2..n).each do |i|
  d[i] = d[i-1] + 1
  if i%3 == 0
    d[i] = [d[i], d[(i/3).to_i]+1].min
  end
  if i%2 == 0
    d[i] = [d[i], d[(i/2).to_i]+1].min
  end
end
puts d[n]