n = gets.to_i
t = []
(0..n-1).each do |i|
  t << gets.chomp.split.map(&:to_i)
end
k = 2
(1..n-1).each do |i|
  (0..k-1).each do |j|
    if j == 0
      t[i][j] = t[i][j] + t[i - 1][j]
    elsif i == j
      t[i][j] = t[i][j] + t[i - 1][j - 1]
    else
      t[i][j] = [t[i - 1][j - 1], t[i - 1][j]].max + t[i][j]
    end
  end
  k += 1
end

puts t[n-1].max
