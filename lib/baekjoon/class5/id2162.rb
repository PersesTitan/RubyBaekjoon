# 시간초과 pypy3
# import sys
# input = sys.stdin.readline
#
# n = int(input())
# s, par1, par2 = [], [], []
#
#
# def get_par(a):
#     if par1[a] == a:
#         return a
#     else:
#         par1[a] = get_par(par1[a])
#         return par1[a]
#
#
# def union(x, y):
#     par_x = get_par(x)
#     par_y = get_par(y)
#     if par_x > par_y:
#         par1[par_x] = par_y
#     elif par_y > par_x:
#         par1[par_y] = par_x
#
#
# def cs(p1, p2, p3):
#     temp = (p1[0] * p2[1]) + (p2[0] * p3[1]) + (p3[0] * p1[1])
#     temp = temp - (p1[1] * p2[0]) - (p2[1] * p3[0]) - (p3[1] * p1[0])
#     if temp > 0:
#         return 1
#     elif temp < 0:
#         return -1
#     else:
#         return 0
#
# def get_bool(l1, l2, l3, l4):
#     for i in range(0, 2):
#         if l1[i] > l3[i] and l1[i] > l4[i] and l2[i] > l3[i] and l2[i] > l4[i]:
#             return True
#         if l1[i] < l3[i] and l1[i] < l4[i] and l2[i] < l3[i] and l2[i] < l4[i]:
#             return True
#     return False
#
# def check(li1, li2):
#     l1 = [li1[0], li1[1]]
#     l2 = [li1[2], li1[3]]
#     l3 = [li2[0], li2[1]]
#     l4 = [li2[2], li2[3]]
#     result1 = cs(l1, l2, l3) * cs(l1, l2, l4)
#     result2 = cs(l3, l4, l1) * cs(l3, l4, l2)
#     if result1 <= 0 and result2 <= 0:
#         if not get_bool(l1, l2, l3, l4):
#             return True
#     return False
#
#
# for i in range(n):
#     s.append(list(map(int, input().split())))
#     par1.append(i)
#     par2.append(0)
# for i in range(n - 1):
#     for j in range(i + 1, n):
#         if check(s[i], s[j]):
#             union(i, j)
# cnt = 0
# max_num = 0
# for i in range(n):
#     if par1[i] == i:
#         cnt += 1
#     par2[get_par(i)] += 1
#     max_num = max(max_num, (par2[get_par(i)]))
# print(cnt)
# print(max_num)

n = gets.to_i
s, @par1, @par2 = [], [], []

def get_par(a)
  if @par1[a] == a
    a
  else
    get_par(@par1[a])
  end
end

def union(x, y)
  par_x = get_par(x)
  par_y = get_par(y)
  if par_x > par_y
    @par1[par_x] = par_y
  elsif par_y > par_x
    @par1[par_y] = par_x
  end
end

def cs(p1, p2, p3)
  temp = (p1[0] * p2[1]) + (p2[0] * p3[1]) + (p3[0] * p1[1]) -
    (p1[1] * p2[0]) - (p2[1] * p3[0]) - (p3[1] * p1[0])
  if temp > 0
    1
  elsif temp < 0
    -1
  else
    0
  end
end

def get_bool(l1, l2, l3, l4)
  (0..1).each do|i|
    if l1[i] > l3[i] and l1[i] > l4[i] and l2[i] > l3[i] and l2[i] > l4[i]
      return true
    end
  end
  (0..1).each do|i|
    if l1[i] < l3[i] and l1[i] < l4[i] and l2[i] < l3[i] and l2[i] < l4[i]
      return true
    end
  end
  false
end

def check(li1, li2)
  l1 = li1[0..1]
  l2 = li1[2..3]
  l3 = li2[0..1]
  l4 = li2[2..3]
  result1 = cs(l1, l2, l3) * cs(l1, l2, l4)
  result2 = cs(l3, l4, l1) * cs(l3, l4, l2)

  if result1 <= 0 and result2 <= 0
    unless get_bool(l1, l2, l3, l4)
      return true
    end
  end
  false
end

(0...n).each do |i|
  s << gets.chomp.split.map(&:to_i)
  @par1 << i
  @par2 << 0
end

(0...n-1).each do |i|
  (i+1...n).each do |j|
    if check(s[i], s[j])
      union(i, j)
    end
  end
end

cnt = 0
max_num = 0
(0...n).each do|i|
  if @par1[i] == i
    cnt += 1
  end
  max_num = [max_num, (@par2[get_par(i)] += 1)].max
end

puts cnt
puts max_num
