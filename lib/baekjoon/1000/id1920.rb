@n = gets.to_i
@list = gets.chomp.split(" ").map{|v| v.to_i}.sort
@m = gets.to_i
@t = gets.chomp.split(" ").map{|v| v.to_i}

def binary(target)
  l = 0
  r = @n - 1
  while l <= r
    m = ((l + r)/2).to_i
    if @list[m] == target
      return true
    end
    if target < @list[m]
      r = m-1
    elsif target > @list[m]
      l = m + 1
    end
  end
end

(0..@m-1).each do |i|
  if binary(@t[i])
    puts "1"
  else
    puts "0"
  end
end