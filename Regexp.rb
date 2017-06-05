#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# =~ 方法 返回匹配开始的位置
line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if(line1 =~ /Cats(.*)/)
  puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
  puts "Line2 contains  Dogs"
end

# gsub sub
phone = "138-3453-1111 #这是一个电话号码"
# 删除 Ruby 的注释
phone = phone.sub(/#.*$/, "")
puts "电话号码 : #{phone}"

# 移除数字以外的其他字符
phone = phone.gsub(/\D/, "")
puts "电话号码 : #{phone}"

# 加感叹号改变原字符串
text = "rails 是 rails,  Ruby on Rails 非常好的 Ruby 框架"

# 把所有的 "rails" 改为 "Rails"
text.gsub!('rails', 'Rails')
# 把所有的单词 "Rails" 都改成 Rails
text.gsub!(/\brails\b/, 'Rails')

puts text

# RegExp 对象

puts /a/.class

# match 使用

puts "I can say my abc" =~ /abc/
# RegExp 使用
a = /abc/.match("I can say my abc, abc I can say")
puts a[0]
# String 使用
a = "I can say my abc, abc I can say".match(/abc/)
puts a[0]

b = /[A-Za-z]+,[A-Za-z]+,Mrs?\./.match("Jack,Wang,Mrs., better man")
puts b[0]

c = /([A-Za-z]+),([A-Za-z]+),Mrs?\./.match("Jack,Wang,Mrs., better man")
puts c[0]
puts c[1]
puts c[2]

d = /(([A-Za-z]+),([A-Za-z]+)),Mrs?\./.match("Jack,Wang,Mrs., better man")
puts d[0]
puts d[1]
puts d[2]
puts d[3]

# 一些方法
string = "我的电话号码是 (123) 555-5525.你记得吗？"

phone = /\((\d{3})\)\s+(\d{3})-(\d{4})/

m = phone.match(string)

print "匹配之前的内容是 "
puts m.pre_match
print "匹配之后的内容是 "
puts m.post_match
print "第二个匹配开始的字符是 "
puts m.begin(2)
print "第三个匹配结束的字符是"
puts m.end(3)

# 贪婪匹配和非贪婪匹配
test = 'abcdfjdfdsj!jdjfjd!!'

match = /.+!/.match(test)

puts match[0]

match = /.+?!/.match(test)
puts match[0]

# 锚

test = "         # ruby comment line"
a = test.match(/^\s*#/)
puts a[0]
a = test.match(/^\s*#(.+)/)
puts a[1]

# 前视断言
str = "123 456 789. 123"
m = str.match(/\d+(?=\.)/)
puts m[0]
# 否定前视断言
str = "123 456 789. 123"
m = str.match(/\d+(?!=\.)/)
puts m[0]

# 修饰符
str = 'JjddjDJs'

m = /jdj/i.match(str)
puts m[0]

# m 可以匹配多行
str = "hello i am aa.\n I am bb"
a = /.+/.match(str)
puts a[0]
a = /.+/m.match(str)
puts a[0]

# 字符串和正则表达式互换
str = "a.c"
matchdot = /#{str}/
puts matchdot.match("a.c")[0]
puts matchdot.match("abc")[0]

puts /abc/

puts /abc/.inspect

# 应用
a = ['1','a','b','2','5','c']
puts a.find_all {|x| /\d/.match(x)} # 给 a 添加一个带块方法

puts "test 1 2 3 and test 5 6 7".scan(/\d/)
