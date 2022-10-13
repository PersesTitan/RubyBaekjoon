n = gets.to_i
nums = []
(1..n).each do
  nums<<gets.to_i
end

k = nums.sum.to_f / n
if k >= 0
  puts k.round
else
  k *= -1
  puts k.round * -1
end

nums.sort!
puts nums[((n-1)/2).to_i]
counts = Hash.new
(1..n).each do |i|
  counts[i]=[]
end
mc = 1
c = 1
(1..n-1).each do |j|
  if nums[j] == nums[j-1]
    c+=1
  else
    counts[c]<<nums[j-1]
    if mc<c
      mc = c
    end
    c=1
  end
  if j == n-1
    counts[c]<<nums[j]
    if mc<c
      mc = c
    end
  end
end

if n == 1
  counts[1]<<nums[0]
end

counts[mc].sort!
if counts[mc].length == 1
  puts counts[mc][0]
else
  puts counts[mc][1]
end
puts nums[-1]-nums[0]