# マップの判定 - 横
# 自分の回答
h, w, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

coo_array = []
board.each_with_index do |row, i|
case row
	when row[1] == "#"
		coo_array.push([i, 0])
	when row[row.size - 2] == "#"
		coo_array.push([i, row.size-1])
	end
end

puts coo_array

# 模範回答
h, w = gets.split.map(&:to_i)
board = h.times.map { gets.split('') }
board.each.with_index do |row, y|
  row.each_index do |x|
    if x == 0 || row[x - 1] == '#'
      puts y.to_s + ' ' + x.to_s if x == w - 1 || row[x + 1] == '#'
    end
  end
end