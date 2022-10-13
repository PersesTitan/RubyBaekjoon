check = true
v = gets.to_i
(0..v-1).each do |i|
  t = i.to_s.split("").map { |j| j.to_i}.sum
  if (i+t) == v
    check = false
    p i
    break
  end
end

if check
  p 0
end
