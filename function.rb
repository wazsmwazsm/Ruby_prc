#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# 参数、默认参数
def test(a1="Ruby", a2="Perl")
   puts "编程语言为 #{a1}"
   puts "编程语言为 #{a2}"
end
test "C", "C++"
test

# 默认参数不必为最后一个
def test1(a1="Ruby", a2)
   puts "编程语言为 #{a1}"
   puts "编程语言为 #{a2}"
end
test1 's'

# 默认返回最后一个语句的值
def test2
   i = 100
   j = 10
   k = 0
end

puts test2

# 返回多个值
def test3
   i = 100
   j = 200
   k = 300
return i, j, k
end
a = test3
puts a

# 可变参数

def sample(*param)
  puts "参数个数为 #{param.length}"

  for i in 0...param.length
    puts "参数值为 #{param[i]}"
  end
end

sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

# 不实例化进行方法调用

class Accounts
  def reading_charge
    puts 'a'
  end

  def Accounts.return_date
    puts 'hello'
  end
end

# Accounts.reading_charge
Accounts.return_date
