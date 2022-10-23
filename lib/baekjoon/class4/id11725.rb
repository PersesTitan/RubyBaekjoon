n = gets.to_i
@graph = []
(0..n).each do
  @graph<<[]
end
(0..n-2).each do
  value = gets.chomp.split.map(&:to_i)
  a, b = value[0], value[1]
  @graph[a] << b
  @graph[b] << a
end
@q = []
@q << 1
@ans = [0]*(n+1)
def bfs
  until @q.length == 0
    now = @q.shift
    @graph[now].each do |nxt|
      if @ans[nxt] == 0
        @ans[nxt] = now
        @q<<nxt
      end
    end
  end
end

bfs
puts @ans[2..]