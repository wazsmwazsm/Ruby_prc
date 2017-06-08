#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

require 'mysql2'
]

client = Mysql2::Client.new(
  :host         => '127.0.0.1',
  :username     => 'homestead',
  :password     => 'secret',
  :database     => 'homestead',
  :encoding     => 'utf8'
)

results = client.query('SELECT VERSION()')

results.each do |row|
  puts row
end

# 连接选项
# Mysql2::Client.new(
#   :host,
#   :username,
#   :password,
#   :port,
#   :database,
#   :socket = '/path/to/mysql.sock',
#   :flags = REMEMBER_OPTIONS | LONG_PASSWORD | LONG_FLAG | TRANSACTIONS | PROTOCOL_41 | SECURE_CONNECTION | MULTI_STATEMENTS,
#   :encoding = 'utf8',
#   :read_timeout = seconds,
#   :write_timeout = seconds,
#   :connect_timeout = seconds,
#   :reconnect = true/false,
#   :local_infile = true/false,
#   :secure_auth = true/false,
#   :default_file = '/path/to/my.cfg',
#   :default_group = 'my.cfg section',
#   :init_command => sql
#   )
