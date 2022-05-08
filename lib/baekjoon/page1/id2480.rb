text = gets.chomp
a = text.split(" ")[0].to_i
b = text.split(" ")[1].to_i
c = text.split(" ")[2].to_i

def max(a, b, c)
  max_value = a
  if max_value < b
    max_value = b
  end

  if max_value < c
    max_value = c
  end

  max_value
end

if a == b && b == c
  puts 10000 + a * 1000
elsif a == b || a == c
  puts 1000 + a * 100
elsif b == c
  puts 1000 + b * 100
else
  puts max(a, b, c) * 100
end