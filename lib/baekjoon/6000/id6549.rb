while true
  rec =gets.chomp.split.map(&:to_i).to_a
  n = rec.shift

  if n == 0
    break
  end

  stack = []
  answer = 0

  (0...n).each do |i|
    while (stack.length != 0) and (rec[stack[-1]] > rec[i])
      @tmp = stack.pop
      @width = stack.length == 0 ? i : i - stack[-1] - 1
      answer = [answer, @width * rec[@tmp]].max
    end
    stack << i
  end

  while stack.length != 0
    @tmp = stack.pop
    @width = stack.length == 0 ? n : n - stack[-1] - 1
    answer = [answer, @width * rec[@tmp]].max
  end
  puts answer
end
