require 'set'
line = gets.chomp

set = Set.new
(0..line.size).each do |i|
  (i..line.size).each do |j|
    set<<line[i..j]
  end
end
puts set.size-1