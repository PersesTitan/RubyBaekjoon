n = gets.to_i
s = []
(0..9).each do
  s<<0
end
p = 1
while n != 0
  while n%10!=9
    n.to_s.split("").each do |i|
      s[i.to_i] += p
    end
    n-=1
  end
  if n<10
    (0..n).each do |i|
      s[i] += p
    end
    s[0] -= p
    break
  else
    (0..9).each do |i|
      s[i] += ((n/10).to_i + 1) * p
    end
  end
  s[0] -= p
  p *= 10
  n = (n/10).to_i
end
s.each do |i|
  print("#{i} ")
end