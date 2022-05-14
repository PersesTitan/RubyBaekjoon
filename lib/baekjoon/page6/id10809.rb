value = gets.chomp

(97..122).each do |i|
  a = value.index(i.chr)
  if a == nil
    print -1
  else
    print a
  end
  print " "
end
