# python3
# import sys
# import heapq
#
# n, k = map(int, sys.stdin.readline().split())
# a, j, bs, tj = 0, [], [], []
# for _ in range(n):
#     heapq.heappush(j, list(map(int, sys.stdin.readline().split())))
# for _ in range(k):
#     bs.append(int(sys.stdin.readline()))
# bs.sort()
#
# for b in bs:
#     while j and b >= j[0][0]:
#         heapq.heappush(tj, -heapq.heappop(j)[1])
#     if tj:
#         a -= heapq.heappop(tj)
#     elif not j:
#         break
#
# print(a)
