sum = Array.new

def count(n, sum)
  (2..44720).each do |i|
    tmp = n-sum[i]
    if tmp < 0
      return -1
    end
    if tmp%i == 0
      return i
    end
  end
  -1
end

sum << 0
(1..44720).each do |i|
  sum[i] = sum[i-1]+i
end
tc = gets.to_i
(1..tc).each do
  n = gets.to_i
  a = count(n, sum)
  if a == -1
    puts "IMPOSSIBLE"
  else
    print n
    print " = "
    b = (n-sum[a])/a
    (1..a-1).each do |i|
      print b+i
      print " + "
    end
    puts b+a
  end
end

