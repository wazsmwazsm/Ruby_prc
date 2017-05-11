#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# while 循环

$i = 0
$num = 5

while $i < $num  do
   puts "在循环语句中 i = #$i"
   $i += 1
end

# while 修饰符

$i = 0
$num = 5

begin
  puts "在循环语句中 i = #$i"
  $i += 1
end while $i < $num

# until
$i = 0
$num = 5

until $i > $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1;
end

# until 修饰符
$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1;
end until $i > $num

# for in 等价于 each

for i in 0..5
  puts "for 局部变量的值为 #{i}"
end

(0..5).each do |i|
  puts "each 局部变量的值为 #{i}"
end

# break
for i in 0..5
   if i > 2 then
      break
   end
   puts "局部变量的值为 #{i}"
end

# next
for i in 0..5
   if i < 2 then
      next
   end
   puts "局部变量的值为 #{i}"
end

# redo

# for i in 0..5
#    if i < 2 then
#       puts "局部变量的值为 #{i}"
#       redo
#    end
# end

# retry
# 因为使用 1.9 以上版本，所以 retry 在循环中会报错
# for i in 1..5
#    retry if  i > 2
#    puts "局部变量的值为 #{i}"
# end
