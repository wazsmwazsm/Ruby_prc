#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require 'socket'

server = TCPServer.open(2000)

loop {
  client = server.accept       # 等待客户端连接
  client.puts(Time.now.ctime)  # 发送时间到客户端
  client.puts "Closing the connection. Bye!"
  client.close                 # 关闭客户端连接
}
