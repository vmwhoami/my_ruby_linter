require_relative 'term_rainbou.rb'
require_relative 'file_handler.rb'
class Linternator
  attr_reader :file , :file_name , :code_lines, :allerrors
  def initialize(folder)
    @folders = FileHandler.new(folder)
    @file = @folders.file_query
    @file_name = @file.keys.flatten.join
    @code_lines =  @file.values.flatten
		@keywords = %w[def do if unless until class case begin]
		@allerrors = []
  end


	def upadate_errors(error)
    @allerrors<<error
  end

  def braces_handler
    message = "missing closing brackets"
    @code_lines.each_with_index do |line,indx| 
       if self.incorect_braces?(line)
        upadate_errors(@file_name.blue +  ": on Line #{indx+1} ".yellow + message.red)
      end
      
    end

  end




  def incorect_braces?(str)
    array = []
    braces = { '{' => '}', '[' => ']', '(' => ')' }
    str.each_char do |char|
      array << char if braces.key?(char)
      return true if braces.key(char) && braces.key(char) != array.pop
    end
    !array.empty?
  end

end




# load "./lib/linternator.rb"

linter = Linternator.new('tests')
p linter.braces_handler
linter.allerrors.each{|el| puts el}

