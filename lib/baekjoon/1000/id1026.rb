count = gets.chomp.to_i
a = Array.new
b = Array.new

def add(array)
  gets.chomp.split(" ").each { |value|
    array<<value.to_i
  }
end

add(a)
add(b)
a = a.sort
b = b.sort.reverse

total = 0

(0..count-1).each do |i|
  total += (a[i] * b[i])
end

puts total

