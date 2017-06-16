#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "thread"
puts "Synchronize Thread"

$num = 200
$mutex = Mutex.new

def buyTicket(num)
  # 加锁保护  也可以使用 synchronize do end
  # 不锁定的话，num 值会出现混乱
  $mutex.lock
    if $num >= num
      $num = $num - num
      puts "you have successfully bought #{num} tickets"
    else
      puts "sorry,no enough tickets"
    end
  $mutex.unlock  # 解锁
end

# 循环 10 次，将参数传入块中
ticket1 = Thread.new 10 do |value|
    value.times do
    ticketNum=15
    buyTicket(ticketNum)
    sleep 0.01
  end
end

ticket2 = Thread.new 10 do |value|
     value.times do
     ticketNum = 20
     buyTicket(ticketNum)
     sleep 0.01
     end
end

ticket1.join
ticket2.join
