n = gets.to_i
m = gets.to_i
letter = gets.chomp
left, right = 0, 0
cnt = 0
while right <m
  if letter[right..right+2] == "IOI"
    right+=2
    if right - left == (2*n)
      cnt += 1
      left += 2
    end
  else
    right += 1
    left = right
  end
end
puts cnt