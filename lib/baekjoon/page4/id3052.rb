values = Array.new

(0..9).each do
  values << gets.to_i%42
end

values = values.uniq
puts values.count
