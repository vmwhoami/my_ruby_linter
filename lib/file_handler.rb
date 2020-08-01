require_relative 'term_rainbou.rb'
class FileHandler
  def initialize(folder = 'tests')
    @folders = Dir["#{folder}/**/*.rb"]
    self.epty_folder?
  end

  def folder_query
    h = Hash.new
    @folders.each do |el|
     h[el] = File.readlines(el)
    end
    h
  end

  def error?
    @folders.empty?
  end
   
  def epty_folder?
  puts "There is no test folder or it doesn't contain a '.rb' file extention".red  if self.error?
  end

end

# WHAT THIS CLASS WILL DO
# 1 Find the file it is given
# 2 Parse the file read though each line

# load "./lib/file_handler.rb"
files = FileHandler.new("anew")
# tests = "tests"
# a = Dir["#{tests}/**/*.rb"]
# files.folder_query
# p a

