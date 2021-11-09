# 座標系での移動・方角 (paizaランク C 相当)
# 自分の回答
# y, x, n = gets.split.map(&:to_i)

# # byebug
# n.times do
#   hougaku = gets

#   case 
#     when hougaku === 'E'
#       x += 1
#       puts y.to_s + ' ' + x.to_s
#     when hougaku === 'S'
#       y += 1
#       puts y.to_s + ' ' + x.to_s
#     when hougaku === 'W'
#       x -= 1
#       puts y.to_s + ' ' + x.to_s
#     when hougaku === 'S'
#       y += 1
#       puts y.to_s + ' ' + x.to_s
#   end
# end

# 模範回答
y, x, n = gets.split.map(&:to_i)

move = { N: [-1, 0], S: [1, 0], E: [0, 1], W: [0, -1] }

n.times do
  d = gets.chomp
  y += move[d.to_sym][0]
  x += move[d.to_sym][1]

  puts y.to_s + ' ' + x.to_s
end
