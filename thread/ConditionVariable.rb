#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require 'thread'

mutex = Mutex.new
cv = ConditionVariable.new
resource = nil

a = Thread.new {
  mutex.synchronize {
    # Thread 'a' now needs the resourc
    cv.wait(mutex) if resource.nil?
    # 'a' can now have the resource
    puts "获得 resource，继续往下执行..."
    puts "resouce 的值为： #{resource.inspect}"
  }
}

b = Thread.new {
  mutex.synchronize {
    # Thread 'b' has finished using the resource
    puts "正在分配resource..."
    resource = "45"
    cv.signal
  }
}

# 挂起主线程 [a, b].each {|th| th.join} 的简写形式
[a, b].each &:join
