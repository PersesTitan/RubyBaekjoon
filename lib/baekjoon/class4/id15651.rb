@n, @m = gets.split.map(&:to_i)
@s = []
def dfs()
  if @s.length == @m
    puts @s.map(&:to_s).join(" ")
    return
  end
  (1..@n).each do |i|
    @s<<i
    dfs
    @s.pop
  end
end
dfs
