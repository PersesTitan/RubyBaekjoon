def get_value(x1, y1, x2, y2, x3, y3)
  (x2-x1)*(y3-y1) - (y2-y1)*(x3-x1)
end

x1, y1, x2, y2 = gets.chomp.split.map(&:to_i)
x3, y3, x4, y4 = gets.chomp.split.map(&:to_i)
mx1, my1, mx2, my2 = [x1, x2].min, [y1, y2].min, [x1, x2].max, [y1, y2].max
mx3, my3, mx4, my4 = [x3, x4].min, [y3, y4].min, [x3, x4].max, [y3, y4].max
v1 = get_value(x1, y1, x2, y2, x3, y3)
v2 = get_value(x1, y1, x2, y2, x4, y4)
v3 = get_value(x3, y3, x4, y4, x1, y1)
v4 = get_value(x3, y3, x4, y4, x2, y2)
if v1*v2 == 0 and v3*v4 == 0
  if mx1 <= mx4 and mx3 <= mx2 and my1 <= my4 and my3 <= my2
    puts 1
    exit(0)
  end
else
  if v1*v2 <= 0 and v3*v4 <= 0
    puts 1
    exit(0)
  end
end

puts 0
