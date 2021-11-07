# マップからの座標取得 (paizaランク C 相当)
# 自分の回答 回答時間5:57 AC

# h, w = gets.split.map(&:to_i)

# board = h.times.map { gets.split('') }

# board.each.with_index do |row, y|
#   row.each_index do |x|
#     puts y.to_s + ' ' + x.to_s if row[x] == '#'
#   end
# end

# 模範回答
# require 'byebug'

h, w = gets.split.map(&:to_i)
board = h.times.map { gets.split('') }

# byebug
board.each.with_index do |row, y|
  row.each.with_index { |val, x| puts y.to_s + ' ' + x.to_s if val == '#' }
  # valueにはrow([".", "#", ".", "\n"])の各要素が入っている
end