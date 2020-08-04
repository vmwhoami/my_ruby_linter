require_relative 'term_rainbou.rb'

class FileHandler
  attr_reader :file_count, :folders, :files
  def initialize(folder = 'tests')
    @folders = Dir["#{folder}/**/*.rb"]
    @file_count = @folders.size
    epty_folder?
  end
def first_file

end
  def file_query
    first = @folders.shift
    h = File.readlines(first, chomp: true) 
    @file_count -= 1
    {first => h}
  end

  def error?
    @folders.empty?
  end

  def epty_folder?
    puts "There is no test folder or it doesn't contain a '.rb' file extention".red if error?
  end
end



# load "./lib/file_handler.rb"
# files = FileHandler.new
# p files.file_count
# 9 files inspected, 5 offenses detected



