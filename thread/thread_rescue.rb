#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "thread"

begin
  t = Thread.new do
    #将运行权交给其他线程
    Thread.pass
    raise "unhandled exception"
  end
  # 整个解释器就会被中断
  t.abort_on_exception = true
  t.join
rescue
  p $!
end
