#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

# 创建数组对象

names = Array.new(20)
puts names.size
puts names.length


# 给每个元素赋值
names = Array.new(4, 'mac')
puts "#{names}"


# 用块来填充数组对象
# 相当于将 0 到 9 一次传给 e
nums = Array.new(10) {|e| e = e * 2}

puts "#{nums}"

# 其他方式
nums = Array.[](1, 2, 3, 4,5)
puts "#{nums}"
nums = Array[1, 2, 3, 4,5]
puts "#{nums}"

# 使用数组方法
digits = Array(0..9)

num = digits.at(6)

puts "#{num}"
