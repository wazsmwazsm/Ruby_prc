#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "dbi"

begin
  # 连接到 MySQL 服务器
  dbh = DBI::connect("DBI:Mysql:homestead:localhost",
                       "homestead", "secret")
  # 获取服务器版本
  row = dbh.select_one("SELECT VERSION()")
  puts "Server version: " + row[0]

  # 不返回行的语句可通过调用 do 数据库处理方法, 如 insert update delete 等

  dbh.do( "INSERT INTO users values(null, 'ruby',
   'ruby@ruby.com',' ',null, null, null, 0, null, 1)" )

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
