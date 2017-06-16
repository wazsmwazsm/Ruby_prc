#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "thread"

def func1
  i = 0
  while i <= 2
    puts "func1 at: #{Time.now}"
    sleep(2)
    # 注意，ruby 不支持 ++ 这样的自增运算符哦
    i = i + 1
  end
end

def func2
   j = 0
   while j <= 2
      puts "func2 at: #{Time.now}"
      sleep(1)
      j = j + 1
   end
end

puts "Started At #{Time.now}"

# 创建并执行线程
t1 = Thread.new{func1()}
t2 = Thread.new{func2()}
# 挂起主线程
t1.join
t2.join
puts "End at #{Time.now}"
