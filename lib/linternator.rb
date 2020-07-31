require_relative 'file_handler.rb'
class Linternator
    attr_reader :files
    def initialize(folder)
        @files = File_handler.new(folder)
    end
end


# load "./lib/linternator.rb"
# lint = Linternator.new("tests")
# linter = Linternator.new("second")

