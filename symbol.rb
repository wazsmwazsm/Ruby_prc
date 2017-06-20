#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

class Test
  def my_method(opts={})
    default_opts = {:arg1 => 10, :arg2 => 'abc'}
    default_opts.merge!(opts)
    default_opts.each { |key, value| puts "#{key} is #{value}"}
  end
end

t = Test.new
t.my_method :arg1 => 5, :arg3 => "haha"
