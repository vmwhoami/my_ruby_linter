# !/usr/bin/env ruby
require_relative '../lib/linternator.rb'
folder = ARGV
folder ||= 'second'
# folder ||= ARGV
p folder[-1]
lint = Linternator.new(folder[-1])
p lint.files
