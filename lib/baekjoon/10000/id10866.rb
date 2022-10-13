array = []
count = gets.to_i
(1..count).each do
  text = gets.chomp.split(" ")
  if text[0] == "push_front"
    array.reverse!
    array << text[1]
    array.reverse!
  elsif text[0] == "push_back"
    array << text[1]
  elsif text[0] == "pop_front"
    array.reverse!
    puts array.empty? ? -1 : array.pop
    array.reverse!
  elsif text[0] == "pop_back"
    puts array.empty? ? -1 : array.pop
  elsif text[0] == "size"
    puts array.size
  elsif text[0] == "empty"
    puts array.empty? ? 1 : 0
  elsif text[0] == "front"
    puts array.empty? ? -1 : array[0]
  elsif text[0] == "back"
    puts array.empty? ? -1 : array[-1]
  end
end
