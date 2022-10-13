n = gets.to_i
(1..n).each do
  c1 = [1, 0]
  c2 = [0, 1]
  m = gets.to_i
  if m > 1
    (0..m-1).each do
      c1 << c2[-1]
      c2 << (c1[-2] + c2[-1])
    end
  end
  puts "#{c1[m]} #{c2[m]}"
end
