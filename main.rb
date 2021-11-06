# 改行区切りで出力
# n = gets.to_i
# a = gets.split(' ').map(&:to_i)
# puts a

# C相当の問題
# 自分の回答
# n = gets.to_i
# arr = Array.new(n)
# n.times{ |i| arr[i] = gets }
# puts arr

# 模範回答
# n = gets.to_i

# roster = Array.new(n)
# n.times { |i| roster[i] = gets.split(' ') }

# roster.each do |member|
#   name = member[0]
#   age = member[1].to_i

#   puts name + ' ' + (age + 1).to_s
# end

# 桁数の出力
# n = gets.to_i
# n.times { puts gets.chomp.length }

# 部分文字列一致
# a = gets.chomp
# s = gets

# if s.include? a
#   puts 'YES'
# else
#   puts 'NO'
# end

# 数字から文字列への足し算
# s = gets

# a = s[0].to_i + s[3].to_i
# b = s[1].to_i + s[2].to_i

# puts a.to_s + b.to_s

# 0埋め
# n = gets.to_i
# puts sprintf('%03d', n)

# 01→1への変換
# s = gets
# a = s.split(':').map(&:to_i)
# puts a[0]
# puts a[1]

# 時刻の繰り上げ
# s = gets

# a = s.split(':').map(&:to_i)
# h = a[0]
# m = a[1]

# m += 30
# if m > 59
#   m -= 60
#   h += 1
# end

# h = h.to_s
# m = m.to_s

# h = '0' + h if h.length == 1
# m = '0' + m if m.length == 1

# puts h + ':' + m

# 時刻の繰り上げ
# 自分の回答
# n = gets.to_i

# n.times do |i|

# end

# start = a[0]
# h = a[1].to_i
# m = a[2].to_i

# s = start.split(':').map(&:to_i)
# fh = s[0] + h
# fm = s[1] + m

# if fm > 59
#     fm -= 60
#     fh += 1
# end

# fm = fm.to_s
# fh = fh.to_s

# fm = '0' + fm if fm.length == 1
# fh = '0' + fh if fh.length == 1

# puts fh + ":" + fm

# 模範回答
# n = gets.to_i

# n.times do
#   t, c_h, c_m = gets.split(' ')
#   h, m = t.split(':').map(&:to_i)
#   c_h = c_h.to_i
#   c_m = c_m.to_i

#   m += c_m
#   h += c_h
#   if m > 59
#     m -= 60
#     h += 1
#   end
#   h -= 24 if h > 23

#   m = m.to_s
#   h = h.to_s
#   m = '0' + m if m.length == 1
#   h = '0' + h if h.length == 1

#   puts h + ':' + m
# end

# 3の倍数カウント
# n = gets.to_i
# a = gets.split(' ').select { |n| n.to_i % 3 == 0 }

# puts a.length

# 別解
# n = gets.to_i
# a = gets.split(' ').map(&:to_i)

# count = 0
# a.each do |num|
#   count += 1 if num % 3 == 0
# end

# puts count

# 7を含む場合の判定
# 自分の回答
# n = gets.to_i

# a = Array.new(n)

# n.times do |i|
#   a[i] = gets.to_i
# end

#   if a.select {|n| n.to_i == 7}
#       puts "YES"
#   else
#       puts "NO"
#   end

# 模範解答
# n = gets.to_i
# a = Array.new(n)
# n.times { |i| a[i] = gets.to_i }

# exist = false
# a.each do |num|
#   if num == 7
#     exist = true
#     break
#   end
# end

# if exist
#   puts 'YES'
# else
#   puts 'NO'
# end

# インデックス取得(最小値)
# n = gets.to_i

# a = Array.new(n)
# n.times { |i| a[i] = gets.to_i }

# k = gets.to_i

# n.times do |i|
#   if a[i] == k
#     puts i + 1
#     break
#   end
# end





