require_relative 'term_rainbou.rb'
require_relative 'file_handler.rb'
class Linternator
  attr_reader :files
  def initialize(folder)
    @files = FileHandler.new(folder)
    @llines = @files.folder_query
    @keywords = %w[def end do puts p print while until if unless untill]
  end

  def error_msg; end

  def allfiles
    @llines
  end
end

# lib/linternator.rb:13:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
#   def get_files

# load "./lib/linternator.rb"
# lint = Linternator.new("tests")
# linter = Linternator.new("second")
# lint.get_files
