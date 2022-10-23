while true
  a, b = gets.chomp.split.map(&:to_i)
  if a == 0 and b == 0
    break
  end
  puts a > b ? "Yes" : "No"
end