# AtCoderの問題
# OX問題
# a = gets.chomp.chars.map(&:to_s)
# p a

# case a
# when a[0] = a[1] = a[2]
#   puts a[0]
# when a[1] = a[2] = a[3]
#   puts a[1]
# when a[2] = a[3] = a[4]
#   puts a[2]
# else
#   puts "draw"
# end

# 配列上書き
# n = gets.to_i
# s = gets.chomp.chars
# t = []

# s.each_with_index do |str, i|
#   t << str

#   if i % 3 == 0
#     t.shift
#     t << t[0]
#     t.pop
#   end
# end

# p t

# 多重ループ
# m = gets.to_i

# c = Array.new(m)
# m.times{ |i| c[i] = gets.chomp }

# n = gets.to_i

# s = Array.new(n)
# n.times {|i| s[i] = gets.chomp }

# c.each do |d|
#   s.each do |t|
#     if t.include?(d)
#       puts "YES"
#     else
#       puts "NO"
#     end
#   end
# end

# forループ
# n, m, k = gets.split(' ').map(&:to_i)

# s = Array.new(m)
# n.times {|i| s[i] = gets.split(' ').select { |num| num.to_i == k } }

# s.each do |num|
#   count = num.count(k)
#   puts count
# end


# 模範回答
# n, m, k = gets.split(' ').map(&:to_i)

# all_k = Array.new(n)
# n.times do |i|
#   all_k[i] = gets.split(' ').select { |num| num.to_i == k }
# end

# # p all_k => ex) [[], ["1"], ["1", "1"]]

# all_k.each do |column|
#   puts column.length
# end

# 昇順ソート
# n = gets.to_i

# a = Array.new(n)
# n.times {|i| a[i] = gets.to_i }

# puts a.sort

# 模範回答
# n = gets.to_i

# a = Array.new(n)
# n.times { |i| a[i] = gets.to_i }

# sorted_a = a.sort

# sorted_a.each { |num| puts num }

# 辞書式ソート
# n = gets.to_i
# s = Array.new(n)

# n.times do |i|
#   s[i] = gets.split(' ')
# end

# s.each do |a, b|
#   p a, b
# end

# 解答
# n = gets.to_i
# basket = Array.new(n)
# n.times { |i| basket[i] = gets.split(' ').map(&:to_i) }
# basket.sort!.reverse!

# basket.each do |fruits|
#   puts fruits.join(' ')
# end

# 配列ソート
# n = gets.to_i

# a = []
# n.times do |i|
#   a[i] = gets.split(' ').map(&:to_i)
# end

# sorted_a = a.sort!{|(g1,s1),(g2, s2)| g2 <=> g1 }

# sorted_a.each do |num|
#   puts num.join(' ')
# end

# 解答
# n = gets.to_i

# safe = Array.new(n)
# n.times { |i| safe[i] = gets.split(' ').map(&:to_i) }

# n.times do |i|
#   gold = safe[i][0]
#   silver = safe[i][1]

#   safe[i][0] = silver
#   safe[i][1] = gold
# end

# safe.sort!.reverse!

# safe.each do |metals|
#   metals[0], metals[1] = metals[1], metals[0]
#   puts metals.join(' ')
# end

# 辞書の基本(Cランク)
# n = gets.to_i
# a = Array.new(n)
# n.times {|i| a[i] = gets.split(' ')}

# s = gets.chomp
# a.each do |str|
#   if str[0] == s
#     puts str[1].to_i
#   end
# end

# 模範解答
# n = gets.to_i

# properties = {}
# n.times do
#   s, a = gets.split(' ')
#   properties[s] = a.to_i
#   p properties[s]
# end

# s = gets
# puts properties[s]

# 辞書データ更新
# n = gets.to_i

# properties = {}
# n.times do
#   s = gets.chomp
#   properties[s] = 0
# end

# m = gets.to_i
# m.times do
#   p, a = gets.split(' ')
#   properties[p] += a.to_i
# end

