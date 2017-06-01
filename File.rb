#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# open file
aFile = File.new('test.txt', 'r')

if aFile
   content = aFile.sysread(120)
   puts content
else
   puts "Unable to open file!"
end

aFile.close

# write file
# aFile = File.new('test.txt', 'a+')
#
# if aFile
#    content = aFile.syswrite('ABCDE')
#    puts content # 返回写入的字符数
# else
#    puts "Unable to open file!"
# end

aFile.close

# each_byte 方法
aFile = File.new('test.txt', 'r')

if aFile
    # 问好来显示一个 ASCII 字符
    aFile.each_byte {|ch| putc ch; putc ?.}  # ?. == '.' ?a == 'a' ?A == 'A'

else
   puts "Unable to open file!"
end

aFile.close

# read line

arr = IO.readlines("test.txt")
puts arr[0]
puts arr[1]

# IO.foreach

IO.foreach("test.txt"){|block| puts block}

# rename
# 重命名文件 test1.txt 为 test2.txt
# File.rename( "test1.txt", "test2.txt" )

# 删除文件 test2.txt
# File.delete("test2.txt")

# 权限
# file = File.new( "test.txt", "w" )
# file.chmod( 0755 )

# 存在？
File.open('test.txt') if File::exists? ('test.txt')

puts File::exists? ('test.txt')
puts File::file? ('test.txt')
puts File::directory? ('/usr/')
puts File::directory? ('test.txt')
puts File::readable? ('test.txt')
puts File::writable? ('test.txt')
puts File::executable? ('test.txt')
puts File::zero? ('test.txt')
puts File::size? ('test.txt')

puts File::ftype('test.txt')  # 检查文件类型
puts File::ctime('test.txt')
puts File::mtime('test.txt')
puts File::atime('test.txt')
