#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

class Counter
  attr_reader :total

  def initialize
    puts 'initialized...'
    @total = 0
    @mutex = Mutex.new
  end

  # ! 申明使用该方法是需要多加小心
  def increment!
    @mutex.synchronize { @total += 1 }
  end
end

class Application
  def initialize
    @counter = Counter.new
  end

  def counter
    @counter
  end

  def increment!
    counter.increment!
  end

  def total
    counter.total
  end
end

if __FILE__ == $0
  app = Application.new

  # map 为 self 中的每个元素调用一次 block。创建一个新的数组，包含 block 返回的值。
  # 这里用来生成 Thread 的返回值的数组
  10.times.map do |i|
    Thread.new do
      app.increment!
    end
  end.each(&:join)

  puts app.total

end
