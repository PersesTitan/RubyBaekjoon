@t_value = gets.chomp.to_s
@p_value = gets.chomp.to_s

def get_value
  j = 0
  p = []
  (0..@p_value.length).each do
    p<<0
  end

  (1..@p_value.length).each do |i|
    while j > 0 and @p_value[i] != @p_value[j]
      j = p[j - 1]
    end
    if @p_value[i] == @p_value[j]
      j+=1
      p[i] = j
    end
  end
  p
end

def work(p)
  result = []
  c = 0
  j = 0
  (0..@t_value.length).each do |i|
    while j>0 and @t_value[i] != @p_value[j]
      j = p[j-1]
    end
    if @t_value[i] == @p_value[j]
      if j == (@p_value.length-1)
        result.append(i-@p_value.length+2)
        c += 1
        j = p[j]
      else
        j+=1
      end
    end
  end
  puts c
  result.each do |l|
    puts l
  end
end

work(get_value)
