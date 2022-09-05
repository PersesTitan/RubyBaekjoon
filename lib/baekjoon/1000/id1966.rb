t = gets.to_i

(0..t-1).each do
  m = gets.chomp.split(" ").map { |v| v.to_i}[1]
  q = gets.chomp.split(" ").map { |v| v.to_i}.reverse
  count = 0
  while q
    b = q.max
    f = q.pop
    m-=1
    if b == f
      count+=1
      if m<0
        puts count
        break
      end
    else
      q = q.reverse<<f
      q.reverse!
      if m<0
        m = q.length-1
      end
    end
  end
end
