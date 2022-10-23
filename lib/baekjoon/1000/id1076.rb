color = Hash["black" => 0 ,"brown" => 1 ,"red" => 2 ,"orange" => 3 ,"yellow" => 4 ,"green" => 5 ,"blue" => 6 ,"violet" => 7 ,"grey" => 8 ,"white" => 9]
a = color[gets.chomp]
b = color[gets.chomp]
c = color[gets.chomp]
puts (a.to_s + b.to_s).to_i * (10 ** c)