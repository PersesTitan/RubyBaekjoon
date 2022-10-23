# 시간 초과 Pypy3
# import sys
# input = sys.stdin.readline
# n = int(input())
# s = [list(map(int, input().split())) for i in range(n)]
# dp = [[0] * n for i in range(n)]
# for i in range(1, n):
#     for j in range(n - i):
#         x = j + i
#         dp[j][x] = 2 ** 32
#         for k in range(j, x):
#             dp[j][x] = min(dp[j][x], dp[j][k] + dp[k + 1][x] + s[j][0] * s[k][1] * s[x][1])
# print(dp[0][n - 1])

n = gets.to_i
s = []
(0..n).each do
  s << gets.chomp.split.map(&:to_i)
end
dp = []
(0..n).each do
  dp << [0]*n
end

(1..n-1).each do |i|
  (0..n-i-1).each do |j|
    x = j + i
    dp[j][x] = 2 ** 32
    (j..x).each do |k|
      dp[j][x] = [dp[j][x], dp[j][k] + dp[k + 1][x] + s[j][0] * s[k][1] * s[x][1]].min
    end
  end
end
puts dp[0][n-1]