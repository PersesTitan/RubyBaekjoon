count = gets.to_i

(1..count).each do |i|
  (1..count-i).each {
    print " "
  }

  (1..i).each {
    print "*"
  }

  print "\n"
end
