#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "dbi"

begin
  # 连接到 MySQL 服务器
  dbh = DBI::connect("DBI:Mysql:homestead:localhost",
                       "homestead", "secret");

  # 进行预编译插值
  sth = dbh.prepare("INSERT INTO users values(null, ?,
   ?,' ',null, null, null, ?, null, ?)")
  sth.execute('Ruby1', '1@ruby.com', 0, 1)
  sth.execute('Ruby2', '2@ruby.com', 0, 1)

  sth.finish

  puts "Record has been created"

  # 提交事务
  dbh.commit

rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"

  # 回滚事务
  dbh.rollback
ensure

  dbh.disconnect if dbh
end
