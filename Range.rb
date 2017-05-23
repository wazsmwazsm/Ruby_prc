#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

# exp
# to_a 将 范围转成数组列表 不转换会直接返回 1..10 这种字符串
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# 指定范围
digits = 0..9

puts digits.include?(5)
puts digits.min
puts digits.max

# 使用块 reject : 根据条件剔除一个子集
puts digits.reject {|i| i < 5}

digits.each do |digit|
   puts "在循环中 #{digit}"
end

# 作为条件的范围
score = 70

result = case score
when 0..40
    "糟糕的分数"
when 41..60
    "快要及格"
when 61..70
    "及格分数"
when 71..100
       "良好分数"
else
    "错误的分数"
end

puts result

# 作为间隔的范围

if((1..10) === 5)
  puts "5 在 (1..10)"
end

if (('a'..'j') === 'c')
  puts "c 在 ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z 在 ('a'..'j')"
end
