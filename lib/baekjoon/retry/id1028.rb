# T = gets.to_i
# INF = 1e9.to_i
# OUT = 0
# IN = 1
# BOTH = 2
#
# def arr
#   a = []
#   (0..3).each do
#     a<<0
#   end
#   a
# end
#
# def f(dp, outer, inner)
#   (1..N).each do |i|
#     outer_squad = outer[i-1] + outer[i] <= W ? 1 : 2
#     inner_squad = inner[i-1] + inner[i] <= W ? 1 : 2
#     verti_squad = outer[i] + inner[i] <= W ? 1 : 2
#
#     dp[i][OUT] = [dp[i-1][IN] + outer_squad, dp[i-1][BOTH] + 1].min
#     dp[i][IN] = [dp[i-1][OUT] + inner_squad, dp[i-1][BOTH] + 1].min
#     dp[i][BOTH] = [dp[i-1][BOTH] + verti_squad,
#                           dp[i-2][BOTH] + outer_squad + inner_squad,
#                           dp[i-1][IN] + outer_squad + 1,
#                           dp[i-1][OUT] + inner_squad + 1].min
#   end
# end
#
# def case1(outer, inner)
#   dp = []
#   (0..(N/3)).each do
#     dp << arr
#   end
#
#   dp[0][OUT] = dp[0][IN] = 1
#   dp[0][BOTH] = outer[0] + inner[0] <= W ? 1 : 2
#   outer_cpy = outer
#   inner_cpy = inner
#
#   f(dp, outer_cpy, inner_cpy)
#   dp[N-1][BOTH]
# end
#
# def case2(outer, inner)
#   if outer[0] + outer[N-1] > W
#     INF
#   end
#   dp = []
#   (0..(N/3)).each do
#     dp << arr
#   end
#   dp[0][OUT] = dp[0][IN] = 1
#   dp[0][BOTH] = 2
#   outer_cpy = outer
#   inner_cpy = inner
#   outer_cpy[0] = outer_cpy[N-1] = INF
#   f(dp, outer_cpy, inner_cpy)
#   dp[N-1][IN]
# end
#
# def case3(outer, inner)
#   if inner[0] + inner[N-1] > W
#     return INF
#   end
#   dp = []
#   (0..(N/3)).each do
#     dp << arr
#   end
#   dp[0][OUT] = dp[0][IN] = 1
#   dp[0][BOTH] = 2
#   outer_cpy = outer
#   inner_cpy = inner
#   inner_cpy[0] = inner_cpy[N-1] = INF
#   f(dp, outer_cpy, inner_cpy)
#   dp[N-1][OUT]
# end
#
# def case4(outer, inner)
#   if outer[0] + outer[N-1] > W
#     return INF
#   end
#   if inner[0] + inner[N-1] > W
#     return INF
#   end
#   dp = []
#   (0..(N/3)).each do
#     dp << arr
#   end
#   dp[0][OUT] = dp[0][IN] = 1
#   dp[0][BOTH] = 2
#   outer_cpy = outer
#   inner_cpy = inner
#   outer_cpy[0] = outer_cpy[N-1] = INF
#   inner_cpy[0] = inner_cpy[N-1] = INF
#   f(dp, outer_cpy, inner_cpy)
#   dp[N-2][BOTH]
# end
#
# miis = gets.chomp.split(" ")
# (0..T).each do
#   N = miis[0].to_i
#   W = miis[1].to_i
#   outer = []
#   inner = []
#     gets.chomp.split(" ").each { |v|
#     outer<<v.to_i
#   }
#
#   gets.chomp.split(" ").each { |v|
#     inner<<v.to_i
#   }
#
#   if N == 1
#     print(outer[0] + inner[0] <= W ? 1 : 2)
#     next
#   end
#   value = [case1(outer, inner), case2(outer, inner),
#            case3(outer, inner), case4(outer, inner)].min
#   puts value
# end
#
#
