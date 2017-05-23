#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

time1 = Time.new

puts "当前时间 : " + time1.inspect

time2 = Time.now

puts "当前时间 : " + time2.inspect

time = Time.new

# Time 的组件
puts "当前时间 : " + time.inspect
puts time.year    # => 日期的年份
puts time.month   # => 日期的月份（1 到 12）
puts time.day     # => 一个月中的第几天（1 到 31）
puts time.wday    # => 一周中的星期几（0 是星期日）
puts time.yday    # => 365：一年中的第几天
puts time.hour    # => 23：24 小时制
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999：微秒
puts time.zone    # => "UTC"：时区名称

# utc gm
# July 8, 2008
puts Time.local(2008, 7, 8)
# July 8, 2008, 09:10am，本地时间
puts Time.local(2008, 7, 8, 9, 10)
# July 8, 2008, 09:10 UTC
puts Time.utc(2008, 7, 8, 9, 10)
# July 8, 2008, 09:10:11 GMT （与 UTC 相同）
puts Time.gm(2008, 7, 8, 9, 10, 11)

# 转为数组
time = Time.new

values = time.to_a
p values

# utc
time = Time.new

values = time.to_a
puts Time.utc(*values)

# 时区和夏令时

time = Time.new

# 这里是解释
puts time.zone       # => "UTC"：返回时区
puts time.utc_offset # => 0：UTC 是相对于 UTC 的 0 秒偏移
puts time.zone       # => "PST"（或其他时区）
puts time.isdst      # => false：如果 UTC 没有 DST（夏令时）
puts time.utc?       # => true：如果在 UTC 时区
puts time.localtime  # 转换为本地时区
puts time.gmtime     # 转换回 UTC
puts time.getlocal   # 返回本地区中的一个新的 Time 对象
puts time.getutc     # 返回 UTC 中的一个新的 Time 对象

# 格式化时间
time = Time.new

puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")
