n = gets.to_i
data = []
an = []
(0..n-1).each do |i|
  a, b = gets.chomp.split(" ").map{|s| s.to_i}
  data<<[a, b]
end

(0..n-1).each do |i|
  count = 0
  (0..n-1).each do |j|
    if data[i][0] < data[j][0] && data[i][1] < data[j][1]
      count += 1
    end
  end
  an << count + 1
end

an.each do |i|
  print i
  print " "
end
