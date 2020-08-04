# !/usr/bin/env ruby
require_relative '../lib/linternator.rb'
folder = ARGV
linternator = !folder.empty? ? Linternator.new(folder[-1]) : Linternator.new('tests')
linternator.errors_spitter
