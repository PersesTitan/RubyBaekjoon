# 시간 초과 pypy3
# import sys
# a = sys.maxsize
# n, m, b = map(int, sys.stdin.readline().split())
# g = [list(map(int, sys.stdin.readline().split())) for _ in range(n)]
# he = 0
# for target in range(257):
#     max_, min_ = 0, 0
#     for i in range(n):
#         for j in range(m):
#             if g[i][j] >= target:
#                 max_ += g[i][j] - target
#             else:
#                 min_ += target - g[i][j]
#     if max_ + b >= min_:
#         if min_ + (max_ * 2) <= a:
#             a = min_ + (max_ * 2)
#             he = target
# print(a, he)
index = 0
max_time = 10000000000000
n, m, b = gets.split.map(&:to_i)
g = []
(1..n).each do
  g<<gets.split.map(&:to_i)
end

(0..256).each do |t|
  max, min = 0, 0
  (0..n-1).each do |i|
    (0..m-1).each do |j|
      if g[i][j] >= t
        max += (g[i][j] - t)
      else
        min += (t - g[i][j])
      end
    end
  end

  if (max + b) < min
    next
  end
  time = 2*max + min
  if time<=max_time
    max_time = time
    index = t
  end
end
puts "#{max_time} #{index}"
