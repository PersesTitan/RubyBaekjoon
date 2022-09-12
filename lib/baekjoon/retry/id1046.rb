
count = 0
x = 0
y = 0
result = 0
test = gets.chomp.split(" ")
@height = test[0].to_i
@vertical = test[1].to_i
@position = []
@box = []
slopeList = []
(0..@height-1).each do
  @box<<gets.chomp
end

def search(x, y, pos, angle)
  pos = pos
  if x == -1 or x == @vertical or y == -1 or y == @height or @box[y][x] == '#'
    @position<<pos
  else
    x1 = angle[0] > 0 ? (x + 1) : (x - 1)
    x2 = angle[0] > 0 ? (x + 1) : (x)
    y1 = angle[0] * angle[1] > 0 ? (y + 1) : (y - 1)
    y2 = angle[0] * angle[1] > 0 ? (y + 1) : (y)
    y_nx = (pos[1] + (angle[1]) * (x2 - pos[0]))
    x_ny = (pos[0] + ((y2 - pos[1]) / (angle[1])))
    if y + 1e-7 < y_nx and y_nx < y + 1 - 1e-7 and (x_ny < x - 1e-7 or x_ny > x + 1 + 1e-7)
      pos = [x2, y_nx]
      search(x1, y, pos, angle)
    elsif x + 1e-7 < x_ny and x_ny < x + 1 - 1e-7 and (y - 1e-7 > y_nx or y_nx > y + 1 + 1e-7)
      pos = [x_ny, y2]
      search(x, y1, pos, angle)
    else
      pos = [x2, y2]
      if angle[1] > 0 and (x1 == -1 or x1 == @vertical or @box[y][x1] == '#')
        @position << pos
      end
      if angle[1] < 0 and (y1 == -1 or y1 == @height or @box[y1][x] == '#')
        @position << pos
      end
      search(x1, y1, pos, angle)
      if angle[1] > 0 and (y1 == -1 or y1 == @height or @box[y1][x] == '#')
        @position << pos
      end
      if angle[1] < 0 and (x1 == -1 or x1 == @vertical or @box[y][x1] == '#')
        @position << pos
      end
    end
    puts @position.to_s
  end
end

(0..@height-1).each do |i|
  (0..@vertical-1).each do |j|
    if @box[i][j] == '*'
      x = j
      y = i
      Light = [j+0.5, i+0.5]
    elsif @box[i][j] == '#'
      count += 1
    end
  end
end
(0..1).each do |i|
  (0..1).each do |j|
    slope = []
    j = @vertical * j
    i = @height * i
    slope = [j-Light[0]>0 ? 1 : -1, (i - Light[1]) / (j - Light[0])]
    slopeList<<slope
  end
end
(0..@height).each do |i|
  (0..@vertical).each do |j|
    slope = [j - Light[0] > 0 ? 1 : -1, (i - Light[1]) / (j - Light[0])]
    unless slope.include? slopeList
      slopeList<<slope
    end
  end
end
slopeList.each do |i|
  search(x, y, Light, i)
end

puts @position.to_s

(0..@position.length-1).each do |i|
  j = (i+1)%(@position.length)
  puts j
  a = ((Light[0] * @position[i][1] + @position[i][0] * @position[j][1] + @position[j][0] * Light[1]) - (@position[i][0] * Light[1] + @position[j][0] * @position[i][1] + Light[0] * @position[j][1])).abs
  result += a/2
end
puts @vertical
puts @height
puts result
puts count

puts (@vertical * @height - result - count).to_f
