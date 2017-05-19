#!/usr/bin/ruby

# 解析变量

x, y, z = 12, 36, 72
puts "x 的值为 #{ x }"
puts "x + y 的值为 #{ x + y }"
puts "x + y + z 的平均值为 #{ (x + y + z)/3 }"


# %q %Q 定界符 字符串

desc1 = %Q{Ruby 的字符串可以使用 '' 和 ""。}
desc2 = %q|Ruby 的字符串可以使用 '' 和 ""。|

puts desc1
puts desc2

# 内建字符串

myStr = String.new(str="Hello moto!")
foo = myStr.downcase

puts "#{foo}"

# 字符串方法

# 连接
puts 'aaa' + 'bbb'
