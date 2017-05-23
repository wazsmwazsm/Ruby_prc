#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

# each

ary = [1,2,3,4,5]
ary.each do |i|
   puts i
end

# collect
a = [1,2,3,4,5]
b = Array.new
b = a.collect{ |x| x*2 }
puts b
