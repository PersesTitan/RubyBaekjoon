t = gets.to_i
(0..t-1).each do
  n, k = gets.chomp.split.map(&:to_i)
  build = [0]+gets.chomp.split.map(&:to_i)
  tree = []
  (0..n).each do tree<<[] end
  id = Array.new(n+1, 0)
  dp = Array.new(n+1, 0)

  (0..k-1).each do
    a, b = gets.chomp.split.map(&:to_i)
    tree[a] << b
    id[b] += 1
  end

  q = []
  (1..n).each do |i|
    if id[i] == 0
      q << i
      dp[i] = build[i]
    end
  end

  while q.length != 0
    a = q.shift
    tree[a].each { |i|
      id[i]-=1
      dp[i] = [dp[a]+build[i], dp[i]].max
      if id[i] == 0
        q<<i
      end
    }
  end
  ans = gets.to_i
  puts dp[ans]
end

