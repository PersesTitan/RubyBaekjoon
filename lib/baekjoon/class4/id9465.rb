t = gets.to_i
(0..t-1).each do
  s = []
  n = gets.to_i
  (0..1).each do
    s << gets.chomp.split.map(&:to_i)
  end
  (1..n-1).each do |j|
    if j == 1
      s[0][j] += s[1][j - 1]
      s[1][j] += s[0][j - 1]
    else
      s[0][j] += [s[1][j - 1], s[1][j - 2]].max
      s[1][j] += [s[0][j - 1], s[0][j - 2]].max
    end
  end
  puts [s[0][n - 1], s[1][n - 1]].max
end
