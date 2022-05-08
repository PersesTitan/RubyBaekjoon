module Start
  a = gets.chomp.to_i
  # if a >= 90 and a <= 100 이렇게도 가능함
  if a >= 90 && a <= 100
    puts 'A'
  elsif a >= 80 and a <= 89
    puts 'B'
  elsif a >= 70 and a <= 79
    puts "C"
  elsif a >= 60 and a <= 69
    puts "D"
  else
    puts "F"
  end
end