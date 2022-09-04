count = gets.to_i
array = []
(1..count).each do
  array<<gets.chomp.split("")
end

(0..array[0].length-1).each do |i|
  set = []
  (0..count-1).each do|j|
    set<<array[j][i]
  end
  if set.uniq.size == 1
    print set[0]
  else
    print "?"
  end
end
