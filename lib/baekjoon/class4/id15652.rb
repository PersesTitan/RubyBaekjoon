@n, @m = gets.split.map(&:to_i)
@s = []
def dfs(start)
  if @s.length == @m
    puts @s.map(&:to_s).join(" ")
    return
  end
  (start..@n).each do |i|
    @s<<i
    dfs(i)
    @s.pop
  end
end
dfs(1)