a, b, c, d = gets.chomp.split(" ").map(&:to_i)
p [a, b, c-a, d-b].min
