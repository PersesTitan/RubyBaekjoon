strn = gets.chomp.split("").to_a
stack = []
res = ''
strn.each do |s|
  if s.match(/[a-zA-Z]/)
    res += s
  else
    if s == '('
      stack<<s
    elsif s == '*' || s == '/'
      while stack.length != 0 && (stack[-1] == '*' || stack[-1] == '/')
        res += stack.pop
      end
      stack<<s
    elsif s == '+' || s == '-'
      while stack.length != 0 && stack[-1] != '('
        res += stack.pop
      end
      stack<<s
    elsif s == ')'
      while stack.length != 0 && stack[-1] != '('
        res += stack.pop
      end
      stack.pop
    end
  end
end

while stack.length != 0
  res+=stack.pop
end
puts res
