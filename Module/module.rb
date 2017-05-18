#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

# $LOAD_PATH << '.'

require_relative 'trig.rb'
require_relative 'moral'

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)

puts y, wrongdoing
