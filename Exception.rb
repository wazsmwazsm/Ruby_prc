#!/usr/bin/ruby
# -*- coding:UTF-8 -

begin
    file = open("testd.txt")
    if file
      puts "File opened successfully"
    end
rescue
    file = STDIN
end

print file, "==", STDIN, "\n"


# retry 谨慎适用，小心死循环
fname = "/unexistant_file"
begin
   file = open(fname)
   if file
      puts "File opened successfully"
   end
rescue
   fname = "test.txt"
   retry
end

# raise 一个异常 ,raise 后会进到 rescue 中，不进行执行 begin 的代码

begin
    puts 'I am before the raise.'
    raise 'An error has occurred.'
    puts 'I am after the raise.'
rescue
    puts 'I am rescued.'
end
puts 'I am after the begin block.'

# 使用异常类的信息
begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

# ensure 执行一些必须要执行的代码
begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end

# else 只有在代码主体没有抛出异常时执行。
begin
 # 抛出 'A test exception.'
 puts "I'm not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations-- no errors!"
ensure
  puts "Ensuring execution"
end

# Catch 和 Throw
require "readline"

def promptAndGet(prompt)
  print prompt
  res = (Readline.readline).chomp # chomp 移除末尾分隔符
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
end

promptAndGet("Name:")

#  类
# 创建自己的异常类 继承于 Exception
class FileSaveError < StandardError
   attr_reader :reason   # getter 方法
   def initialize(reason)
      @reason = reason
   end
end

IO.foreach("test.txt") do |file|
  begin
    # puts files
    puts file
  rescue
    raise FileSaveError.new($!)  # $! 表示异常信息
  end
end
