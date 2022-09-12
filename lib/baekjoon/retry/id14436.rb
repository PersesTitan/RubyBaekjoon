require 'set'

def count(line)
  set = Set.new
  (0..line.size).each do |i|
    (i..line.size).each do |j|
      set<<line[i..j]
    end
  end
  set.size-1
end

count = gets.to_i
text = Array.new
total = 0

(1..count).each do
  value = gets.chomp.split(" ")
  if value[0] == '+'
    text<<value[1]
  else
    text.delete_at(0)
  end
  total += count(text)
end

puts total % 1000000007