# S = gets.chomp
# p properties[S]

# 模範解答
# n = gets.to_i

# damage = {}
# n.times do
#   name = gets.chomp
#   damage[name] = 0
# end

# m = gets.to_i
# m.times do
#   name, attack = gets.split(' ')
#   damage[name] += attack.to_i
# end

# s = gets.chomp
# puts damage[s]

# 辞書データの順序
# n = gets.to_i

# damage = {}

# n.times do
#     name = gets.chomp
#     damage[name] = 0
# end

# m = gets.to_i
# m.times do
#     name, attack = gets.split(' ')
#     damage[name] += attack.to_i
# end

# sorted_name = damage.sort

# sorted_name.each do |arr|
#   puts arr[1]
# end

# 模範解答
# n = gets.to_i

# damage = {}
# n.times do
#   name = gets.chomp
#   damage[name] = 0
# end

# m = gets.to_i
# m.times do
#   name, attack = gets.split(' ')
#   damage[name] += attack.to_i
# end

# sorted_damage = damage.sort

# sorted_damage.each { |_, dmg| puts dmg }

# 辞書
# n, m, l = gets.split(' ').map(&:to_i)

# group_a = {}
# n.times do
#   num, req = gets.split(' ').map(&:to_i)
#   group_a[num] = req
# end

# group_b = {}
# m.times do
#   num, req = gets.split(' ').map(&:to_i)
#   group_b[num] = req
# end

# group_c = {}
# n.times { |i| group_c[i + 1] = group_b[group_a[i + 1]] }

# group_c.each do |val|
#   puts val.join(' ')
# end

# 条件を満たす最小の自然数
# n = 10000
# while true
#   break if n % 13 == 0
#   n += 1
# end

# puts n

# シュミレーション練習
# hash = {"paiza": 1, "kirishima": 1}
# count = 0

# n = gets.to_i
# a, b = gets.split(' ').map(&:to_i)

# while n > hash[:kirishima]
#   hash[:kirishima] += hash[:paiza] * a
#   c = hash[:kirishima] % b
#   hash[:paiza] += c
#   count += 1
# end

# puts count

# 模範解答
# n = gets.to_i
# a, b = gets.split(' ').map(&:to_i)

# paiza, kyoko = 1, 1
# times = 0
# while true
#   kyoko += paiza * a
#   times += 1

#   break if kyoko > n

#   paiza += kyoko % b
# end

# puts times

# ダメージ総数
# h = gets.to_i

# paiza = {hp: h, damage: 0}
# monster = {hp: 100, damage: 0}
# i = 0

# while true
#   if i == 1 || i == 2
#     paiza[:damage] = 1
#     monster[:damage] = 1

#     paiza[:hp] -= monster[:damage]
#     monster[:hp] -= paiza[:damage]
#   end

#   if i >= 3
#     paiza -= (i - 1) * 2 + 
#   end

#   i += 1
# end

# p paiza[:damage]

# 解答
# h = gets.to_i

# paiza = [0, 1, 1] #=> [turn-2, turn-1, turn]
# monster = [0, 1, 1] #=> [turn-2, turn-1, turn]

# h -= 2
# turn = 2

# while true
#   monster[0] = monster[1]
#   monster[1] = monster[2]

#   paiza[0] = paiza[1]
#   paiza[1] = paiza[2]

#   monster[2] = paiza[1] + paiza[0]
#   paiza[2] = monster[1] * 2 + monster[0]

#   h -= paiza[2]
#   turn += 1

#   break if h <= 0
# end

# puts turn

# n = gets.to_i
# puts n + 1

# n = gets.to_i
# a = Array.new(n)

# n.times do |i|
#   number = gets.to_i
#   a[i] = number
# end

# puts a

# 配列の合計
# array = [1, 3, 5, 6, 3, 2, 5, 23, 2]
# ans = 0

