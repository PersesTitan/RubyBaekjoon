def f(n)
  count = 0
  k = 0
  while 2**k <= n
    p = 2**(k+1)
    p_count = ((n+1)/p).to_i
    count += p_count * (p/2).to_i
    left = (n+1)%p
    count += [0, left-(p/2).to_i].max
    k+=1
  end
  count
end

a, b = gets.chomp.split.map(&:to_i)
puts f(b) - f(a-1)
