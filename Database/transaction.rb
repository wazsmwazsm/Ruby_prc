#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "dbi"

begin
  # 连接到 MySQL 服务器
  dbh = DBI::connect("DBI:Mysql:homestead:localhost",
                       "homestead", "secret");

  # 事务
  dbh.transaction do |dbh|
    # 进行预编译插值
    sth = dbh.prepare("INSERT INTO users values(null, ?,
     ?,' ',null, null, null, ?, null, ?)")
    sth.execute('Ruby3', '3@ruby.com', 0, 1)
    sth.execute('Ruby4', '4@ruby.com', 0, 1)

    sth.finish
  end
  puts "Record has been created"

rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"

ensure

  dbh.disconnect if dbh
end
