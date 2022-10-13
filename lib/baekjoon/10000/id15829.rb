gets.to_i
m = 1234567891
r = 31
u = gets.chomp

an = 0
(0..u.length-1).each do |i|
  num = u[i].ord - 96
  an += num * (r**i)
end
print(an % m)
