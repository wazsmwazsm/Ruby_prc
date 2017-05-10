#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

class Customer
  @@no_of_customers = 0

  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details()
    puts "用户 ID 为 : #{@cust_id}"
    puts "用户名为 : #{@cust_name}"
    puts "用户地址为 : #{@cust_addr}"
  end

  def total_no_of_customers()
    @@no_of_customers += 1;
    puts "总的客户数量为 : #@@no_of_customers";
  end

end

# 创建实例
cust1 = Customer.new('1', '秦先生', '北京市')
cust2 = Customer.new('2', '董小姐', '上海市')

# 调用方法
cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()
