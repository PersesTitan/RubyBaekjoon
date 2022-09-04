white = Array.new
test = gets.chomp.split(" ")
@height = test[0].to_i
@vertical = test[1].to_i
@x_axis = 0
@y_axis = 0
@position = []
@box = []
i_list = []
count = 0
result = 0
(0..@height-1).each do
  @box<<gets.chomp
end

def height(x, y)
  y == -1 || y == @height || @box[y][x] == '#'
end

def vertical(x, y)
  x == -1 || x == @vertical || @box[y][x] == '#'
end

def search(x, y, pos, a)
  if x == -1 || x == @vertical || y == -1 || y == @height || @box[y][x] == '#'
    @position<<pos
  else
    x1 = a[0] > 0 ? x+1 : x-1
    x2 = a[0] > 0 ? x+1 : x
    y1 = a[0]*a[1] > 0 ? y+1 : y-1
    y2 = a[0]*a[1] > 0 ? y+1 : y
    y_nx = (pos[1]+a[1] * (x2-pos[0]))
    x_ny = (pos[0]+((y2-pos[1]) / a[1]))
    if y+10**-7 < y_nx && y_nx < y+1-10**-7 && (x_ny < x - 10**-7 || x_ny > x+1+10**-7)
      pos = [x2, y_nx]
      search(x1, y, pos, a)
    elsif x + 10**-7 < x_ny && x_ny < x+1-10**-7 && (y-10**-7 > y_nx || y_nx > y+1+10**-7)
      pos = [x_ny, y2]
      search(x, y1, pos, a)
    else
      pos = [x2, y2]
      if a[1] > 0 && vertical(x1, y)
        @position << pos
      end
      if a[1] < 0 && height(x, y1)
        @position << pos
      end
      search(x1, y1, pos, a)
      if a[1] > 0 && height(x, y1)
        @position << pos
      end
      if a[1] < 0 && vertical(x1, y)
        @position << pos
      end
    end
  end
end


(0..@height-1).each do |i|
  (0..@vertical-1).each do |j|
    if @box[i][j] == '*'
      @x_axis = j
      @y_axis = i
      white = [j+0.5, i+0.5]
    elsif @box[i][j] == '#'
      count += 1
    end
  end
end

(0..1).each do |i|
  (0..1).each do |j|
    j = @vertical * j
    i = @height * i
    item = [j-white[0]>0 ? 1 : -1, (i-white[1])/(j-white[0])]
    i_list<<item
  end
end
(0..@height).each do |i|
  (0..@vertical).each do |j|
    item = [j - white[0] > 0 ? 1 : -1, (i-white[1])/(j-white[0])]
    unless i_list.include? item
      i_list<<item
    end
  end
end
i_list.sort.each do |i|
  search(@x_axis, @y_axis, white, i)
end

(0..@position.length-1).each do |i|
  j = (i+1)%(@position.length)
  a = white[0] * @position[i][1] + @position[i][0] * @position[j][1] + @position[j][0] * white[1]
  b = @position[i][0] * white[1] + @position[j][0] * @position[i][1] + white[0] * @position[j][1]
  result += (a-b).abs/2
end
p sprintf('%.13f', @vertical * @height - result - count)
