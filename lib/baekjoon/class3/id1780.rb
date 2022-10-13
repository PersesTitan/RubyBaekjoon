# 시간 초과 pypy3
# n = int(input())
# pan = [list(map(int, input().split())) for _ in range(n)]
# answer = [0, 0, 0]
#
# def start(x, y, l):
#     num = pan[x][y]
#
#     for i in range(x, x + l):
#         for j in range(y, y + l):
#
#             if pan[i][j] != num:
#                 l //= 3
#                 for k in range(3):
#                     for h in range(3):
#                         start(x + (k * l), y + (h * l), l)
#                 return
#     answer[num] += 1
#
# start(0, 0, n)
#
# print(answer[-1])
# print(answer[0])
# print(answer[1])
#
n = gets.to_i
@pan = []
(1..n).each do
  @pan << gets.split.map(&:to_i)
end
@ans = [0, 0, 0]

def start(x, y, l)
  num = @pan[x][y]
  (x..x+l-1).each { |i|
    (y..y+l-1).each do |j|
      if @pan[i][j] != num
        l = (l/3).to_i
        (0..2).each do |k|
          (0..2).each do |h|
            start(x+(k*l), y+(h*l), l)
          end
        end
        return
      end
    end
  }
  @ans[num] += 1
end

start(0, 0, n)
puts @ans[-1]
puts @ans[0]
puts @ans[1]

