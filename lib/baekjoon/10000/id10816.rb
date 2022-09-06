gets
a_list = gets.chomp.split(" ").map { |v| v.to_i}.sort
gets
b_list = gets.chomp.split(" ").map { |v| v.to_i}

hash = Hash.new
a_list.each { |i|
  if hash.include? i
    hash[i] += 1
  else
    hash[i] = 1
  end
}

b_list.each { |i|
  if hash.include? i
    print("#{hash[i]} ")
  else
    print("0 ")
  end
}