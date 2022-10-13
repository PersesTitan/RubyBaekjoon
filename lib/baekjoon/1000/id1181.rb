array = []
count = gets.to_i
(1..count).each do
  array<<gets.chomp
end
puts array.uniq.sort.sort_by{|a| a.length}
