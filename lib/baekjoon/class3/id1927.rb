# python3
# import heapq
# from sys import stdin
# input = stdin.readline
#
# n = int(input())
# h = []
# for _ in range(n):
#     x = int(input())
#     if x == 0:
#         if not h:
#             print(0)
#         else:
#             print(heapq.heappop(h))
#     else:
#         heapq.heappush(h, x)

n = gets.to_i
heap = []
(1..n).each do
  x = gets.to_i
  if x == 0
    unless heap
      puts 0
    else
      puts heap
    end
  end
end