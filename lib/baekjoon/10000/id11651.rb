n = gets.to_i
a = []
(1..n).each do
  a<<gets.split.map(&:to_i)
end
a.sort_by!{|t| t[0]}
a.sort_by!{|t| t[1]}
a.each { |v|
  puts "#{v[0]} #{v[1]}"
}
