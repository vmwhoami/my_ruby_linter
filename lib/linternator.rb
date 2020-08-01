require_relative 'file_handler.rb'
class Linternator
  attr_reader :files
  def initialize(folder)
    @files = FileHandler.new(folder)
    @keywords = %w[def end do puts p print while until if unless untill]
    @llines = @files.folder_query
  end

  def get_files
    @llines
  end
 
# def closing_tags(files)
#    lieach_whith
# end

end

# load "./lib/linternator.rb"
# lint = Linternator.new("tests")
# linter = Linternator.new("second")
#lint.get_files
