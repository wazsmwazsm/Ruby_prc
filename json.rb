#!/usr/bin/ruby
# -*- coding:UTF-8 -*-
require 'json'
require 'pp'

json = '{"President": "Alan Isaac", "CEO": "David Richardson", "India": "aa"}';

obj = JSON.parse(json)

pp obj
