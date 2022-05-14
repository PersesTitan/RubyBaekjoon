# count = gets.to_i
#
# (1..count).each do
#   number = gets.chomp.split(" ")
#   (0..number[1].size-1).each do |i|
#     (1..number[0].to_i).each do
#       print number[1][i]
#     end
#   end
#   puts
# end

count = gets.to_i

(1..count).each do
  number = gets.chomp.split(" ")
  (0..number[1].size-1).each do |i|
    print number[1][i] * number[0].to_i
  end
  puts
end