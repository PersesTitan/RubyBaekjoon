n = gets.to_i
@ans = []
(0..n-1).each do
  @ans<<[' '] * 2 * n
end

def start(x, y, n)
  if n == 3
    @ans[x][y] = '*'
    @ans[x+1][y-1] = @ans[x+1][y+1] = "*"
    (-2..2).each do |i|
      @ans[x+2][y+i] = "*"
    end
  else
    nn = (n/2).to_i
    start(x, y, nn)
    start(x+nn, y-nn, nn)
    start(x+nn, y+nn, nn)
  end
end
start(0, n-1, n)
@ans.each { |row|
  puts row.join("")
}
