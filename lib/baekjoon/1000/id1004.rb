t = gets.to_i
(0...t).each do
  cnt = 0
  x1, y1, x2, y2 = gets.chomp.split.map(&:to_i)
  n = gets.to_i
  (0...n).each do
    px, py, pr = gets.chomp.split.map(&:to_i)
    d1 = (((x1 - px) ** 2) + ((y1 - py) ** 2)) ** 0.5
    d2 = (((x2 - px) ** 2) + ((y2 - py) ** 2)) ** 0.5
    if (d1 < pr and d2 > pr) or (d1 > pr and d2 <pr)
      cnt += 1
    end
  end
  puts cnt
end
