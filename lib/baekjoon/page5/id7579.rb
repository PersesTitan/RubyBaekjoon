n, m = gets.chomp.split.map(&:to_i)
mem = gets.chomp.split.map(&:to_i).to_a
cost = gets.chomp.split.map(&:to_i).to_a
tc = cost.sum
res = 2147483647
dp = []
(0..n).each do
  dp << Array.new(tc+1, 0)
end

(0..n-1).each do |i|
  (0..tc-1).each do |j|
    if cost[i] > j
      dp[i][j] = dp[i-1][j]
    else
      dp[i][j] = [dp[i-1][j], mem[i] + dp[i-1][j-cost[i]]].max
    end
    if dp[i][j] >= m
      res = [res, j].min
    end
  end
end

if m == 0
  puts 0
elsif n == 1
  puts cost[0]
elsif res == 2147483647
  puts n*m
else
  puts res
end
