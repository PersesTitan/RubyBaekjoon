n = gets.to_i
s = 666
c = 0

until c == n
  if s.to_s.include? '666'
    c+=1
  end
  s+=1
end
puts s-1

