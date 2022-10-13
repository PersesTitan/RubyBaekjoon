line = gets.chomp.split(" ")
a = line[0].to_i
b = line[1].to_i
c = line[2].to_i
p ([c, a-c].max * [b, a-b].max)*4
