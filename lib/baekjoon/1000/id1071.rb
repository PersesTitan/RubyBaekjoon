n = gets.to_i
arr = gets.chomp.split.map(&:to_i)
num_cnt = [0] * 1005
arr.each do |num|
  num_cnt[num] += 1
end

cur = 0
result = []
while num_cnt.sum > 0
  if num_cnt[cur] != 0
    if num_cnt[cur+1] != 0
      bool = false
      ((cur+2)...1001).each do |next_num|
        if num_cnt[next_num] != 0
          result += ([cur] * num_cnt[cur])
          result << next_num
          num_cnt[cur] = 0
          num_cnt[next_num] -= 1
          bool = true
          break
        end
      end
      unless bool
        result += ([cur + 1] * num_cnt[cur + 1])
        result += ([cur] * num_cnt[cur])
        num_cnt[cur] = 0
        num_cnt[cur + 1] = 0
      end
    else
      while num_cnt[cur] != 0
        result << cur
        num_cnt[cur] -= 1
      end
    end
  end
  cur += 1
end
puts result.join(" ")
