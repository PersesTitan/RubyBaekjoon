count = gets.to_i

def point(texts)
  total = 0
  text = texts.split("X")
  text.each { |t|
    (1..t.size).each do|i|
      total += i
    end
  }
  total
end

(1..count).each do
  value = gets.chomp
  puts point(value)
end
