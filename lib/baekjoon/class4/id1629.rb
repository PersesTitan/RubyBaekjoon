a, b, @c = gets.chomp.split.map(&:to_i)
def mul(a, n)
  if n == 1
    return a%@c
  else
    tmp = mul(a, (n/2).to_i)
    if n%2 == 0
      return (tmp*tmp)%@c
    else
      return (tmp*tmp*a)%@c
    end
  end
end
puts mul(a, b)
