number = gets.to_i
count = 0
int = number

while true
  n1 = int%10
  n10 = int/10
  sum = (n1 + n10)%10

  int = (n1 * 10) + sum

  count+=1
  if int == number
    break;
  end
end
puts count
