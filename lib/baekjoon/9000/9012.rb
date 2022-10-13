def check(line)
  if line[0] == ')' && line[-1] == '('
    return false
  end
  array = []
  line.split("").each do |i|
    if i == "("
      array << "("
    end
    if i == ")"
      if array.length != 0
        array.pop
      else
        return false
      end
    end
  end
  array.length == 0
end

count = gets.to_i
(1..count).each do
  puts check(gets.chomp) ? "YES" : "NO"
end
