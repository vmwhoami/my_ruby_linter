# !/usr/bin/env ruby
require_relative '../lib/linternator.rb'
folder = ARGV

linternator = Linternator.new("tests")

linternator.errors_spitter
