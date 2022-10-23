# 시간 초과 pypy3
# n, m, k = map(int, input().split())
# nums = sorted(map(int, input().split()))
# prt = [i for i in range(m)]
# seq = list(map(int, input().split()))
#
#
# def find(x):
#     if x == prt[x]:
#         return x
#
#     v = find(prt[x])
#     prt[x] = v
#     return v
#
#
# def uni(x, y):
#     if y >= m:
#         return
#
#     x = find(x)
#     y = find(y)
#     prt[x] = y
#
#
# def upper_b(x):
#     s, e = 0, m
#     while s < e:
#         mid = (s + e) // 2
#         if nums[mid] > x:
#             e = mid
#         else:
#             s = mid + 1
#     return e
#
#
# for num in seq:
#     idx = find(upper_b(num))
#     print(nums[idx])
#     uni(idx, idx + 1)
n, @m, k = gets.chomp.split.map(&:to_i)
@nums = gets.chomp.split.map(&:to_i).sort
@prt = []
(0..@m).each do |i| @prt << i end
seq = gets.chomp.split.map(&:to_i).to_a

def find(x)
  if x == @prt[x]
    return x
  end
  v = find(@prt[x])
  @prt[x] = v
  v
end

def union(x, y)
  if y >= @m
    return
  end
  x = find(x)
  y = find(y)
  @prt[x] = y
end

def upper_b(x)
  s, e = 0, @m
  while s<e
    mid = ((s+e)/2).to_i
    if @nums[mid] > x
      e = mid
    else
      s = mid + 1
    end
  end
  e
end

seq.each { |num|
  idx = upper_b(num)
  idx = find(idx)
  puts @nums[idx]
  union(idx, idx+1)
}
