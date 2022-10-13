a, b = gets.chomp.split(" ").map{|s| s.to_i}
value = b - a + 1
check = []
(1..value).each do
  check<<false
end
i = 2
while i**2 <= b
  sn = i**2
  r = a%sn == 0 ? 0 : 1
  j = (a/sn).to_i + r
  while sn*j <= b
    unless check[sn * j - a]
      check[sn*j-a]=true
      value -=1
    end
    j+=1
  end
  i+=1
end
puts value
