n = gets.to_i
@tree = Hash.new
(0..n-1).each do
  value = gets.chomp.split
  root, left, right = value[0], value[1], value[2]
  @tree[root] = [left, right]
end

def pre(root)
  unless root == '.'
    print(root)
    pre(@tree[root][0])
    pre(@tree[root][1])
  end
end

def ino(root)
  unless root == '.'
    ino @tree[root][0]
    print root
    ino @tree[root][1]
  end
end

def pos(root)
  unless root == '.'
    pos @tree[root][0]
    pos @tree[root][1]
    print root
  end
end

pre "A"
puts
ino "A"
puts
pos "A"
