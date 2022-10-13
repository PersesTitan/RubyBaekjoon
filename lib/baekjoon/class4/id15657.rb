@n, @m = gets.split.map(&:to_i)
@list = []
gets.split.map(&:to_i).each { |i|
  @list<<i
}
@list.sort!
@solve = []

def d(d)
  if d == @m
    puts @solve.map(&:to_s).join(" ")
    return
  end
  (0..@n-1).each do |i|
    if d == 0 || @solve[d-1] <= @list[i]
      @solve<<@list[i]
      d(d+1)
      @solve.pop
    end
  end
end
d(0)
