# !/usr/bin/env ruby
require_relative '../lib/linternator.rb'
folder = ARGV
 !folder.empty? ? linternator = Linternator.new(folder[-1]) : linternator = Linternator.new("tests")


linternator.errors_spitter
