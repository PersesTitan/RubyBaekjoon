n, k = gets.chomp.split.map(&:to_i)
@visit = []
(0..100000).each do
  @visit << [-1, 0]
end
def bfs(n)
  q = [n]
  @visit[n][0] = 0
  @visit[n][1] = 1

  while q.length != 0
    x = q.shift
    [x-1, x+1, x*2].each { |i|
      if 0<=i && i<=100000
        if @visit[i][0] == -1
          @visit[i][0] = @visit[x][0] + 1
          @visit[i][1] = @visit[x][1]
          q<<i
        elsif @visit[i][0] == @visit[x][0] + 1
          @visit[i][1] += @visit[x][1]
        end
      end
    }
  end
end
bfs(n)
puts @visit[k][0]
puts @visit[k][1]

