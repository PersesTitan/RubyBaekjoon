n, s = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).to_a
dif = []
(0...n).each do |i|
  dif << (a[i]-s).abs
end
dif.uniq!
d = dif.min

def gcd(a, b)
  while b != 0
    b, a = a%b, b
  end
  a
end

(0...dif.length).each do |i|
  d = gcd(dif[i], d)
end
puts d

