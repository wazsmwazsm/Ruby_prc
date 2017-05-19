#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# 定义 hash 对象
# 参数为默认值
months = Hash.new('month')
# months = Hash.new 'month'

puts "#{months[0]}"
puts "#{months[72]}"

# 定义时赋值

H = Hash['a' => 100, 'b' => 200]
puts "#{H['a']}"
puts "#{H['b']}"


# 哈希内置方法

months = Hash.new( "month" )

months = {"1" => "January", "2" => "February"}

keys = months.keys

puts "#{keys}"
