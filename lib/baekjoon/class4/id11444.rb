@p = 1000000007
def multi(a, b)
  temp = []
  (0..1).each do
    temp<<[0]*b[0].length
  end

  (0..1).each do |i|
    (0..b[0].length-1).each do |j|
      sum = 0
      (0..1).each do |k|
        sum += (a[i][k] * b[k][j])
      end
      temp[i][j] = sum % @p
    end
  end
  temp
end

def power(adj, n)
  if n == 1
    adj
  elsif n % 2 != 0
    return multi(power(adj, n - 1), adj)
  else
    power(multi(adj, adj), (n/2).to_i)
  end
end

adj = [[1, 1], [1, 0]]
start = [[1], [1]]
n = gets.to_i
if n < 3
  puts 1
else
  puts multi(power(adj, n - 2), start)[0][0]
end
