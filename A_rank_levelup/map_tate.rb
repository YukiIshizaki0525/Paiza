# マップの判定・縦 (paizaランク C 相当)

# 自分の回答

# 模範回答
require 'byebug'
h, w = gets.split.map(&:to_i)
board = h.times.map { gets.split('') }

byebug
board.each.with_index do |row, y|
  row.each_index do |x|
    if y == 0 || board[y - 1][x] == '#'
      puts y.to_s + ' ' + x.to_s if y == h - 1 || board[y + 1][x] == '#'
    end
  end
end

# 上端 y=0 下端 y=3
# 上端から1つ下 y=1 下端から一つ上 y=2