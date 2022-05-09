count = gets.to_i
values = gets.chomp.split(" ")
arr = Array.new

(0..count-1).each do |i|
  arr << values[i].to_i
end

print "#{arr.min} #{arr.max}"
