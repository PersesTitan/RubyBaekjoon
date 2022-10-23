n = gets.to_i
a = [false, false] + [true] * (n-1)
nums = []
(2..n).each do |i|
  if a[i]
    nums << i
    (2*i..n).step(i) do |j|
      a[j] = false
    end
  end
end

ans, s, e = 0, 0, 0
while e <= nums.length
  total = nums[s...e].sum
  if total == n
    ans += 1
    e += 1
  elsif total < n
    e += 1
  else
    s += 1
  end
end
puts ans
