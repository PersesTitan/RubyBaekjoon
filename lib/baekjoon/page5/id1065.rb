int = gets.to_i

if int < 100
  puts int
else
  count = 99
  (100..int).each do|i|
    n1 = i % 10
    n10 = (i / 10) % 10
    n100 = i / 100

    if (n100 - n10) == (n10 - n1)
      count += 1
    end
  end

  puts count
end
