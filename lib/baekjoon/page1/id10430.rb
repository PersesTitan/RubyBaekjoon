values = gets.chomp.split
a = values[0].to_i
b = values[1].to_i
c = values[2].to_i
puts (a+b)%c
puts ((a%c)+(b%c))%c
puts (a*b)%c
puts ((a%c)*(b%c))%c
