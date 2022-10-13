n = gets.to_i
ans = 0
num = 1
(2..n).each do |i|
  num *= i
end

ns = num.to_s
(0..ns.length-1).reverse_each { |i|
  if ns[i.to_i] == '0'
    ans += 1
  else
    break
  end
}
puts ans
