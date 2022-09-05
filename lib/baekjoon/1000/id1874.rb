s, a = [], []
f, c = true, 0

(0..gets.to_i-1).each do |i|
  n = gets.to_i
  while c<n
    c+=1
    s<<c
    a<<"+"
  end
  if s[-1] == n
    s.pop
    a<<"-"
  else
    puts "NO"
    f = false
    break
  end
end

if f
  puts a
end
