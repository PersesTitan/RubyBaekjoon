# python
# from collections import deque
#
# n, m = map(int, input().split())
# g = [[] for _ in range(n + 1)]
# ans = []
#
# for _ in range(m):
#     a, b = map(int, input().split())
#     g[a].append(b)
#     g[b].append(a)
#
#
# def bfs(x, step):
#     visited = [False] * (n + 1)
#     visited[x] = True
#     step_arr = [0] * (n + 1)
#     q = deque([(x, step)])
#
#     while q:
#         node, step = q.popleft()
#
#         step_arr[node] = step
#
#         for index in g[node]:
#             if not visited[index]:
#                 visited[index] = True
#                 q.append((index, step + 1))
#     ans.append(sum(step_arr))
#
#
# for i in range(1, len(g)):
#     bfs(i, 0)
# print(ans.index(min(ans)) + 1)
@n, m = gets.split.map(&:to_i)
@graph = []
(0..@n).each do
  @graph<<[]
end
@ans = []

(0..m-1).each do
  a, b = gets.split.map(&:to_i)
  @graph[a]<<b
  @graph[b]<<a
end

def bfs(x, step)
  visited = [false]*(@n+1)
  visited[x] = true
  arr = [0] * (@n+1)
  q = [x, step]

  until q.length == 0
    test = q.shift
    node = test[0]
    step = test[1]

    arr[node] = step
    @graph.each do |i|
      unless visited[i]
        visited[i] = true
        q<<[i, step+1]
      end
    end
  end
  @ans << arr.sum
end

(1..@graph.length-1).each do |i|
  bfs(i, 0)
end

puts @ans[@ans.min] + 1
