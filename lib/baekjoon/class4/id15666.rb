@n, @m = gets.split.map(&:to_i)
@nums = gets.split.map(&:to_i).uniq.sort.to_a
@arr = []

def sol(d)
  if d == @m
    puts @arr.map(&:to_s).join(" ")
    return
  end
  (0..@nums.length-1).each do |i|
    if d == 0 || @arr[-1] <= @nums[i]
      @arr<<@nums[i]
      sol(d+1)
      @arr.pop
    end
  end
end

sol(0)
