dic = {}
lst = []
lis = [-1]
result = []
backtrace = []
n = gets.to_i

def lower_bound(lst, num)
  low = 0
  high = lst.length - 1
  while low < high
    mid = ((low + high)/2).to_i
    if num <= lst[mid]
      high = mid
    elsif num > lst[mid]
      low = mid + 1
    end
  end
  high
end

(0...n).each do |i|
  a, b = gets.chomp.split.map(&:to_i)
  dic[b] = a
end

temp = dic.sort
temp.each { |a, i|
  lst << i
}

lst.each { |i|
  if i > lis[-1]
    lis<<i
  else
    lis[lower_bound(lis, i)] = i
  end
  result << lis.index(i)+1
}
lis_len = lis.length

(0...lst.length).reverse_each do |i|
  if result[i] == lis_len
    backtrace << lst[i]
    lis_len -= 1
  end
end

puts n - (lis.length - 1)
lst.sort!
backtrace.each { |i|
  lst.delete(i)
}

lst.each { |i|
  puts i
}
