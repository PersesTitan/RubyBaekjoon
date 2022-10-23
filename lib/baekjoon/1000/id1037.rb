gets
list = gets.chomp.split.map(&:to_i).to_a
puts list.max * list.min
