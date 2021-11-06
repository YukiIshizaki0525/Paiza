# マップの判定・縦横 (paizaランク B 相当)
# 自分の回答 ほぼ未回答
# h, w = gets.split.map(&:to_i)
# board = h.times.map { gets.split('') }


# board.each.with_index do |row, y|
#   row.each_index do |x|
#     if y == 0 || board[y - 1][x] == '#'
#       puts y.to_s + ' ' + x.to_s if y == h - 1 || [y + 1][x] == '#'
#     end

#     if x == 0 || row[x - 1] == '#'
#       puts y.to_s + ' ' + x.to_s if x == w - 1 || row[x + 1] == '#'
#     end

#     if (y == 0 || board[y - 1][x] == '#') && (y == h - 1 || [y + 1][x] == '#') && (x == 0 || row[x - 1] == '#') && (x == w - 1 || row[x + 1] == '#')
#       puts y.to_s + ' ' + x.to_s
#     end
#   end
# end

# 模範回答
require 'byebug'
h, w = gets.split.map(&:to_i)
board = h.times.map { gets.split('') }

byebug
board.each.with_index do |row, y|
  row.each_index do |x|
    flag_row = false
    flag_clm = false

    if x == 0 || row[x - 1] == '#'
      flag_row = true if x == w - 1 || row[x + 1] == '#'
    end

    if y == 0 || board[y - 1][x] == '#'
      flag_clm = true if y == h - 1 || board[y + 1][x] == '#'
    end

    puts y.to_s + ' ' + x.to_s if flag_row && flag_clm
  end
end
