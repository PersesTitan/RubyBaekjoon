n = gets.to_i
a = gets.chomp.split.map(&:to_i)
dp = [1] * n
(1..n-1).each do |i|
  (0..i-1).each do |j|
    if a[i] > a[j]
      dp[i] = [dp[i], dp[j]+1].max
    end
  end
end

puts dp.max
