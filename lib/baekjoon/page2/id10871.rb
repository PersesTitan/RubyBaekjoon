count = gets.chomp
value = gets.chomp.split(" ")

number = count.split(" ")

(0..number[0].to_i-1).each do|i|
  if value[i].to_i < number[1].to_i
    print "#{value[i].to_i} "
  end
end