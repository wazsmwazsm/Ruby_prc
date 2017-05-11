#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# if

x = 1;
if x > 2
  puts "x 大于 2"
elsif x <= 2 and x != 0
  puts "x 是 1"
else
  puts "无法得知 x 的值"
end

# if 修饰符
$debug = 1
print "debug\n" if $debug


# unless
x = 1
unless x > 2
   puts "x 小于 2"
 else
  puts "x 大于 2"
end

# unless 修饰符
$var =  1
print "1 -- 这一行输出\n" if $var
print "2 -- 这一行不输出\n" unless $var

$var = false
print "3 -- 这一行输出\n" unless $var

# case when 用 range 作为条件

$age =  5
case $age
when 0 .. 2
    puts "婴儿"
when 3 .. 6
    puts "小孩"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "少年"
else
    puts "其他年龄段的"
end

# 当case的"表达式"部分被省略时，将计算第一个when条件部分为真的表达式。
foo = false
bar = true
quu = false

case
when foo then puts 'foo is true'
when bar then puts 'bar is true'
when quu then puts 'quu is true'
end

# 逗号条件相当于 ||

c1 = 2;
c2 = 1;
c3 = 3;
c4 = 1;

a = 5
case a
when c1,c2
  puts "c1 c2 中有一个是 #{a}"
when c4,c3
  puts "c3 c4 中有一个是 #{a}"
else
  puts "没有一个数为 #{a}"
end
