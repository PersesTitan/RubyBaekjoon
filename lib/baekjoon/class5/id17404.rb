INF = 2147000000
n = gets.to_i
rgb = []
ans = INF
(0...n).each do
  rgb << gets.chomp.split.map(&:to_i)
end

(0...3).each do |i|
  dp = []
  (0...n).each do
    dp << [INF, INF, INF]
  end
  dp[0][i] = rgb[0][i]
  (1...n).each do |j|
    dp[j][0] = rgb[j][0] + [dp[j-1][1], dp[j-1][2]].min
    dp[j][1] = rgb[j][1] + [dp[j-1][0], dp[j-1][2]].min
    dp[j][2] = rgb[j][2] + [dp[j-1][0], dp[j-1][1]].min
  end
  (0...3).each do |j|
    if i != j
      ans = [ans, dp[-1][j]].min
    end
  end
end

puts ans
