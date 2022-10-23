while true
  begin
    n, s = gets.chomp.split.map(&:to_i)
    puts s/(n+1)
  rescue
    break
  end
end
