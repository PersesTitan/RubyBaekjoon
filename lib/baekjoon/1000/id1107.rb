t = gets.to_i
gets
b = gets.split.map{|s| s.to_i}
mc = (100-t).abs
(0..1000000).each do |i|
  nums = i.to_s
  (0..nums.length-1).each do |j|
    if b.include? nums[j].to_i
      break
    elsif j == nums.length-1
      mc = [mc, (nums.to_i-t).abs + nums.length].min
    end
  end
end
puts mc
