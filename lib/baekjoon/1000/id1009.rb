list = [[10], [1], [2, 4, 8, 6], [3, 9, 7, 1], [4, 6],
        [5], [6], [7, 9, 3, 1], [8, 4, 2, 6], [9, 1]]
n = gets.to_i
(0...n).each do
  a, b = gets.chomp.split.map(&:to_i)
  a1 = a % 10
  b1 = b % list[a1].length
  p list[a1][b1-1]
end