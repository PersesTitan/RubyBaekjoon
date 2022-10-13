while true
  a = gets.chomp.split(" ").map{|s| s.to_i}
  if a.sum == 0
    break
  end
  mn = a.max
  a.delete(mn)
  if a[0]**2 + a[1]**2 == mn**2
    puts 'right'
  else
    puts 'wrong'
  end
end