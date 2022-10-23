dp0, dp1, dp2 = [1, 1, 5], [1], [1]
i = 2
(0...gets.to_i).each do
  n = gets.to_i
  (i+1..n).each do |j|
    if j % 2 != 0
      dp0 << dp0[-1] + dp0[-2] * 4 + dp1[-1] * 3 - dp2[-1]
    else
      dp0 << dp0[-1] + dp0[-2] * 4 + dp1[-1] * 2 + dp2[-1]
      dp2 << dp2[-1] + dp0[-3]
    end
    dp1 << dp1[-1] + dp0[-3]
  end
  i = n
  puts dp0[n]
end
