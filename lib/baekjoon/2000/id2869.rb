# 시간 초과 -> pypy3
# a, b, c = map(int, input().split())
# k = (c-b)/(a-b)
# print(int(k) if k==int(k) else int(k)+1)

a, b, c = gets.chomp.split(' ').map{|s| s.to_i}
k = (c-b)/(a-b)
puts k==k.to_i ? k.to_i : k.to_i+1
