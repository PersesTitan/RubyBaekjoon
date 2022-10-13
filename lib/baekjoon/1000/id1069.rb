a, b, c, d = gets.chomp.split(" ").map { |v| v.to_i}
l = Math.sqrt(a**2+b**2)
if l>=c
  j = (l/c).to_i
  puts sprintf('%.10f', [l, j*d+l-(j*c), (j+1)*d].min)
else
  puts sprintf('%.10f', [l, d+c-l, 2*d].min)
end
