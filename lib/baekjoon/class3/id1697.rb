# 다른 결과값 python
# from collections import deque
#
# n, k = map(int, input().split())
#
# step = [0] * 100001
# q = deque([n])
# while q:
#     node = q.popleft()
#     if node == k:
#         print(step[node])
#         break
#
#     for x in (node - 1, node + 1, node * 2):
#         if 0 <= x <= 100000 and not step[x]:
#             step[x] = step[node] + 1
#             q.append(x)

n, k = gets.split.map(&:to_i)
step = [0] * 100001
q = [n]
while q.length != 0
  node = q.shift

  if node == k
    puts step[node]
    break
  end

  [node - 1, node + 1, node * 2].each do |x|
    if (0 <= x and x <= 100000) and not step[x]
      step[x] = step[node] + 1
      q<<x
    end
  end
end
