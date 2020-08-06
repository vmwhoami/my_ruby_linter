require_relative 'term_rainbou.rb'

class FileHandler
  attr_reader :file_count, :initial_count
  def initialize(folder = './assets/tests')
    @folders = Dir["#{folder}/**/*.rb"]
    @initial_count = @folders.size
    @file_count = @folders.size
    epty_folder?
  end

  def file_query
    first = @folders.shift
    h = File.readlines(first, chomp: true)
    @file_count -= 1
    { first => h }
  end

  private

  def error?
    @folders.empty?
  end

  def epty_folder?
    puts "There is no test folder or it doesn't contain a '.rb' file extention".red if error?
  end
end
