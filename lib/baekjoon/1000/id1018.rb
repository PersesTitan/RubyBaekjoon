n, m = gets.chomp.split(" ").map(&:to_i)
original = []
count = []
(0..n-1).each do
  original.append(gets.chomp)
end

(0..n-8).each do|a|
  (0..m-8).each do |b|
    index1 = 0
    index2 = 0
    (a..a+7).each do |i|
      (b..b+7).each do |j|
        if (i+j)%2 == 0
          if original[i][j] == 'W'
            index2 += 1
          else
            index1 += 1
          end
        else
          if original[i][j] == 'W'
            index1 += 1
          else
            index2 += 1
          end
        end
      end
    end
    count<<[index1, index2].min
  end
end
p count.min
