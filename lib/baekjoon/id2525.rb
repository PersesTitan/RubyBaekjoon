text = gets.chomp
use_time = gets.to_i
a = text.split(" ")[0].to_i
b = text.split(" ")[1].to_i
day = 60 * 24

b += a * 60
b += use_time

if b >= day
  b -= day
end

hour = b/60
min = b%60
printf "%d %d", hour, min
