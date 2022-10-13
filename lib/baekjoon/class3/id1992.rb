n = gets.to_i
@pan = []
@ans = []
(1..n).each do
  @pan<<gets.chomp
end

def start(x, y, l)
  num = @pan[x][y]
  (x..x+l-1).each do |i|
    (y..y+l-1).each do |j|
      if @pan[i][j] != num
        @ans << "("
        l = (l/2).to_i
        start(x, y, l)
        start(x, y+l, l)
        start(x+l, y, l)
        start(x+l, y+l, l)
        @ans<<")"
        return
      end
    end
  end
  @ans<<num
end
start(0, 0, n)
puts @ans.join("")
