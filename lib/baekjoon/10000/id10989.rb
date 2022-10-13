# 시간 초과 python3
# import sys
# n = int(input())
# n_list = [0] * 10001
# for i in range(n):
#     n_list[int(sys.stdin.readline())] += 1
# for i in range(10001):
#     if n_list[i] != 0:
#         for j in range(n_list[i]):
#             print(i)

count = gets.to_i
array = []
(0..10000).each do
  array<<0
end
(1..count).each do
  array[gets.to_i]+=1
end

(0..10000).each do |i|
  if array[i] != 0
    (0..array[i]-1).each do
      puts i
    end
  end
end
