@n, @s = gets.chomp.split.map(&:to_i)
@nums = gets.chomp.split.map(&:to_i).to_a
@res = 0
@left_nums = {}
def dfs(idx, e, add, side)
  if idx == e
    if side == 'L'
      if @left_nums.include? add
        @left_nums[add] += 1
      else
        @left_nums[add] = 1
      end
    elsif @left_nums.include? @s-add
      @res += @left_nums[@s-add]
    end
    return
  end
  dfs(idx+1, e, add+@nums[idx], side)
  dfs(idx+1, e, add, side)
end
dfs(0, (@n/2).to_i, 0, 'L')
dfs((@n/2).to_i, @n, 0, 'R')
if @s == 0
  @res -= 1
end
puts @res