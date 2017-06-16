#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require 'socket'

server = TCPServer.open(2000)

loop {
  Thread.start(server.accept) do |client|
    client.puts(Time.now.ctime)  # 发送时间到客户端
    client.puts "Closing the connection. Bye!"
    client.close
  end
}
