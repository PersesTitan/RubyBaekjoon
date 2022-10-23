t = gets.to_i
(1..t).each do
  n = gets.to_i
  point = []
  tx = 0
  ty = 0
  (0..n-1).each do
    x, y = gets.chomp.split.map(&:to_i)
    point << [x, y]
    tx += x
    ty += y
  end
  ret = 2147483647
  com = point.combination((n/2).to_i).to_a
  com_l = (com.length/2).to_i

  com[..com_l].each { |el|
    x1_t = 0
    y1_t = 0
    (el).each { |va|
      x1, y2 = va[0], va[1]
      x1_t += x1
      y1_t += y2
    }
    x2_t = tx - x1_t
    y2_t = ty - y1_t
    ret = [ret, Math.sqrt((x1_t - x2_t) ** 2 + (y1_t - y2_t) ** 2)].min
  }
  puts ret
end
