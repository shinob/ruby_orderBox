#!/usr/local/bin/ruby
# encoding: utf-8

load 'lib/header.rb'

begin
  
  debug("index.rb")
  
  obj = OrderBox.new()
  obj.index()
  
rescue => ex
  
  puts ex.message
  
end
