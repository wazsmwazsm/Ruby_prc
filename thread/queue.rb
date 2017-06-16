#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "thread"
puts "SizedQuee Test"

queue = Queue.new

producer = Thread.new do
  10.times do |i|
    sleep rand(i) # 随机睡眠一会
    queue << i    # 将 i 这个数值推入队列
    puts "#{i} produced"
  end
end

consumer = Thread.new do
     10.times do |i|
          value = queue.pop # 从队列中取出数值
          sleep rand(i/2)
          puts "consumed #{value}"
     end
end

# 注意，这里如果子线程都不挂起主线程的话 (没有线程挂起主线程)
# 主线程先结束，子线程就不运行了
# 总之，不挂起主线程，是看不到消息的
# join 的意思就是让子线程在主线程完成前完成
producer.join
consumer.join
