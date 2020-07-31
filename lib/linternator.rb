require_relative 'file_handler.rb'
class Linternator
  attr_reader :files
  def initialize(folder)
    @files = File_handler.new(folder)
    @keywords = %w[def end do puts p print]
  end
end

# load "./lib/linternator.rb"
# lint = Linternator.new("tests")
# linter = Linternator.new("second")
