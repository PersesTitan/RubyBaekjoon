while true
  begin
    value = gets.chomp.split(" ")
    puts value[0].to_i + value[1].to_i
  rescue
    break;
  end
end
