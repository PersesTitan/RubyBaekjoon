num = gets.split("-")
ans = []
a = 0
num.each { |i|
  tmp = 0
  i.split("+").each { |j|
    tmp += j.to_i
  }
  ans<<tmp

  (0..ans.length-1).each do |i|
    if  i == 0
      a = ans[0]
    else
      a -= ans[i]
    end
  end
}
puts a
