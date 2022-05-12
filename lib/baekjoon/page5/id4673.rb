@val = Array.new
val = Array.new

def selfNumber(number)
  full = number
  while number != 0
    full += (number % 10)
    number /= 10
  end
  @val << full
end

(1..10000).each do|i|
  selfNumber(i)
  val << i
end

finish = val - @val

finish.each { |i|
  puts i
}
