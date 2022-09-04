# python
# from sys import stdin
# # input = stdin.readline
# from collections import deque
#
# t = int(input())
# dx, dy = [0, 0, -1, 1], [-1, 1, 0, 0]
#
#
# def start(x, y):
#     v[x][y] = True
#     q = deque([(x, y)])
#
#     while q:
#         px, py = q.popleft()
#         for kn in range(4):
#             mx = px + dx[kn]
#             my = py + dy[kn]
#             if 0 <= mx < n and 0 <= my < m:
#                 if l[mx][my] == 1 and not v[mx][my]:
#                     v[mx][my] = True
#                     q.append((mx, my))
#
#
# for _ in range(t):
#     m, n, k = map(int, input().split())
#     an = 0
#     l = [[0] * m for _ in range(n)]
#     v = [[False] * m for _ in range(n)]
#     for _ in range(k):
#         a, b = map(int, input().split())
#         l[b][a] = 1
#     for i in range(n):
#         for j in range(m):
#             if l[i][j] == 1 and not v[i][j]:
#                 start(i, j)
#                 an += 1
#     print(an)

t = gets.to_i
@dx, @dy = [0, 0, -1, 1], [-1, 1, 0, 0]
def bfs(x, y, n, m)
  @visited[x][y] = true
  q = [x, y]
  while q.length != 1 do
    a = q.shift
    px, py = a[0], a[1]
    (0..3).each do |k|
      mx = px + @dx[k]
      my = py + @dy[k]
      if (0 <= mx and mx < n) and (0 <= my and my < m)
        if @land[mx][my] == 1 and not @visited[mx][my]
          @visited[mx][my] = true
          q << [mx, my]
        end
      end
    end
  end
end

(0..t-1).each do
  m, n, k = gets.split.map(&:to_i)
  answer = 0
  @land = []
  (1..n).each do
    @land << [0] * m
  end
  @visited = []
  (1..n).each do
    @visited << [false] * m
  end

  (1..k).each do
    a, b = gets.split.map(&:to_i)
    @land[b][a] = 1
  end

  (0..n - 1).each do |i|
    (0..m - 1).each do |j|
      if @land[i][j] == 1 and not @visited[i][j]
        bfs(i, j, n, m)
        answer += 1
      end
    end
  end
  puts answer
end
