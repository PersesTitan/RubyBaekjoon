@n, @m = gets.split.map(&:to_i)
@nums = []
gets.split.map(&:to_i).each { |i|
  @nums<<i
}
@nums.sort!
@stack = []

def b
  if @stack.length == @m
    puts @stack.map(&:to_s).join(" ")
  else
    @nums.each { |num|
      unless @stack.include? num
        @stack<<num
        b
        @stack.pop
      end
    }
  end
end
b