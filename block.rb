#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# 定义、使用块

def test
  puts '在 test 方法内'
  yield  # 此处调用和方法同名的 块
  puts '你又回到了 test 方法内'
  yield
end

test {puts '你在块内'}

# 给块传递参数

def test1
  yield 1, 2
  puts "在 test 方法内"
  yield 3, 4
end

test1 {|i, j|  puts "#{i+j}"}

# & 传入块
def test2(&block)
  block.call
end

test { puts "Hello World!"}


BEGIN {
  # BEGIN 代码块
  puts "BEGIN 代码块"
}

END {
  # END 代码块
  puts "END 代码块"
}
  # MAIN 代码块
puts "MAIN 代码块"
