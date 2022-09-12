require 'set'
a = gets.split(" ")
n = a[0].to_i
k = a[1].to_i

while true
  set = Set.new
  cn = n
  while cn != 0
    set<<cn%10
    cn = cn/10
  end
  if set.size == k
    p n
    break
  end
  n+=1
end


a = gets.split(" ")
n = a[0].to_i
k = a[1].to_i
set = Set.new
while set.size != k
  n+=1
end
p n

# n > k
def nk(n)

end
