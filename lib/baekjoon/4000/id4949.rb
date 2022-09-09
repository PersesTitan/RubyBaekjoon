# 런타임 에러... -> pypy3
# while True:
#     line = input()
#     st = []
#     if line == ".":
#         break
#     for i in line:
#         if i == "[" or i == "(":
#             st.append(i)
#         elif i == "]":
#             if len(st) != 0 and st[-1] == '[':
#                 st.pop()
#             else:
#                 st.append(']')
#                 break
#         elif i == ')':
#             if len(st) != 0 and st[-1] == '(':
#                 st.pop()
#             else:
#                 st.append(")")
#                 break
#     if len(st) == 0:
#         print("yes")
#     else:
#         print("no")

while true
  line = gets.chomp.split("")
  st = []
  if line == "."
    break
  end
  line.each do |i|
    if i == "(" || i == "["
      st<<i
    elsif i == "]"
      if st.length != 0 && st[-1] == "["
        st.pop
      else
        st<<"]"
        break
      end
    elsif i == ")"
      if st.length != 0 && st[-1] == "("
        st.pop
      else
        st<<")"
        break
      end
    end
  end
  if st.length == 0
    puts "yes"
  else
    puts "no"
  end
end
