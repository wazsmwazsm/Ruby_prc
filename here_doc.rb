#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

print <<EOF
  这是第一种方式创建here document 。
  多行字符串。
EOF

print <<"EOF";                # 与上面相同
  这是第二种方式创建here document 。
  多行字符串。
EOF

print <<`EOC`                 # 执行命令
    echo hi there
    echo lo there
EOC

# 堆叠的写法
print <<"foo", <<"bar"
  I said foo
foo
  I said bar
bar
