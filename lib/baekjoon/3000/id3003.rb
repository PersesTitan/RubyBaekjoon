a = [1, 1, 2, 2, 2, 8]
b = gets.chomp.split.map(&:to_i)
(0...a.length).each do |i|
  print "#{a[i] - b[i]} "
end

