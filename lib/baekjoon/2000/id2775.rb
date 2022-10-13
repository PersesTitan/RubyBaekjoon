t = gets.to_i
(0..t-1).each do
  f = gets.to_i
  n = gets.to_i
  fz = Array(1..n)
  (0..f-1).each do
    (1..n-1).each do |j|
      fz[j] += fz[j-1]
    end
  end
  puts(fz[-1])
end
