m, n = gets.chomp.split(" ").map {|v| v.to_i}

def check(num)
  if num == 1
    return false
  end
  n = Math.sqrt(num).to_i
  (2..n).each do |i|
    if num%i == 0
      return false
    end
  end
  true
end

(m..n).each do |i|
  if check(i)
    puts i
  end
end