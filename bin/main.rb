# !/usr/bin/env ruby
require_relative '../lib/linternator.rb'
folder = ARGV
folder ||= 'second'
# folder ||= ARGV
p folder[-1]
lint = Linternator.new(folder[-1])
p lint.files
# p first_file
# e =  File.open("hello.txt")
# p e.read

# files = Dir["./lib/*.rb"]
# that = File.readlines(files[0])
# print that
# load "bin/main.rb"

# lint = Linternator.new("tests")
# tests = "tests"
# a = Dir["#{tests}/**/*.rb"]
# # p
