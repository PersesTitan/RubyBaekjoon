nums = gets.chomp.split(" ")
total = nums.pop.to_i**2
nums.each { |n|
  total += n.to_i**2
}
puts total%10
