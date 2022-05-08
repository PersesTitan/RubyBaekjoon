module Start
  year = gets.chomp.to_i
  if (year%4 == 0 and year%100 != 0) or year%400 == 0
    puts "1"
  else
    puts "0"
  end
end