@n = gets.to_i
@ans = 0
@row = [0]*@n
def is(x)
  (0..x-1).each do |i|
    if @row[x] == @row[i] || (@row[x]-@row[i]).abs == (x-i).abs
      return false
    end
  end
  true
end

def n(x)
  if x == @n
    @ans += 1
    return
  else
    (0..@n-1).each do|i|
      @row[x] = i
      if is(x)
        n(x+1)
      end
    end
  end
end

n(0)
puts @ans
