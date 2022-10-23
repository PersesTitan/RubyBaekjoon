v, e = gets.chomp.split.map(&:to_i)
@v_root = Array(0..v+1)
e_list = []
(0..e-1).each do
  e_list<<gets.chomp.split.map(&:to_i).to_a
end

e_list.sort_by!{|va| va[2]}
def find(x)
  if x != @v_root[x]
    @v_root[x] = find(@v_root[x])
  end
  @v_root[x]
end

answer = 0
e_list.each { |value|
  s, e, w = value[0], value[1], value[2]
  s_root = find(s)
  e_root = find(e)
  if s_root != e_root
    if s_root > e_root
      @v_root[s_root] = e_root
    else
      @v_root[e_root] = s_root
    end
    answer+=w
  end
}
puts answer