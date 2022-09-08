i = gets.to_i
s = 2
while true
  if i == 1 || i == 2
    p i
    break
  end
  s *= 2
  if s>=i
    p (i-(s/2).to_i)*2
    break
  end
end
