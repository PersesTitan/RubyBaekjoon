# 시간 초과 pypy
# import sys
# from collections import deque
#
# input = sys.stdin.readline
#
# n = int(input())
# q = deque()
# q.append([n])
# ans = []
#
# while q:
#     a = q.popleft()
#     x = a[0]
#     if x == 1:
#         ans = a
#         break
#
#     if x % 3 == 0:
#         q.append([x // 3] + a)
#
#     if x % 2 == 0:
#         q.append([x // 2] + a)
#
#     q.append([x - 1] + a)
#
# print(len(ans) - 1)
# ans.reverse()
# print(" ".join(map(str, ans)))


n = gets.to_i
q = []
q << [n]
ans = []

while q.length != 0
  a = q.shift
  x = a[0]
  if x == 1
    ans = a
    break
  end

  if x % 3 == 0
    q.append([(x/3).to_i] + a)
  end
  if x % 2 == 0
    q.append([(x/2).to_i] + a)
  end
  q << [x-1] + a
end
puts ans.length - 1
puts ans.reverse.join(" ")
