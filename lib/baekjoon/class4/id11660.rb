n, m = gets.chomp.split.map(&:to_i)
dp = []
(0..n).each do dp<<[0]*(n+1) end
s = []
(1..n).each do s<<gets.chomp.split.map(&:to_i) end
(0..n-1).each do |i|
  (0..n-1).each do |j|
    dp[i+1][j+1] = (dp[i][j+1] + dp[i+1][j] - dp[i][j]) + s[i][j]
  end
end
(0..m-1).each do
  x1, y1, x2, y2 = gets.chomp.split.map(&:to_i)
  puts dp[x2][y2] - (dp[x1-1][y2] + dp[x2][y1-1] - dp[x1-1][y1-1])
end
