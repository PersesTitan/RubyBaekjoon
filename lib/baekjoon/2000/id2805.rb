# 런타임 오류 ... pypy3로 해결함
m = gets.chomp.split(" ").map{|s| s.to_i}[1]
t = gets.chomp.split(" ").map{|s| s.to_i}
s = 1
e = t.sum
while s <= e
  mi = ((s+e)/2).to_i
  c = 0
  t.each { |o|
    if o>mi
      c += o-mi
    end
  }
  if c >= m
    s = mi+1
  else
    e = mi-1
  end
end
p e
