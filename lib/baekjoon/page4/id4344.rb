count = gets.to_i

def total(string)
  all = 0

  (1..string.size).each do|i|
    all += string[i].to_i
  end

  all / (string[0].to_f)
end

(1..count).each do
  values = gets.chomp.split(" ")
  avg = total(values)
  up = 0

  (1..values.size - 1).each do |i|
    if avg < values[i].to_i
      up+=1
    end
  end

  car = ((up / (values[0].to_f)) * 100).round(3)
  if car * 1000 % 100 == 0
    puts "#{car}00%"
  elsif car * 1000 % 10 == 0
    puts "#{car}0%"
  else
    puts "#{car}%"
  end
end
