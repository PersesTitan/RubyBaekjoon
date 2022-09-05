n = gets.to_i
num = gets.chomp.split(" ").map { |v| v.to_i}
count = 0

if n == num.length
  (0..n-1).each do |i|
    (2..num[i]).each do |j|
      if num[i] == j
        count+=1
      end
      if num[i] % j == 0
        break
      end
    end
  end
end
p count
