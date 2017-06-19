#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "thread"

# count1 = count2 = 0
#
# difference = 0
#
# # 未使用 Mutex 的实例
# counter = Thread.new do
#   loop {
#     count1 += 1
#     count2 += 1
#   }
# end
#
# spy = Thread.new do
#   loop do
#     difference += (count1 - count2).abs
#   end
# end
#
# # 让子线程运行 1 s 再结束主线程
# sleep 1
# puts "count1 :  #{count1}"
# puts "count2 :  #{count2}"
# puts "difference : #{difference}"

# 使用 Mutex 的实例

count1 = count2 = 0

difference = 0

mutex = Mutex.new
# 未使用 Mutex 的实例
counter = Thread.new do
  loop {
    # 防止两条线程同时对同一公共资源（比如全局变量）进行读写。
    mutex.synchronize do
      count1 += 1
      count2 += 1
    end
  }
end

spy = Thread.new do
  loop do
    mutex.synchronize do
      difference += (count1 - count2).abs
    end
  end
end

# 让子线程运行 1 s 再结束主线程
sleep 1
puts "count1 :  #{count1}"
puts "count2 :  #{count2}"
puts "difference : #{difference}"
