n = gets.to_i
count = 1
c = 1
while n > count
  count += 6*c
  c += 1
end
p c