# array.each { |element| ans += element }
# puts ans

# 条件一致の合計
# a = [4, 0, 5, -1, 3, 10, 6, -8]

# high_array = []

# a.each do |number|
#     if number >= 5
#         high_array << number
#     end
# end

# sum = 0
# high_array.each{|element| sum += element }
# puts sum

# 模範回答
# array = [4, 0, 5, -1, 3, 10, 6, -8]
# ans = 0

# array.each { |element| ans += element if element >= 5 }
# puts ans

# 5以上の整数の合計
# loop = gets.chomp.to_i
# ans = 0

# (1..loop).each do |i|
#   num = gets.chomp.to_i

#   ans = ans + num if num >= 5
# end

# puts ans

# 足すか掛けるか
# count = gets.chomp.to_i
# sum = 0

# (1..count).each do |i|
#   line = gets.chomp.split(' ')
#   if line[0].to_i == line[1].to_i
#     sum += line[0].to_i * line[1].to_i
#   else
#     sum += line[0].to_i + line[1].to_i
#   end
# end

# puts sum

# n = gets.split(' ').map(&:to_i)
# rg = n[0]..n[1]

# rg.each do |n|
#   puts n
# end


# 文字列を切り取る
# n = gets.split(' ').map(&:to_i)
# str = gets.chomp.split('')

# puts str.slice(n[0]-1, n[1]-1).join


# 模範回答
# nums = gets.chomp.split(' ')
# str = gets.chomp

# ((nums[0].to_i - 1)..(nums[1].to_i - 1)).each { |i| print str[i] }

# print "\n"

# line = gets.chomp
# puts line[0]

# 指定範囲のみ大文字
# n = gets.chomp.split(' ')
# str = gets.chomp

# ((n[0].to_i - 1)..(n[1].to_i - 1)).each {|i| print str[i].upcase! }

# print "\n"

# 模範回答
# nums = gets.chomp.split(' ')
# str = gets.chomp

# (1..(str.size)).each do |i|
#   if nums[0].to_i <= i && i <= nums[1].to_i
#     print str[i - 1].upcase
#   else
#     print str[i - 1]
#   end
# end

# print "\n"

# 最初の文字抜き取り
# line = gets.chomp
# puts line[0]

# １文字ずつ抽出
# str = gets.chomp.split('')
# puts str

# 文字重複のカウント
# query = gets.chomp
# source = gets.chomp

# puts source.count(query)

# 文字列の1, 2文字目
# str = gets.chomp
# puts "#{str[0]} #{str[1]}"


# 文字列のn文字目とn + 1文字目の出力
# num = gets.to_i
# str = gets.chomp
# puts "#{str[num - 1]} #{str[num]}"

# 模範回答
# n = gets.chomp.to_i
# str = gets.chomp
# puts "#{str[n - 1]} #{str[n]}" if str[n]

# n = gets.chomp
# str = gets.chomp.split('')
# ary = []
# count = 0

# p str


# 文字列重複カウント
# str.each do |s|
#   ary << s
#   # if n == ary.join
#   #   count += 1
#   # end
# end

# p ary.join

# puts count

# AA
# abdeeAAbAAAbfde

# 模範回答
# pattern = gets.chomp
# string = gets.chomp

# result = 0
# (0..(string.size - pattern.size)).each do |i|
#   substring = string.slice(i, pattern.size)

#   result += 1 if substring == pattern
# end

# puts result

# 数字のみ出力
# num = gets.chomp.to_i
# num.times { puts gets.chomp.split(' ')[1] }

# 昇順ソート
# n = gets.to_i
# ary = gets.chomp.split(' ').map(&:to_i)
# puts ary.sort

# require 'byebug'

# h, w, n = gets.split.map(&:to_i)
# board = h.times.map { gets.chomp }

# byebug
# n.times do
#   y, x = gets.split.map(&:to_i)
# puts board[y][x]
# end


