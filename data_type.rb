#!/usr/bin/ruby
# -*- coding:UTF-8 -*-


# 次幂计算
puts '计算';
puts 2**(1/4);
puts 16**(1/4.0);

# 字符串
puts '字符串';
puts 'escape using "\\"';
puts 'That\'s right';

puts "相乘 : #{24*60*60}";
name = "Ruby";
puts "#{name+",ok"}";


# 数组
puts '数组';
arr = ['aa', 10, 3.22, "hello you", 'heheheheh'];

arr.each do |i|
  puts i
end

# Hash
puts 'Hash';
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f };

hsh.each do |key, value|
  # 逗号隔开的每个都会打印换行
  puts key, " is ", value, "\n";
end

# range 范围
puts 'range';

# 每行都能加分号，也可以什么都不加
(0..15).each do |n|;
  puts n;
end;
