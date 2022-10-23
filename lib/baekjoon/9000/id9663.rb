# 시간 초과 -> pypy3
# n = int(input())
#
# ans = 0
# row = [0] * n
#
# def is_promising(x):
#   for i in range(x):
#     if row[x] == row[i] or abs(row[x] - row[i]) == abs(x - i):
#       return False
#     return True
#
#
#     def n_queens(x):
#       global ans
#     if x == n:
#       ans += 1
#     else:
#       for i in range(n):
#         row[x] = i
#         if is_promising(x):
#           n_queens(x + 1)
#
#
#         n_queens(0)
#         print(ans)
#
@n = gets.to_i
@ans = 0
@row = [0] * @n
def is_p(x)
  (0...x).each do |i|
    if @row[x] == @row[i] or (@row[x] - @row[i]).abs == (x - i).abs
      return false
    end
  end
  true
end

def n_q(x)
  if x == @n
    @ans += 1
  else
    (0...@n).each do |i|
      @row[x] = i
      if is_p(x)
        n_q(x+1)
      end
    end
  end
end

n_q(0)
puts @ans
