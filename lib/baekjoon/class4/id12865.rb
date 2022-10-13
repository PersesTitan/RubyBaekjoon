n, k = gets.chomp.split.map(&:to_i)
thing = [[0, 0]]
(0..n-1).each do |i|
  thing<<gets.chomp.split.map(&:to_i)
end
d = []
(0..n).each do
  d<<[0]*(k+1)
end

(1..n).each do |i|
  (1..k).each do |j|
    w = thing[i][0]
    v = thing[i][1]
    if j<w
      d[i][j] = d[i-1][j]
    else
      d[i][j] = [d[i-1][j], d[i-1][j-w]+v].max
    end
  end
end
puts d[n][k]
