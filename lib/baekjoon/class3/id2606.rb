n = gets.to_i
m = gets.to_i
@gr = []
(0..n).each do
  @gr << []*n
end
(0..m-1).each do
  a, b = gets.chomp.split.map(&:to_i)
  @gr[a] << b
  @gr[b] << a
end
@cnt = 0
@vis = [0]*(n+1)
def dfs(start)
  @vis[start] = 1
  @gr[start].each { |i|
    if @vis[i] == 0
      dfs(i)
      @cnt += 1
    end
  }
end

dfs(1)
puts @cnt