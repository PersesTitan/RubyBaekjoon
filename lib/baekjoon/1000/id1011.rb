v = gets.to_i
(0..v-1).each do
  x, y = gets.chomp.split(" ").map{|s| s.to_i}
  d = y - x
  n = 0
  while true
    if  d<= n*(n+1)
      break
    end
    n+=1
  end
  if d <= n**2
    puts n*2-1
  else
    puts n*2
  end
end

