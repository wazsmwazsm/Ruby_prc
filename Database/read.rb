#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require "dbi"

begin
  # 连接到 MySQL 服务器
  dbh = DBI::connect("DBI:Mysql:homestead:localhost",
                       "homestead", "secret");
  # 返回一个数组                     
  sth = dbh.select_all("SELECT * FROM users");

  sth.each do |row|
    puts "Name: #{row[1]}"
    puts "Email: #{row[2]}"
  end

rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"
ensure

  dbh.disconnect if dbh
end
