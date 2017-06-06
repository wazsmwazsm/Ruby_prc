#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

class MegaGreeter
  # 设置 names变量可以进行读取和设置 方法：直接点加变量
  attr_accessor :names

  def initialize(names = 'World')
    @names = names
  end

  def say_hi
    if @names.nil?
      puts '...'
    # 检查 names 是否有 each 方法 (是否是一个列表)
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}"
      end
    else
      puts "Hello #{@names}"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end

  end

end

# 如果他是库文件别别的函数调用，则不执行
# 如果是单独调用此文件，则执行，方便测试
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye

  # setter getter
  mg.names = "aaa"
  puts mg.names
end
