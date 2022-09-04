# python
# n, r, c = map(int, input().split())
# cnt = 0
#
#
# def start(x, y, l):
#     global cnt
#
#     if x == r and y == c:
#         print(cnt)
#         exit(0)
#     elif l == 1:
#         cnt += 1
#         return
#     elif not (x <= r <= x + l and y <= c <= y + l):
#         cnt += l * l
#         return
#
#     l //= 2
#     start(x, y, l)
#     start(x, y + l, l)
#     start(x + l, y, l)
#     start(x + l, y + l, l)
#
#
# start(0, 0, 2 ** n)
# print(cnt)
#
@n, @r, @c = gets.split.map(&:to_i)
@cnt = 0

def start(x, y, l)
  if x == @r and y == @c
    puts @cnt
    exit(0)
  end

  if l == 1
    @cnt += 1
    return
  end

  unless x <= @r and @r <= x + 1 and y <= @c and @c <= y + l
    @cnt += (l * l)
    return
  end
  l = (l/2).to_i
  start(x, y, l)
  start(x, y + l, l)
  start(x + l, y, l)
  start(x + l, y + l, l)
end

start(0, 0, 2**@n)
puts @cnt
