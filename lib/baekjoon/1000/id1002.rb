n = gets.to_i
(1..n).each do
  x1, y1, r1, x2, y2, r2 = gets.chomp.split.map(&:to_i)
  d = Math.sqrt((x1-x2)**2 + (y1-y2)**2)
  if d == 0 && r1 == r2
    puts -1
  elsif (r1-r2).abs == d || (r1 + r2) == d
    puts 1
  elsif (r1-r2).abs < d && d < (r1 + r2)
    puts 2
  else
    puts 0
  end
end
