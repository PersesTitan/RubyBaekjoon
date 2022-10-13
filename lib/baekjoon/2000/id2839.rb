n = gets.to_i

if n % 5 == 0
  puts (n/5).to_i
else
  p = 0
  while n > 0
    n -= 3
    p += 1
    if n%5 == 0
      p += (n/5).to_i
      puts p
      break
    elsif n == 1 || n == 2
      puts -1
      break
    elsif n == 0
      puts p
      break
    end
  end
end
