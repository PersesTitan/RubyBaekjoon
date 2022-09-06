n, k = gets.split.map(&:to_i)
q, a = [], []
(1..n).each do |i|
  q<<i
end

while q.length > 0
  (0..k-2).each do
    q<<q.shift
  end
  a<<q.shift
end
print("<")
(0..a.length-2).each do |i|
  print("#{a[i]}, ")
end
print("#{a[-1]}>")
