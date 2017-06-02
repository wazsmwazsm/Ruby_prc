#!/usr/bin/ruby
# -*- coding:UTF-8 -


# 改变目录

Dir.chdir("/home/vagrant/Code/Ruby_prc")

puts Dir.pwd

# 获取目录列表
puts Dir.entries('/home/vagrant/Code/Ruby_prc').join('、')

Dir.foreach("/home/vagrant/Code/Ruby_prc") do |entry|
   puts entry
end

# 新建目录
Dir.mkdir( "mynewdir", 755 )

# 删除目录
Dir.delete("mynewdir")


# tmpdir 获取系统临时目录
require 'tmpdir'
tempfilename = File.join(Dir.tmpdir, "tingtong")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is a temporary file"
tempfile.close
File.delete(tempfilename)

require 'tempfile'
f = Tempfile.new('tingtong')
f.puts "Hello"
puts f.path
f.close
