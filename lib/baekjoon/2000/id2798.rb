n, m = gets.chomp.split(' ').map{|s| s.to_i}
array = gets.chomp.split(' ').map{|s| s.to_i}
r = 0
(0..n-1).each do |i|
  (i+1..n-1).each do |j|
    (j+1..n-1).each do |k|
      t = array[i] + array[j] + array[k]
      if t > m
        next
      else
        if r < t
          r = t
        end
      end
    end
  end
end
p r
