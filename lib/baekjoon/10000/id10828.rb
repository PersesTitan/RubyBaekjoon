array = []
count = gets.to_i
(1..count).each do
  text = gets.chomp.split(" ")
  if text[0] == "push"
    array<<text[1].to_i
  elsif text[0] == "top"
    puts array.empty? ? -1 : array[-1]
  elsif text[0] == "pop"
    puts array.empty? ? -1 : array.pop
  elsif text[0] == "size"
    puts array.size
  elsif text[0] == "empty"
    puts array.empty? ? 1 : 0
  end
end