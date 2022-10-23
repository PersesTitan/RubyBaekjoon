n = gets.to_i
dp = []
(0..9).each do dp << [0]*1024 end

(1..9).each do |i|
  dp[i][1<<i] = 1
end

(1..n-1).each do |i|
  dp_next = []
  (0..9).each do dp_next << [0]*1024 end
  (0..9).each do |e|
    (0..1023).each do |bm|
      if e < 9
        dp_next[e][bm | (1<<e)] = (dp_next[e][bm | (1<<e)] + dp[e+1][bm]) % 1000000000
      end
      if e > 0
        dp_next[e][bm | (1<<e)] = (dp_next[e][bm | (1<<e)] + dp[e-1][bm]) % 1000000000
      end
    end
  end
  dp = dp_next
end
total = 0
(0..9).each { |i| total += dp[i][1023] }
puts total % 1000000000
