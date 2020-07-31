
#!/usr/bin/env ruby

first_file, *rest_files = ARGV 

# e =  File.open("hello.txt")
# p e.read

files = Dir["./lib/*.rb"]
that = File.readlines(files[0])
print that

# tests = "tests"
# a = Dir["#{tests}/**/*.rb"]
# # p 