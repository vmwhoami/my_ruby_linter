require_relative 'term_rainbou.rb'
require_relative 'file_handler.rb'
class Linternator
  attr_reader :file , :file_name , :code_lines
  def initialize(folder)
    @folders = FileHandler.new(folder)
    @file = @folders.file_query
    @file_name = @file.keys.flatten
    @code_lines =  @file.values.flatten
		@keywords = %w[def do if unless until class case begin]
		@allerrors = []
  end


	def upadate_errors(error)
    @allerrors<<error
  end





  def correct_braces?(str)
    arr = []
    braces = {"{"=>"}","("=>")","["=>"]"}
    str.each_char do |char|
     return false if arr.empty? && braces.values.include?(char)
     arr << char if braces.keys.include?(char)
     if braces[char] == char
      arr.pop
     end
    end
   arr
  end

end




# load "./lib/linternator.rb"

linter = Linternator.new('tests')
p linter.correct_braces?("def (a))")

