t = gets.to_i
(0..t-1).each do |i|
  a, b, c = gets.chomp.split(" ").map{|s| s.to_i}
  num = (c/a).to_i + 1
  f = c % a
  if c%a == 0
    num = (c/a).to_i
    f = a
  end
  puts f*100+num
end
