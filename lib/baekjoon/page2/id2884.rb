text = gets.chomp
h = text.split(" ")[0].to_i
m = text.split(" ")[1].to_i

m += (h*60)
m -= 45
if m<0
  m = (60 * 24) + m
  hour = m/60
  min = m%60
  puts "#{hour} #{min}"
else
  hour = m/60
  min = m%60
  puts "#{hour} #{min}"
end
