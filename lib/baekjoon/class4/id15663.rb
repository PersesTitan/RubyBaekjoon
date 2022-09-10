@n, @m = gets.split.map(&:to_i)
@l = []
gets.split.map(&:to_i).each { |i| @l<<i}
@l.sort!
@v = [false] * @n
@out = []
@a_out = []

def sol(d, n, m)
  if d == m
    tmp = @out.map(&:to_s).join(" ")
    @a_out<<tmp
    return
  end
  (0..n-1).each do |i|
    unless @v[i]
      @out<<@l[i]
      @v[i] = true
      sol(d+1, n, m)
      @out.pop
      @v[i] = false
    end
  end
end

sol(0, @n, @m)
@a_out.uniq.each { |i|
  puts i
}