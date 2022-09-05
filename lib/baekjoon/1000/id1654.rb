k, n = gets.chomp.split(" ").map(&:to_i)
list = []
s = 1
(1..k).each do
  list<<gets.to_i
end
e = list.max
while  s <= e
  m = ((s+e)/2).to_i
  ls = 0
  list.each do |i|
    ls += (i/m).to_i
  end
  if ls>=n
    s = m + 1
  else
    e = m - 1
  end
end
p e