n = gets.to_i
meet = []
(0..n-1).each do
  st, en = gets.split.map(&:to_i)
  meet << [st, en]
end
meet.sort_by!{|e| e[0]}
meet.sort_by!{|e| e[1]}
now, cnt = 0, 0
meet.each { |st, en|
  if now <= st
    now = en
    cnt += 1
  end
}

puts cnt
