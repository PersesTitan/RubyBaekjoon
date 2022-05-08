while true
  value = gets.chomp
  # if value.equal?"0 0" 백준에서 런타임 에러 발생함

  if value == "0 0"
    break;
  end
  a = value.split(" ")[0].to_i
  b = value.split(" ")[1].to_i
  puts a+b
end