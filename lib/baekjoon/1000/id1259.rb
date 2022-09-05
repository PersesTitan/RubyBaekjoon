while true
  text = gets.chomp
  if text=="0"
    break
  else
    if text == text.reverse
      puts "yes"
    else
      puts "no"
    end
  end
end
