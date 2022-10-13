@n, m, v = gets.split.map(&:to_i)
@graph = []
(0..@n).each do
  @graph << []
end
@a_bfs = []
@a_dfs = []

(0..m-1).each do
  a, b = gets.split.map(&:to_i)
  @graph[a]<<b
  @graph[b]<<a
end

@graph.each { |i|
  i.sort!
}

def bfs(x)
  @visited = [false] * (@n+1)
  @visited[x] = true
  @a_bfs<<x
  q = [x]
  while q.length != 0 do
    nod = q.shift

    @graph[nod].each do |i|
      unless @visited[i]
        @visited[i] = true
        @a_bfs << i
        q << i
      end
    end
  end
end

def dfs(x)
  @visited[x] = true
  @a_dfs<<x
  @graph[x].each { |i|
    unless @visited[i]
      dfs(i)
    end
  }
end
@visited = [false] * (@n+1)
dfs(v)
@a_dfs.each { |a|
  print "#{a} "
}
puts
bfs(v)
@a_bfs.each { |a|
  print "#{a} "
}
