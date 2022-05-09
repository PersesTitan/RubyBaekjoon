count = gets.to_i
subject = Array.new
values = gets.chomp.split(" ")

values.each { |value|
  subject << value.to_i
}

puts subject.reduce(:+).to_f/ count / subject.max * 100
