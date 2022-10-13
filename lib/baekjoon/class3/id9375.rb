t = gets.to_i
(0..t-1).each do
  n = gets.to_i
  c = Hash.new

  (0..n-1).each do
    _, i = gets.split
    if c.include? i
      c[i] += 1
    else
      c[i] = 1
    end
  end
  ans = 1
  c.each { |k, v|
    ans *= (v + 1)
  }
  puts ans - 1
end