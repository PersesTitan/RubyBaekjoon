gets.chomp.split("").each do |n|
  print /[a-z]/.match(n) ? n.upcase : n.downcase
end
