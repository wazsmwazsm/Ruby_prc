#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# 并行赋值
a, b, c = 10, 20, 30

puts a, b, c

# define? 运算符
foo = 42
p defined? foo    # => "local-variable"
p defined? $_     # => "global-variable"
p defined? bar    # => nil（未定义）

def method_a

end

p defined? puts  # "method"

# 字符串连接
puts "aa"+"bb"

# :: 运算符引用常量

CONST = '我是全局的'

class A
  CONST = proc {'我是 a 的'}
  def where_is_my_CONST
    ::CONST + ', 属于 a'
  end
end

class B
  CONST = '我是 b 的'
  def where_is_my_CONST
    CONST
  end
end

puts A.new.where_is_my_CONST
puts B.new.where_is_my_CONST
puts Object::CONST + B::CONST
puts B::CONST + CONST
puts A::CONST
puts A::CONST.call + B::CONST
