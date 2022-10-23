# 시간초과 pypy3
# import sys
# 
# input = sys.stdin.readline
# n = int(input())
# xlst, ylst, zlst = [], [], []
# 
# 
# def find(x):
#     if x != par[x]:
#         par[x] = find(par[x])
#     return par[x]
# 
# 
# def uni(x, y):
#     par[find(y)] = find(x)
# 
# 
# for i in range(n):
#     x, y, z = map(int, input().split())
#     xlst.append((x, i))
#     ylst.append((y, i))
#     zlst.append((z, i))
# xlst.sort()
# ylst.sort()
# zlst.sort()
# 
# ed = []
# for curList in xlst, ylst, zlst:
#     for i in range(1, n):
#         w1, a = curList[i - 1]
#         w2, b = curList[i]
#         ed.append((abs(w1 - w2), a, b))
# ed.sort(reverse=True)
# 
# par = [i for i in range(n + 1)]
# cnt, ans = n - 1, 0
# while cnt:
#     w, a, b = ed.pop()
#     if find(a) == find(b):
#         continue
#     uni(a, b)
#     cnt -= 1
#     ans += w
# print(ans)
n = gets.to_i
x_lst,y_lst,z_lst = [],[],[]
@parents = []
(0..n+1).each do |i| @parents<<i end
cnt, ans = n-1, 0

def find(x)
  if x != @parents[x]
    @parents[x] = find(@parents[x])
  end
  @parents[x]
end

def union(x, y)
  x = find(x)
  y = find(y)
  @parents[y] = x
end

(0..n-1).each do |i|
  value = gets.chomp.split.map(&:to_i)
  x, y, z = value[0], value[1], value[2]
  x_lst << [x, i]
  y_lst << [y, i]
  z_lst << [z, i]
end
x_lst.sort!
y_lst.sort!
z_lst.sort!

edges = []
[x_lst, y_lst, z_lst].each { |cur_list|
  (1..n-1).each do |i|
    w1, a = cur_list[i-1]
    w2, b = cur_list[i]
    edges << [(w1 - w2).abs, a, b]
  end
}
edges.sort!.reverse!
until cnt == 0
  value = edges.pop
  w, a, b = value[0], value[1], value[2]
  if find(a) == find(b)
    next
  end
  union(a, b)
  cnt -= 1
  ans += w
end
puts ans