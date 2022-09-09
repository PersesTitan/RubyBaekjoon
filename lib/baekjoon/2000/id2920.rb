music = gets.chomp
if "1 2 3 4 5 6 7 8" == music
  puts "ascending"
elsif "8 7 6 5 4 3 2 1" == music
  puts "descending"
else
  puts "mixed"
end
